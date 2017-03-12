package com.yf.gattlib.http.afinal.bitmap.core;

import android.util.Log;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileChannel.MapMode;
import java.util.zip.Adler32;

/* compiled from: ProGuard */
public class DiskCache implements Closeable {
    private static final int BH_CHECKSUM = 8;
    private static final int BH_KEY = 0;
    private static final int BH_LENGTH = 16;
    private static final int BH_OFFSET = 12;
    private static final int BLOB_HEADER_SIZE = 20;
    private static final int DATA_HEADER_SIZE = 4;
    private static final int IH_ACTIVE_BYTES = 20;
    private static final int IH_ACTIVE_ENTRIES = 16;
    private static final int IH_ACTIVE_REGION = 12;
    private static final int IH_CHECKSUM = 28;
    private static final int IH_MAGIC = 0;
    private static final int IH_MAX_BYTES = 8;
    private static final int IH_MAX_ENTRIES = 4;
    private static final int IH_VERSION = 24;
    private static final int INDEX_HEADER_SIZE = 32;
    private static final int MAGIC_DATA_FILE = -1121680112;
    private static final int MAGIC_INDEX_FILE = -1289277392;
    private static final String TAG;
    private int mActiveBytes;
    private RandomAccessFile mActiveDataFile;
    private int mActiveEntries;
    private int mActiveHashStart;
    private int mActiveRegion;
    private Adler32 mAdler32;
    private byte[] mBlobHeader;
    private RandomAccessFile mDataFile0;
    private RandomAccessFile mDataFile1;
    private int mFileOffset;
    private RandomAccessFile mInactiveDataFile;
    private int mInactiveHashStart;
    private MappedByteBuffer mIndexBuffer;
    private FileChannel mIndexChannel;
    private RandomAccessFile mIndexFile;
    private byte[] mIndexHeader;
    private LookupRequest mLookupRequest;
    private int mMaxBytes;
    private int mMaxEntries;
    private String mPath;
    private int mSlotOffset;
    private int mVersion;

    /* compiled from: ProGuard */
    public static class LookupRequest {
        public byte[] buffer;
        public long key;
        public int length;
    }

    static {
        TAG = DiskCache.class.getSimpleName();
    }

    public DiskCache(String str, int i, int i2, boolean z) {
        this(str, i, i2, z, IH_MAGIC);
    }

    public DiskCache(String str, int i, int i2, boolean z, int i3) {
        this.mIndexHeader = new byte[INDEX_HEADER_SIZE];
        this.mBlobHeader = new byte[IH_ACTIVE_BYTES];
        this.mAdler32 = new Adler32();
        this.mLookupRequest = new LookupRequest();
        File file = new File(str);
        if (file.exists() || file.mkdirs()) {
            this.mPath = str;
            this.mIndexFile = new RandomAccessFile(str + ".idx", "rw");
            this.mDataFile0 = new RandomAccessFile(str + ".0", "rw");
            this.mDataFile1 = new RandomAccessFile(str + ".1", "rw");
            this.mVersion = i3;
            if (z || !loadIndex()) {
                resetCache(i, i2);
                if (!loadIndex()) {
                    closeAll();
                    throw new IOException("unable to load index");
                }
                return;
            }
            return;
        }
        throw new IOException("unable to make dirs");
    }

    public void delete() {
        deleteFileSilently(this.mPath + ".idx");
        deleteFileSilently(this.mPath + ".0");
        deleteFileSilently(this.mPath + ".1");
    }

    private static void deleteFileSilently(String str) {
        try {
            new File(str).delete();
        } catch (Throwable th) {
        }
    }

    public void close() {
        syncAll();
        closeAll();
    }

    private void closeAll() {
        closeSilently(this.mIndexChannel);
        closeSilently(this.mIndexFile);
        closeSilently(this.mDataFile0);
        closeSilently(this.mDataFile1);
    }

