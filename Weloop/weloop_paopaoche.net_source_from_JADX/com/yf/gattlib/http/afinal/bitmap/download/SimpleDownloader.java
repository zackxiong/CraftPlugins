package com.yf.gattlib.http.afinal.bitmap.download;

import android.util.Log;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

/* compiled from: ProGuard */
public class SimpleDownloader implements Downloader {
    private static final int IO_BUFFER_SIZE = 8192;
    private static final String TAG;

    /* compiled from: ProGuard */
    public class FlushedInputStream extends FilterInputStream {
        public FlushedInputStream(InputStream inputStream) {
            super(inputStream);
        }

        public long skip(long j) {
            long j2 = 0;
            while (j2 < j) {
                long skip = this.in.skip(j - j2);
                if (skip == 0) {
                    if (read() < 0) {
                        break;
                    }
                    skip = 1;
                }
                j2 = skip + j2;
            }
            return j2;
        }
    }

    static {
        TAG = SimpleDownloader.class.getSimpleName();
    }

    public byte[] download(String str) {
        if (str == null) {
            return null;
        }
        if (str.trim().toLowerCase().startsWith("http")) {
            return getFromHttp(str);
        }
        File file;
        if (str.trim().toLowerCase().startsWith("file:")) {
            try {
                file = new File(new URI(str));
                if (file.exists() && file.canRead()) {
                    return getFromFile(file);
                }
                return null;
            } catch (URISyntaxException e) {
                Log.e(TAG, "Error in read from file - " + str + " : " + e);
                return null;
            }
        }
        file = new File(str);
        if (file.exists() && file.canRead()) {
            return getFromFile(file);
        }
        return null;
    }

    private byte[] getFromFile(File file) {
        FileInputStream fileInputStream;
        Object e;
        Throwable th;
        byte[] bArr = null;
        if (file != null) {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr2 = new byte[1024];
                    while (true) {
                        int read = fileInputStream.read(bArr2);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr2, 0, read);
                    }
                    bArr = byteArrayOutputStream.toByteArray();
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e2) {
                        }
                    }
                } catch (Exception e3) {
                    e = e3;
                    try {
                        Log.e(TAG, "Error in read from file - " + file + " : " + e);
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e4) {
                            }
                        }
                        return bArr;
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e5) {
                            }
                        }
                        throw th;
                    }
                }
            } catch (Exception e6) {
                e = e6;
                fileInputStream = bArr;
                Log.e(TAG, "Error in read from file - " + file + " : " + e);
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                return bArr;
            } catch (Throwable th3) {
                fileInputStream = bArr;
                th = th3;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                throw th;
            }
        }
        return bArr;
    }

    private byte[] getFromHttp(String str) {
        FlushedInputStream flushedInputStream;
        HttpURLConnection httpURLConnection;
        FlushedInputStream flushedInputStream2;
        Object obj;
        Throwable th;
        BufferedOutputStream bufferedOutputStream = null;
        try {
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
            try {
                flushedInputStream = new FlushedInputStream(new BufferedInputStream(httpURLConnection2.getInputStream(), IO_BUFFER_SIZE));
            } catch (IOException e) {
                httpURLConnection = httpURLConnection2;
                IOException iOException = e;
                flushedInputStream2 = null;
                try {
                    Log.e(TAG, "Error in downloadBitmap - " + str + " : " + obj);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    if (null != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException e2) {
                            return null;
                        }
                    }
                    if (flushedInputStream2 != null) {
                        flushedInputStream2.close();
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    if (null != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException e3) {
                            throw th;
                        }
                    }
                    if (flushedInputStream2 != null) {
                        flushedInputStream2.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                httpURLConnection = httpURLConnection2;
                th = th3;
                flushedInputStream2 = null;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                if (null != null) {
                    bufferedOutputStream.close();
                }
                if (flushedInputStream2 != null) {
                    flushedInputStream2.close();
                }
                throw th;
            }
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                while (true) {
                    int read = flushedInputStream.read();
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(read);
                }
                byte[] toByteArray = byteArrayOutputStream.toByteArray();
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                if (null != null) {
                    try {
                        bufferedOutputStream.close();
                    } catch (IOException e4) {
                    }
                }
                if (flushedInputStream != null) {
                    flushedInputStream.close();
                }
                return toByteArray;
            } catch (IOException e5) {
                IOException iOException2 = e5;
                flushedInputStream2 = flushedInputStream;
                httpURLConnection = httpURLConnection2;
                obj = iOException2;
                Log.e(TAG, "Error in downloadBitmap - " + str + " : " + obj);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                if (null != null) {
                    bufferedOutputStream.close();
                }
                if (flushedInputStream2 != null) {
                    flushedInputStream2.close();
                }
                return null;
            } catch (Throwable th32) {
                Throwable th4 = th32;
                flushedInputStream2 = flushedInputStream;
                httpURLConnection = httpURLConnection2;
                th = th4;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                if (null != null) {
                    bufferedOutputStream.close();
                }
                if (flushedInputStream2 != null) {
                    flushedInputStream2.close();
                }
                throw th;
            }
        } catch (IOException e6) {
            obj = e6;
            flushedInputStream2 = null;
            httpURLConnection = null;
            Log.e(TAG, "Error in downloadBitmap - " + str + " : " + obj);
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            if (null != null) {
                bufferedOutputStream.close();
            }
            if (flushedInputStream2 != null) {
                flushedInputStream2.close();
            }
            return null;
        } catch (Throwable th5) {
            th = th5;
            flushedInputStream2 = null;
            httpURLConnection = null;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            if (null != null) {
                bufferedOutputStream.close();
            }
            if (flushedInputStream2 != null) {
                flushedInputStream2.close();
            }
            throw th;
        }
    }
}
