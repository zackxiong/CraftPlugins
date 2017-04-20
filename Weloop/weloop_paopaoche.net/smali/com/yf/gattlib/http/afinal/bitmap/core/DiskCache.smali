.class public Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;
    }
.end annotation


# static fields
.field private static final BH_CHECKSUM:I = 0x8

.field private static final BH_KEY:I = 0x0

.field private static final BH_LENGTH:I = 0x10

.field private static final BH_OFFSET:I = 0xc

.field private static final BLOB_HEADER_SIZE:I = 0x14

.field private static final DATA_HEADER_SIZE:I = 0x4

.field private static final IH_ACTIVE_BYTES:I = 0x14

.field private static final IH_ACTIVE_ENTRIES:I = 0x10

.field private static final IH_ACTIVE_REGION:I = 0xc

.field private static final IH_CHECKSUM:I = 0x1c

.field private static final IH_MAGIC:I = 0x0

.field private static final IH_MAX_BYTES:I = 0x8

.field private static final IH_MAX_ENTRIES:I = 0x4

.field private static final IH_VERSION:I = 0x18

.field private static final INDEX_HEADER_SIZE:I = 0x20

.field private static final MAGIC_DATA_FILE:I = -0x42db7af0

.field private static final MAGIC_INDEX_FILE:I = -0x4cd8cfd0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActiveBytes:I

.field private mActiveDataFile:Ljava/io/RandomAccessFile;

.field private mActiveEntries:I

.field private mActiveHashStart:I

.field private mActiveRegion:I

.field private mAdler32:Ljava/util/zip/Adler32;