    private boolean loadIndex() {
        try {
            this.mIndexFile.seek(0);
            this.mDataFile0.seek(0);
            this.mDataFile1.seek(0);
            byte[] bArr = this.mIndexHeader;
            if (this.mIndexFile.read(bArr) != INDEX_HEADER_SIZE) {
                Log.w(TAG, "cannot read header");
                return false;
            } else if (readInt(bArr, IH_MAGIC) != MAGIC_INDEX_FILE) {
                Log.w(TAG, "cannot read header magic");
                return false;
            } else if (readInt(bArr, IH_VERSION) != this.mVersion) {
                Log.w(TAG, "version mismatch");
                return false;
            } else {
                this.mMaxEntries = readInt(bArr, IH_MAX_ENTRIES);
                this.mMaxBytes = readInt(bArr, IH_MAX_BYTES);
                this.mActiveRegion = readInt(bArr, IH_ACTIVE_REGION);
                this.mActiveEntries = readInt(bArr, IH_ACTIVE_ENTRIES);
                this.mActiveBytes = readInt(bArr, IH_ACTIVE_BYTES);
                if (checkSum(bArr, IH_MAGIC, IH_CHECKSUM) != readInt(bArr, IH_CHECKSUM)) {
                    Log.w(TAG, "header checksum does not match");
                    return false;
                } else if (this.mMaxEntries <= 0) {
                    Log.w(TAG, "invalid max entries");
                    return false;
                } else if (this.mMaxBytes <= 0) {
                    Log.w(TAG, "invalid max bytes");
                    return false;
                } else if (this.mActiveRegion != 0 && this.mActiveRegion != 1) {
                    Log.w(TAG, "invalid active region");
                    return false;
                } else if (this.mActiveEntries < 0 || this.mActiveEntries > this.mMaxEntries) {
                    Log.w(TAG, "invalid active entries");
                    return false;
                } else if (this.mActiveBytes < IH_MAX_ENTRIES || this.mActiveBytes > this.mMaxBytes) {
                    Log.w(TAG, "invalid active bytes");
                    return false;
                } else if (this.mIndexFile.length() != ((long) (((this.mMaxEntries * IH_ACTIVE_REGION) * 2) + INDEX_HEADER_SIZE))) {
                    Log.w(TAG, "invalid index file length");
                    return false;
                } else {
                    bArr = new byte[IH_MAX_ENTRIES];
                    if (this.mDataFile0.read(bArr) != IH_MAX_ENTRIES) {
                        Log.w(TAG, "cannot read data file magic");
                        return false;
                    } else if (readInt(bArr, IH_MAGIC) != MAGIC_DATA_FILE) {
                        Log.w(TAG, "invalid data file magic");
                        return false;
                    } else if (this.mDataFile1.read(bArr) != IH_MAX_ENTRIES) {
                        Log.w(TAG, "cannot read data file magic");
                        return false;
                    } else if (readInt(bArr, IH_MAGIC) != MAGIC_DATA_FILE) {
                        Log.w(TAG, "invalid data file magic");
                        return false;
                    } else {
                        this.mIndexChannel = this.mIndexFile.getChannel();
                        this.mIndexBuffer = this.mIndexChannel.map(MapMode.READ_WRITE, 0, this.mIndexFile.length());
                        this.mIndexBuffer.order(ByteOrder.LITTLE_ENDIAN);
                        setActiveVariables();
                        return true;
                    }
                }
            }
        } catch (Throwable e) {
            Log.e(TAG, "loadIndex failed.", e);
            return false;
        }
    }

    private void setActiveVariables() {
        this.mActiveDataFile = this.mActiveRegion == 0 ? this.mDataFile0 : this.mDataFile1;
        this.mInactiveDataFile = this.mActiveRegion == 1 ? this.mDataFile0 : this.mDataFile1;
        this.mActiveDataFile.setLength((long) this.mActiveBytes);
        this.mActiveDataFile.seek((long) this.mActiveBytes);
        this.mActiveHashStart = INDEX_HEADER_SIZE;
        this.mInactiveHashStart = INDEX_HEADER_SIZE;
        if (this.mActiveRegion == 0) {
            this.mInactiveHashStart += this.mMaxEntries * IH_ACTIVE_REGION;
        } else {
            this.mActiveHashStart += this.mMaxEntries * IH_ACTIVE_REGION;
        }
    }

