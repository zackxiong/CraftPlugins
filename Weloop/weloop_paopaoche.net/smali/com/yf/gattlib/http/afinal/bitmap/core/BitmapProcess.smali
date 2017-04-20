.class public Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapProcess;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final BYTESBUFFER_SIZE:I = 0x32000

.field private static final BYTESBUFFE_POOL_SIZE:I = 0x4

.field private static final sMicroThumbBufferPool:Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;


# instance fields
.field private mCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

.field private mDownloader:Lcom/yf/gattlib/http/afinal/bitmap/download/Downloader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;

    const/4 v1, 0x4

    const v2, 0x32000

    invoke-direct {v0, v1, v2}, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;-><init>(II)V

    sput-object v0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapProcess;->sMicroThumbBufferPool:Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;

    return-void
.end method

.method public constructor <init>(Lcom/yf/gattlib/http/afinal/bitmap/download/Downloader;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapProcess;->mDownloader:Lcom/yf/gattlib/http/afinal/bitmap/download/Downloader;

    .line 34
    iput-object p2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapProcess;->mCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    .line 35
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapProcess;->getFromDisk(Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapProcess;->mDownloader:Lcom/yf/gattlib/http/afinal/bitmap/download/Downloader;

    invoke-interface {v1, p1}, Lcom/yf/gattlib/http/afinal/bitmap/download/Downloader;->download(Ljava/lang/String;)[B

    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 44
    if-eqz p2, :cond_1

    .line 45
    array-length v0, v1

    invoke-virtual {p2}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->getBitmapWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->getBitmapHeight()I

    move-result v3

    invoke-static {v1, v4, v0, v2, v3}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDecoder;->decodeSampledBitmapFromByteArray([BIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapProcess;->mCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v2, p1, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->addToDiskCache(Ljava/lang/String;[B)V

    .line 53
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    array-length v0, v1

    invoke-static {v1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getFromDisk(Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 58
    sget-object v0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapProcess;->sMicroThumbBufferPool:Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;->get()Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;

    move-result-object v1

    .line 59
    const/4 v0, 0x0

    .line 61
    :try_start_0
    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapProcess;->mCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v2, p1, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->getImageData(Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;)Z

    move-result v2

    .line 62
    if-eqz v2, :cond_0

    iget v2, v1, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->length:I

    iget v3, v1, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->offset:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 63
    if-eqz p2, :cond_1

    .line 64
    iget-object v0, v1, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->data:[B

    iget v2, v1, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->offset:I

    iget v3, v1, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->length:I

    invoke-virtual {p2}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->getBitmapWidth()I

    move-result v4

    invoke-virtual {p2}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->getBitmapHeight()I

    move-result v5

    invoke-static {v0, v2, v3, v4, v5}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDecoder;->decodeSampledBitmapFromByteArray([BIIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 70
    :cond_0
    :goto_0
    sget-object v2, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapProcess;->sMicroThumbBufferPool:Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;

    invoke-virtual {v2, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;->recycle(Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;)V

    .line 72
    return-object v0

    .line 66
    :cond_1
    :try_start_1
    iget-object v0, v1, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->data:[B

    iget v2, v1, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->offset:I

    iget v3, v1, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    sget-object v2, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapProcess;->sMicroThumbBufferPool:Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;

    invoke-virtual {v2, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;->recycle(Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;)V

    throw v0
.end method