.field private mBlobHeader:[B

.field private mDataFile0:Ljava/io/RandomAccessFile;

.field private mDataFile1:Ljava/io/RandomAccessFile;

.field private mFileOffset:I

.field private mInactiveDataFile:Ljava/io/RandomAccessFile;

.field private mInactiveHashStart:I

.field private mIndexBuffer:Ljava/nio/MappedByteBuffer;

.field private mIndexChannel:Ljava/nio/channels/FileChannel;

.field private mIndexFile:Ljava/io/RandomAccessFile;

.field private mIndexHeader:[B

.field private mLookupRequest:Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;

.field private mMaxBytes:I

.field private mMaxEntries:I

.field private mPath:Ljava/lang/String;

.field private mSlotOffset:I

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 6

    .prologue
    .line 137
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;-><init>(Ljava/lang/String;IIZI)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZI)V
    .locals 3

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexHeader:[B

    .line 124
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mBlobHeader:[B

    .line 125
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mAdler32:Ljava/util/zip/Adler32;

    .line 419
    new-instance v0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;

    invoke-direct {v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mLookupRequest:Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;

    .line 141
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unable to make dirs"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mPath:Ljava/lang/String;

    .line 148
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexFile:Ljava/io/RandomAccessFile;

    .line 149
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mDataFile0:Ljava/io/RandomAccessFile;

    .line 150
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mDataFile1:Ljava/io/RandomAccessFile;

    .line 151
    iput p5, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mVersion:I

    .line 153
    if-nez p4, :cond_2

    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->loadIndex()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    :cond_1
    return-void

    .line 157
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->resetCache(II)V

    .line 159
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->loadIndex()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->closeAll()V

    .line 161
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unable to load index"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearHash(I)V
    .locals 6

    .prologue
    const/16 v5, 0x400

    .line 360
    new-array v1, v5, [B

    .line 361
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 362
    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mMaxEntries:I

    mul-int/lit8 v0, v0, 0xc

    :goto_0
    if-lez v0, :cond_0

    .line 363
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 364
    iget-object v3, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 365
    sub-int/2addr v0, v2

    .line 366
    goto :goto_0

    .line 367
    :cond_0
    return-void
.end method

.method private closeAll()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->closeSilently(Ljava/io/Closeable;)V

    .line 191
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->closeSilently(Ljava/io/Closeable;)V

    .line 192
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->closeSilently(Ljava/io/Closeable;)V

    .line 193
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->closeSilently(Ljava/io/Closeable;)V

    .line 194
    return-void
.end method

.method static closeSilently(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 627
    if-nez p0, :cond_0

    .line 633
    :goto_0
    return-void

    .line 629
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 630
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static deleteFileSilently(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 175
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private flipRegion()V
    .locals 3

    .prologue
    .line 336
    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveRegion:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveRegion:I

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveEntries:I

    .line 338
    const/4 v0, 0x4

    iput v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveBytes:I

    .line 340
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexHeader:[B

    const/16 v1, 0xc

    iget v2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveRegion:I

    invoke-static {v0, v1, v2}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->writeInt([BII)V

    .line 341
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexHeader:[B

    const/16 v1, 0x10

    iget v2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveEntries:I

    invoke-static {v0, v1, v2}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->writeInt([BII)V

    .line 342
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexHeader:[B

    const/16 v1, 0x14

    iget v2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveBytes:I

    invoke-static {v0, v1, v2}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->writeInt([BII)V

    .line 343
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->updateIndexHeader()V

    .line 345
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->setActiveVariables()V

    .line 346
    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveHashStart:I

    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->clearHash(I)V

    .line 347
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->syncIndex()V

    .line 348
    return-void
.end method

.method private getBlob(Ljava/io/RandomAccessFile;ILcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 488
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mBlobHeader:[B

    .line 489
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 491
    int-to-long v4, p2

    :try_start_0
    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 492
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    const/16 v5, 0x14

    if-eq v4, v5, :cond_0

    .line 493
    sget-object v1, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v4, "cannot read blob header"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    return v0

    .line 496
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v1, v4}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->readLong([BI)J

    move-result-wide v4

    .line 497
    iget-wide v6, p3, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;->key:J

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    .line 498
    sget-object v1, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "blob key does not match: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 501
    :cond_1
    const/16 v4, 0x8

    :try_start_2
    invoke-static {v1, v4}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->readInt([BI)I

    move-result v4

    .line 502
    const/16 v5, 0xc

    invoke-static {v1, v5}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->readInt([BI)I

    move-result v5

    .line 503
    if-eq v5, p2, :cond_2

    .line 504
    sget-object v1, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "blob offset does not match: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 532
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 507
    :cond_2
    const/16 v5, 0x10

    :try_start_3
    invoke-static {v1, v5}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->readInt([BI)I

    move-result v1

    .line 508
    if-ltz v1, :cond_3

    iget v5, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mMaxBytes:I

    sub-int/2addr v5, p2

    add-int/lit8 v5, v5, -0x14

    if-le v1, v5, :cond_4

    .line 509
    :cond_3
    sget-object v4, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid blob length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 532
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 512
    :cond_4
    :try_start_4
    iget-object v5, p3, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;->buffer:[B

    if-eqz v5, :cond_5

    iget-object v5, p3, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;->buffer:[B

    array-length v5, v5

    if-ge v5, v1, :cond_6

    .line 513
    :cond_5
    new-array v5, v1, [B

    iput-object v5, p3, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;->buffer:[B

    .line 516
    :cond_6
    iget-object v5, p3, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;->buffer:[B

    .line 517
    iput v1, p3, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;->length:I

    .line 519
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v6

    if-eq v6, v1, :cond_7

    .line 520
    sget-object v1, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v4, "cannot read blob data"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 532
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 523
    :cond_7
    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {p0, v5, v6, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->checkSum([BII)I

    move-result v1

    if-eq v1, v4, :cond_8

    .line 524
    sget-object v1, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "blob checksum does not match: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 532
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 527
    :cond_8
    const/4 v0, 0x1

    .line 532
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 528
    :catch_0
    move-exception v1

    .line 529
    :try_start_6
    sget-object v4, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v5, "getBlob failed."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 532
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    throw v0
.end method

.method private insertInternal(J[BI)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 396
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mBlobHeader:[B

    .line 397
    invoke-virtual {p0, p3}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->checkSum([B)I

    move-result v1

    .line 398
    invoke-static {v0, v3, p1, p2}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->writeLong([BIJ)V

    .line 399
    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->writeInt([BII)V

    .line 400
    const/16 v1, 0xc

    iget v2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveBytes:I

    invoke-static {v0, v1, v2}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->writeInt([BII)V

    .line 401
    const/16 v1, 0x10

    invoke-static {v0, v1, p4}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->writeInt([BII)V

    .line 402
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 403
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p3, v3, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 405
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mSlotOffset:I

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 406
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mSlotOffset:I

    add-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveBytes:I

    invoke-virtual {v0, v1, v2}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 407
    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveBytes:I

    add-int/lit8 v1, p4, 0x14

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveBytes:I

    .line 408
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexHeader:[B

    const/16 v1, 0x14

    iget v2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveBytes:I

    invoke-static {v0, v1, v2}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->writeInt([BII)V

    .line 409
    return-void
.end method

.method private loadIndex()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const v5, -0x42db7af0

    const/4 v4, 0x4

    const/4 v6, 0x0

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexFile:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 201
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mDataFile0:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 202
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mDataFile1:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 204
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexHeader:[B

    .line 205
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 206
    sget-object v0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v1, "cannot read header"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 288
    :goto_0
    return v0

    .line 210
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->readInt([BI)I

    move-result v1

    const v2, -0x4cd8cfd0

    if-eq v1, v2, :cond_1

    .line 211
    sget-object v0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v1, "cannot read header magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 212
    goto :goto_0

    .line 215
    :cond_1
    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->readInt([BI)I

    move-result v1

    iget v2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mVersion:I

    if-eq v1, v2, :cond_2

    .line 216
    sget-object v0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v1, "version mismatch"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 217
    goto :goto_0

    .line 220
    :cond_2
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->readInt([BI)I

    move-result v1

    iput v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mMaxEntries:I

    .line 221
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->readInt([BI)I

    move-result v1

    iput v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mMaxBytes:I

    .line 222
    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->readInt([BI)I

    move-result v1

    iput v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveRegion:I

    .line 223
    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->readInt([BI)I

    move-result v1

    iput v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveEntries:I

    .line 224
    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->readInt([BI)I

    move-result v1

    iput v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveBytes:I

    .line 226
    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->readInt([BI)I

    move-result v1

    .line 227
    const/4 v2, 0x0

    const/16 v3, 0x1c

    invoke-virtual {p0, v0, v2, v3}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->checkSum([BII)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 228
    sget-object v0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v1, "header checksum does not match"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 229
    goto :goto_0

    .line 233
    :cond_3
    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mMaxEntries:I

    if-gtz v0, :cond_4

    .line 234
    sget-object v0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v1, "invalid max entries"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 235
    goto :goto_0

    .line 237
    :cond_4
    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mMaxBytes:I

    if-gtz v0, :cond_5

    .line 238
    sget-object v0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v1, "invalid max bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 239
    goto :goto_0

    .line 241
    :cond_5
    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveRegion:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveRegion:I

    if-eq v0, v7, :cond_6

    .line 242
    sget-object v0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v1, "invalid active region"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 243
    goto/16 :goto_0

    .line 245
    :cond_6
    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveEntries:I

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveEntries:I

    iget v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mMaxEntries:I

    if-le v0, v1, :cond_8

    .line 246
    :cond_7
    sget-object v0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v1, "invalid active entries"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 247
    goto/16 :goto_0

    .line 249
    :cond_8
    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveBytes:I

    if-lt v0, v4, :cond_9

    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveBytes:I

    iget v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mMaxBytes:I

    if-le v0, v1, :cond_a

    .line 250
    :cond_9
    sget-object v0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v1, "invalid active bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 251
    goto/16 :goto_0

    .line 253
    :cond_a
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget v2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mMaxEntries:I

    mul-int/lit8 v2, v2, 0xc

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 255
    sget-object v0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v1, "invalid index file length"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 256
    goto/16 :goto_0

    .line 260
    :cond_b
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 261
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1

    if-eq v1, v4, :cond_c

    .line 262
    sget-object v0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v1, "cannot read data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 263
    goto/16 :goto_0

    .line 265
    :cond_c
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->readInt([BI)I

    move-result v1

    if-eq v1, v5, :cond_d

    .line 266
    sget-object v0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v1, "invalid data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 267
    goto/16 :goto_0

    .line 269
    :cond_d
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1

    if-eq v1, v4, :cond_e

    .line 270
    sget-object v0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v1, "cannot read data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 271
    goto/16 :goto_0

    .line 273
    :cond_e
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->readInt([BI)I

    move-result v0

    if-eq v0, v5, :cond_f

    .line 274
    sget-object v0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v1, "invalid data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 275
    goto/16 :goto_0

    .line 279
    :cond_f
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    .line 280
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    .line 282
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 284
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->setActiveVariables()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    .line 285
    goto/16 :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    sget-object v1, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v2, "loadIndex failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v6

    .line 288
    goto/16 :goto_0
.end method

.method private lookupInternal(JI)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 546
    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mMaxEntries:I

    int-to-long v0, v0

    rem-long v0, p1, v0

    long-to-int v0, v0

    .line 547
    if-gez v0, :cond_0

    iget v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mMaxEntries:I

    add-int/2addr v0, v1

    :cond_0
    move v1, v0

    .line 550
    :cond_1
    :goto_0
    mul-int/lit8 v3, v1, 0xc

    add-int/2addr v3, p3

    .line 551
    iget-object v4, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v4

    .line 552
    iget-object v6, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v7, v3, 0x8

    invoke-virtual {v6, v7}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v6

    .line 553
    if-nez v6, :cond_2

    .line 554
    iput v3, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mSlotOffset:I

    move v0, v2

    .line 559
    :goto_1
    return v0

    .line 556
    :cond_2
    cmp-long v4, v4, p1

    if-nez v4, :cond_3

    .line 557
    iput v3, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mSlotOffset:I

    .line 558
    iput v6, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mFileOffset:I

    .line 559
    const/4 v0, 0x1

    goto :goto_1

    .line 561
    :cond_3
    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mMaxEntries:I

    if-lt v1, v3, :cond_4

    move v1, v2

    .line 564
    :cond_4
    if-ne v1, v0, :cond_1

    .line 565
    sget-object v3, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v4, "corrupted index: clear the slot."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v3, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v4, v1, 0xc

    add-int/2addr v4, p3

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4, v2}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method static readInt([BI)I
    .locals 2

    .prologue
    .line 636
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static readLong([BI)J
    .locals 6

    .prologue
    .line 643
    add-int/lit8 v0, p1, 0x7

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v2, v0

    .line 644
    const/4 v0, 0x6

    :goto_0
    if-ltz v0, :cond_0

    .line 645
    const/16 v1, 0x8

    shl-long/2addr v2, v1

    add-int v1, p1, v0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 644
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 647
    :cond_0
    return-wide v2
.end method

.method private resetCache(II)V
    .locals 9

    .prologue
    const/16 v8, 0x1c

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 309
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 310
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexFile:Ljava/io/RandomAccessFile;

    mul-int/lit8 v1, p1, 0xc

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x20

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 311
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 312
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexHeader:[B

    .line 313
    const v1, -0x4cd8cfd0

    invoke-static {v0, v4, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->writeInt([BII)V

    .line 314
    invoke-static {v0, v5, p1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->writeInt([BII)V

    .line 315
    const/16 v1, 0x8

    invoke-static {v0, v1, p2}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->writeInt([BII)V

    .line 316
    const/16 v1, 0xc

    invoke-static {v0, v1, v4}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->writeInt([BII)V

    .line 317
    const/16 v1, 0x10

    invoke-static {v0, v1, v4}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->writeInt([BII)V

    .line 318
    const/16 v1, 0x14

    invoke-static {v0, v1, v5}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->writeInt([BII)V

    .line 319
    const/16 v1, 0x18

    iget v2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mVersion:I

    invoke-static {v0, v1, v2}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->writeInt([BII)V

    .line 320
    invoke-virtual {p0, v0, v4, v8}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->checkSum([BII)I

    move-result v1

    invoke-static {v0, v8, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->writeInt([BII)V

    .line 321
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 325
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 326
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 327
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 328
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 329
    const v1, -0x42db7af0

    invoke-static {v0, v4, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->writeInt([BII)V

    .line 330
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 331
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 332
    return-void
.end method

.method private setActiveVariables()V
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 293
    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveRegion:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_0
    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    .line 294
    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveRegion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_1
    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    .line 295
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveBytes:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 296
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveBytes:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 298
    iput v4, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveHashStart:I

    .line 299
    iput v4, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mInactiveHashStart:I

    .line 301
    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveRegion:I

    if-nez v0, :cond_2

    .line 302
    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mInactiveHashStart:I

    iget v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mInactiveHashStart:I

    .line 306
    :goto_2
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_1

    .line 304
    :cond_2
    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveHashStart:I

    iget v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveHashStart:I

    goto :goto_2
.end method

.method private updateIndexHeader()V
    .locals 4

    .prologue
    const/16 v3, 0x1c

    const/4 v2, 0x0

    .line 352
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexHeader:[B

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexHeader:[B

    invoke-virtual {p0, v1, v2, v3}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->checkSum([BII)I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->writeInt([BII)V

    .line 354
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 355
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexHeader:[B

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 356
    return-void
.end method

.method static writeInt([BII)V
    .locals 3

    .prologue
    .line 651
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 652
    add-int v1, p1, v0

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 653
    shr-int/lit8 p2, p2, 0x8

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 655
    :cond_0
    return-void
.end method

.method static writeLong([BIJ)V
    .locals 6

    .prologue
    const/16 v4, 0x8

    .line 658
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 659
    add-int v1, p1, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 660
    shr-long/2addr p2, v4

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 662
    :cond_0
    return-void
.end method


# virtual methods
.method checkSum([B)I
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 616
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1}, Ljava/util/zip/Adler32;->update([B)V

    .line 617
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method checkSum([BII)I
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 622
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Adler32;->update([BII)V

    .line 623
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->syncAll()V

    .line 186
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->closeAll()V

    .line 187
    return-void
.end method

.method public delete()V
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method getActiveCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 599
    move v1, v0

    .line 600
    :goto_0
    iget v2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mMaxEntries:I

    if-ge v0, v2, :cond_1

    .line 601
    iget v2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveHashStart:I

    mul-int/lit8 v3, v0, 0xc

    add-int/2addr v2, v3

    .line 603
    iget-object v3, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v3, v2}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v2

    .line 604
    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 600
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    :cond_1
    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveEntries:I

    if-ne v1, v0, :cond_2

    .line 610
    :goto_1
    return v1

    .line 609
    :cond_2
    sget-object v0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong active count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveEntries:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public insert(J[B)V
    .locals 3

    .prologue
    .line 371
    array-length v0, p3

    add-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mMaxBytes:I

    if-le v0, v1, :cond_0

    .line 372
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "blob is too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveBytes:I

    add-int/lit8 v0, v0, 0x14

    array-length v1, p3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mMaxBytes:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveEntries:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mMaxEntries:I

    if-lt v0, v1, :cond_2

    .line 377
    :cond_1
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->flipRegion()V

    .line 380
    :cond_2
    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveHashStart:I

    invoke-direct {p0, p1, p2, v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->lookupInternal(JI)Z

    move-result v0

    if-nez v0, :cond_3

    .line 383
    iget v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveEntries:I

    .line 384
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexHeader:[B

    const/16 v1, 0x10

    iget v2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveEntries:I

    invoke-static {v0, v1, v2}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->writeInt([BII)V

    .line 387
    :cond_3
    array-length v0, p3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->insertInternal(J[BI)V

    .line 388
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->updateIndexHeader()V

    .line 389
    return-void
.end method

.method public lookup(Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 442
    iget-wide v2, p1, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;->key:J

    iget v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveHashStart:I

    invoke-direct {p0, v2, v3, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->lookupInternal(JI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mFileOffset:I

    invoke-direct {p0, v1, v2, p1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    :cond_0
    :goto_0
    return v0

    .line 451
    :cond_1
    iget v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mSlotOffset:I

    .line 454
    iget-wide v2, p1, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;->key:J

    iget v4, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mInactiveHashStart:I

    invoke-direct {p0, v2, v3, v4}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->lookupInternal(JI)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 455
    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    iget v3, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mFileOffset:I

    invoke-direct {p0, v2, v3, p1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 458
    iget v2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveBytes:I

    add-int/lit8 v2, v2, 0x14

    iget v3, p1, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;->length:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mMaxBytes:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveEntries:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mMaxEntries:I

    if-ge v2, v3, :cond_0

    .line 463
    iput v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mSlotOffset:I

    .line 465
    :try_start_0
    iget-wide v2, p1, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;->key:J

    iget-object v1, p1, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;->buffer:[B

    iget v4, p1, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;->length:I

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->insertInternal(J[BI)V

    .line 466
    iget v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveEntries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveEntries:I

    .line 467
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexHeader:[B

    const/16 v2, 0x10

    iget v3, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mActiveEntries:I

    invoke-static {v1, v2, v3}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->writeInt([BII)V

    .line 468
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->updateIndexHeader()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 469
    :catch_0
    move-exception v1

    .line 470
    sget-object v1, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v2, "cannot copy over"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 476
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lookup(J)[B
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 421
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mLookupRequest:Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;

    iput-wide p1, v1, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;->key:J

    .line 422
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mLookupRequest:Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;

    iput-object v0, v1, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;->buffer:[B

    .line 423
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mLookupRequest:Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;

    invoke-virtual {p0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->lookup(Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mLookupRequest:Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;

    iget-object v0, v0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;->buffer:[B

    .line 426
    :cond_0
    return-object v0
.end method

.method public syncAll()V
    .locals 3

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->syncIndex()V

    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 592
    :goto_1
    return-void

    .line 584
    :catch_0
    move-exception v0

    .line 585
    sget-object v1, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v2, "sync data file 0 failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 589
    :catch_1
    move-exception v0

    .line 590
    sget-object v1, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v2, "sync data file 1 failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public syncIndex()V
    .locals 3

    .prologue
    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :goto_0
    return-void

    .line 575
    :catch_0
    move-exception v0

    .line 576
    sget-object v1, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->TAG:Ljava/lang/String;

    const-string v2, "sync index failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