    private void resetCache(int i, int i2) {
        this.mIndexFile.setLength(0);
        this.mIndexFile.setLength((long) (((i * IH_ACTIVE_REGION) * 2) + INDEX_HEADER_SIZE));
        this.mIndexFile.seek(0);
        byte[] bArr = this.mIndexHeader;
        writeInt(bArr, IH_MAGIC, MAGIC_INDEX_FILE);
        writeInt(bArr, IH_MAX_ENTRIES, i);
        writeInt(bArr, IH_MAX_BYTES, i2);
        writeInt(bArr, IH_ACTIVE_REGION, IH_MAGIC);
        writeInt(bArr, IH_ACTIVE_ENTRIES, IH_MAGIC);
        writeInt(bArr, IH_ACTIVE_BYTES, IH_MAX_ENTRIES);
        writeInt(bArr, IH_VERSION, this.mVersion);
        writeInt(bArr, IH_CHECKSUM, checkSum(bArr, IH_MAGIC, IH_CHECKSUM));
        this.mIndexFile.write(bArr);
        this.mDataFile0.setLength(0);
        this.mDataFile1.setLength(0);
        this.mDataFile0.seek(0);
        this.mDataFile1.seek(0);
        writeInt(bArr, IH_MAGIC, MAGIC_DATA_FILE);
        this.mDataFile0.write(bArr, IH_MAGIC, IH_MAX_ENTRIES);
        this.mDataFile1.write(bArr, IH_MAGIC, IH_MAX_ENTRIES);
    }

    private void flipRegion() {
        this.mActiveRegion = 1 - this.mActiveRegion;
        this.mActiveEntries = IH_MAGIC;
        this.mActiveBytes = IH_MAX_ENTRIES;
        writeInt(this.mIndexHeader, IH_ACTIVE_REGION, this.mActiveRegion);
        writeInt(this.mIndexHeader, IH_ACTIVE_ENTRIES, this.mActiveEntries);
        writeInt(this.mIndexHeader, IH_ACTIVE_BYTES, this.mActiveBytes);
        updateIndexHeader();
        setActiveVariables();
        clearHash(this.mActiveHashStart);
        syncIndex();
    }

    private void updateIndexHeader() {
        writeInt(this.mIndexHeader, IH_CHECKSUM, checkSum(this.mIndexHeader, IH_MAGIC, IH_CHECKSUM));
        this.mIndexBuffer.position(IH_MAGIC);
        this.mIndexBuffer.put(this.mIndexHeader);
    }

    private void clearHash(int i) {
        byte[] bArr = new byte[1024];
        this.mIndexBuffer.position(i);
        int i2 = this.mMaxEntries * IH_ACTIVE_REGION;
        while (i2 > 0) {
            int min = Math.min(i2, 1024);
            this.mIndexBuffer.put(bArr, IH_MAGIC, min);
            i2 -= min;
        }
    }

    public void insert(long j, byte[] bArr) {
        if (bArr.length + IH_VERSION > this.mMaxBytes) {
            throw new RuntimeException("blob is too large!");
        }
        if ((this.mActiveBytes + IH_ACTIVE_BYTES) + bArr.length > this.mMaxBytes || this.mActiveEntries * 2 >= this.mMaxEntries) {
            flipRegion();
        }
        if (!lookupInternal(j, this.mActiveHashStart)) {
            this.mActiveEntries++;
            writeInt(this.mIndexHeader, IH_ACTIVE_ENTRIES, this.mActiveEntries);
        }
        insertInternal(j, bArr, bArr.length);
        updateIndexHeader();
    }

    private void insertInternal(long j, byte[] bArr, int i) {
        byte[] bArr2 = this.mBlobHeader;
        int checkSum = checkSum(bArr);
        writeLong(bArr2, IH_MAGIC, j);
        writeInt(bArr2, IH_MAX_BYTES, checkSum);
        writeInt(bArr2, IH_ACTIVE_REGION, this.mActiveBytes);
        writeInt(bArr2, IH_ACTIVE_ENTRIES, i);
        this.mActiveDataFile.write(bArr2);
        this.mActiveDataFile.write(bArr, IH_MAGIC, i);
        this.mIndexBuffer.putLong(this.mSlotOffset, j);
        this.mIndexBuffer.putInt(this.mSlotOffset + IH_MAX_BYTES, this.mActiveBytes);
        this.mActiveBytes += i + IH_ACTIVE_BYTES;
        writeInt(this.mIndexHeader, IH_ACTIVE_BYTES, this.mActiveBytes);
    }

    public byte[] lookup(long j) {
        this.mLookupRequest.key = j;
        this.mLookupRequest.buffer = null;
        if (lookup(this.mLookupRequest)) {
            return this.mLookupRequest.buffer;
        }
        return null;
    }

    public boolean lookup(LookupRequest lookupRequest) {
        if (lookupInternal(lookupRequest.key, this.mActiveHashStart) && getBlob(this.mActiveDataFile, this.mFileOffset, lookupRequest)) {
            return true;
        }
        int i = this.mSlotOffset;
        if (!lookupInternal(lookupRequest.key, this.mInactiveHashStart) || !getBlob(this.mInactiveDataFile, this.mFileOffset, lookupRequest)) {
            return false;
        }
        if ((this.mActiveBytes + IH_ACTIVE_BYTES) + lookupRequest.length > this.mMaxBytes || this.mActiveEntries * 2 >= this.mMaxEntries) {
            return true;
        }
        this.mSlotOffset = i;
        try {
            insertInternal(lookupRequest.key, lookupRequest.buffer, lookupRequest.length);
            this.mActiveEntries++;
            writeInt(this.mIndexHeader, IH_ACTIVE_ENTRIES, this.mActiveEntries);
            updateIndexHeader();
            return true;
        } catch (Throwable th) {
            Log.e(TAG, "cannot copy over");
            return true;
        }
    }

    private boolean getBlob(RandomAccessFile randomAccessFile, int i, LookupRequest lookupRequest) {
        byte[] bArr = this.mBlobHeader;
        long filePointer = randomAccessFile.getFilePointer();
        try {
            randomAccessFile.seek((long) i);
            if (randomAccessFile.read(bArr) != IH_ACTIVE_BYTES) {
                Log.w(TAG, "cannot read blob header");
                return false;
            }
            long readLong = readLong(bArr, IH_MAGIC);
            if (readLong != lookupRequest.key) {
                Log.w(TAG, "blob key does not match: " + readLong);
                randomAccessFile.seek(filePointer);
                return false;
            }
            int readInt = readInt(bArr, IH_MAX_BYTES);
            int readInt2 = readInt(bArr, IH_ACTIVE_REGION);
            if (readInt2 != i) {
                Log.w(TAG, "blob offset does not match: " + readInt2);
                randomAccessFile.seek(filePointer);
                return false;
            }
            int readInt3 = readInt(bArr, IH_ACTIVE_ENTRIES);
            if (readInt3 < 0 || readInt3 > (this.mMaxBytes - i) - 20) {
                Log.w(TAG, "invalid blob length: " + readInt3);
                randomAccessFile.seek(filePointer);
                return false;
            }
            if (lookupRequest.buffer == null || lookupRequest.buffer.length < readInt3) {
                lookupRequest.buffer = new byte[readInt3];
            }
            byte[] bArr2 = lookupRequest.buffer;
            lookupRequest.length = readInt3;
            if (randomAccessFile.read(bArr2, IH_MAGIC, readInt3) != readInt3) {
                Log.w(TAG, "cannot read blob data");
                randomAccessFile.seek(filePointer);
                return false;
            } else if (checkSum(bArr2, IH_MAGIC, readInt3) != readInt) {
                Log.w(TAG, "blob checksum does not match: " + readInt);
                randomAccessFile.seek(filePointer);
                return false;
            } else {
                randomAccessFile.seek(filePointer);
                return true;
            }
        } catch (Throwable th) {
            Log.e(TAG, "getBlob failed.", th);
        } finally {
            randomAccessFile.seek(filePointer);
        }
    }

    private boolean lookupInternal(long j, int i) {
        int i2 = (int) (j % ((long) this.mMaxEntries));
        if (i2 < 0) {
            i2 += this.mMaxEntries;
        }
        int i3 = i2;
        while (true) {
            int i4 = (i3 * IH_ACTIVE_REGION) + i;
            long j2 = this.mIndexBuffer.getLong(i4);
            int i5 = this.mIndexBuffer.getInt(i4 + IH_MAX_BYTES);
            if (i5 == 0) {
                this.mSlotOffset = i4;
                return false;
            } else if (j2 == j) {
                this.mSlotOffset = i4;
                this.mFileOffset = i5;
                return true;
            } else {
                i3++;
                if (i3 >= this.mMaxEntries) {
                    i3 = IH_MAGIC;
                }
                if (i3 == i2) {
                    Log.w(TAG, "corrupted index: clear the slot.");
                    this.mIndexBuffer.putInt(((i3 * IH_ACTIVE_REGION) + i) + IH_MAX_BYTES, IH_MAGIC);
                }
            }
        }
    }

    public void syncIndex() {
        try {
            this.mIndexBuffer.force();
        } catch (Throwable th) {
            Log.w(TAG, "sync index failed", th);
        }
    }

    public void syncAll() {
        syncIndex();
        try {
            this.mDataFile0.getFD().sync();
        } catch (Throwable th) {
            Log.w(TAG, "sync data file 0 failed", th);
        }
        try {
            this.mDataFile1.getFD().sync();
        } catch (Throwable th2) {
            Log.w(TAG, "sync data file 1 failed", th2);
        }
    }

    int getActiveCount() {
        int i = IH_MAGIC;
        int i2 = IH_MAGIC;
        while (i < this.mMaxEntries) {
            if (this.mIndexBuffer.getInt((this.mActiveHashStart + (i * IH_ACTIVE_REGION)) + IH_MAX_BYTES) != 0) {
                i2++;
            }
            i++;
        }
        if (i2 == this.mActiveEntries) {
            return i2;
        }
        Log.e(TAG, "wrong active count: " + this.mActiveEntries + " vs " + i2);
        return -1;
    }

    int checkSum(byte[] bArr) {
        this.mAdler32.reset();
        this.mAdler32.update(bArr);
        return (int) this.mAdler32.getValue();
    }

    int checkSum(byte[] bArr, int i, int i2) {
        this.mAdler32.reset();
        this.mAdler32.update(bArr, i, i2);
        return (int) this.mAdler32.getValue();
    }

    static void closeSilently(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
            }
        }
    }

    static int readInt(byte[] bArr, int i) {
        return (((bArr[i] & 255) | ((bArr[i + 1] & 255) << IH_MAX_BYTES)) | ((bArr[i + 2] & 255) << IH_ACTIVE_ENTRIES)) | ((bArr[i + 3] & 255) << IH_VERSION);
    }

    static long readLong(byte[] bArr, int i) {
        long j = (long) (bArr[i + 7] & 255);
        for (int i2 = 6; i2 >= 0; i2--) {
            j = (j << IH_MAX_BYTES) | ((long) (bArr[i + i2] & 255));
        }
        return j;
    }

    static void writeInt(byte[] bArr, int i, int i2) {
        for (int i3 = IH_MAGIC; i3 < IH_MAX_ENTRIES; i3++) {
            bArr[i + i3] = (byte) (i2 & 255);
            i2 >>= IH_MAX_BYTES;
        }
    }

    static void writeLong(byte[] bArr, int i, long j) {
        for (int i2 = IH_MAGIC; i2 < IH_MAX_BYTES; i2++) {
            bArr[i + i2] = (byte) ((int) (255 & j));
            j >>= 8;
        }
    }
}
