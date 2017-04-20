.class public Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISK_CACHE_COUNT:I = 0x2710

.field private static final DEFAULT_DISK_CACHE_ENABLED:Z = true

.field private static final DEFAULT_DISK_CACHE_SIZE:I = 0x3200000

.field private static final DEFAULT_MEM_CACHE_ENABLED:Z = true

.field private static final DEFAULT_MEM_CACHE_SIZE:I = 0x800000


# instance fields
.field private mCacheParams:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;

.field private mDiskCache:Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;

.field private mMemoryCache:Lcom/yf/gattlib/http/afinal/bitmap/core/IMemoryCache;


# direct methods
.method public constructor <init>(Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->init(Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;)V

    .line 49
    return-void
.end method

.method private init(Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;)V
    .locals 5

    .prologue
    .line 57
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mCacheParams:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    .line 60
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mCacheParams:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget-boolean v0, v0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memoryCacheEnabled:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mCacheParams:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget-boolean v0, v0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->recycleImmediately:Z

    if-eqz v0, :cond_2

    .line 63
    new-instance v0, Lcom/yf/gattlib/http/afinal/bitmap/core/SoftMemoryCacheImpl;

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mCacheParams:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget v1, v1, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memCacheSize:I

    invoke-direct {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/SoftMemoryCacheImpl;-><init>(I)V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lcom/yf/gattlib/http/afinal/bitmap/core/IMemoryCache;

    .line 71
    :cond_0
    :goto_0
    iget-boolean v0, p1, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheEnabled:Z

    if-eqz v0, :cond_1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mCacheParams:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget-object v0, v0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;

    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mCacheParams:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget v2, v2, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheCount:I

    iget-object v3, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mCacheParams:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget v3, v3, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheSize:I

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;-><init>(Ljava/lang/String;IIZ)V

    iput-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mDiskCache:Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_1
    :goto_1
    return-void

    .line 66
    :cond_2
    new-instance v0, Lcom/yf/gattlib/http/afinal/bitmap/core/BaseMemoryCacheImpl;

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mCacheParams:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget v1, v1, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memCacheSize:I

    invoke-direct {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BaseMemoryCacheImpl;-><init>(I)V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lcom/yf/gattlib/http/afinal/bitmap/core/IMemoryCache;

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public addToDiskCache(Ljava/lang/String;[B)V
    .locals 5

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mDiskCache:Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-static {p1}, Lcom/yf/gattlib/http/afinal/utils/Utils;->makeKey(Ljava/lang/String;)[B

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/utils/Utils;->crc64Long([B)J

    move-result-wide v2

    .line 112
    array-length v1, v0

    array-length v4, p2

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 113
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 114
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 115
    iget-object v4, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mDiskCache:Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;

    monitor-enter v4

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mDiskCache:Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->insert(J[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :goto_1
    :try_start_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 118
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public addToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 91
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lcom/yf/gattlib/http/afinal/bitmap/core/IMemoryCache;

    invoke-interface {v0, p1, p2}, Lcom/yf/gattlib/http/afinal/bitmap/core/IMemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public clearCache()V
    .locals 0

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->clearMemoryCache()V

    .line 174
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->clearDiskCache()V

    .line 175
    return-void
.end method

.method public clearCache(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->clearMemoryCache(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->clearDiskCache(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public clearDiskCache()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mDiskCache:Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mDiskCache:Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->delete()V

    .line 180
    :cond_0
    return-void
.end method

.method public clearDiskCache(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, p1, v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->addToDiskCache(Ljava/lang/String;[B)V

    .line 195
    return-void
.end method

.method public clearMemoryCache()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lcom/yf/gattlib/http/afinal/bitmap/core/IMemoryCache;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lcom/yf/gattlib/http/afinal/bitmap/core/IMemoryCache;

    invoke-interface {v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/IMemoryCache;->evictAll()V

    .line 186
    :cond_0
    return-void
.end method

.method public clearMemoryCache(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lcom/yf/gattlib/http/afinal/bitmap/core/IMemoryCache;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lcom/yf/gattlib/http/afinal/bitmap/core/IMemoryCache;

    invoke-interface {v0, p1}, Lcom/yf/gattlib/http/afinal/bitmap/core/IMemoryCache;->remove(Ljava/lang/String;)V

    .line 201
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mDiskCache:Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mDiskCache:Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->close()V

    .line 211
    :cond_0
    return-void
.end method

.method public getBitmapFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lcom/yf/gattlib/http/afinal/bitmap/core/IMemoryCache;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mMemoryCache:Lcom/yf/gattlib/http/afinal/bitmap/core/IMemoryCache;

    invoke-interface {v0, p1}, Lcom/yf/gattlib/http/afinal/bitmap/core/IMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageData(Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 135
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mDiskCache:Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;

    if-nez v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    invoke-static {p1}, Lcom/yf/gattlib/http/afinal/utils/Utils;->makeKey(Ljava/lang/String;)[B

    move-result-object v1

    .line 139
    invoke-static {v1}, Lcom/yf/gattlib/http/afinal/utils/Utils;->crc64Long([B)J

    move-result-wide v2

    .line 141
    :try_start_0
    new-instance v4, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;

    invoke-direct {v4}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;-><init>()V

    .line 142
    iput-wide v2, v4, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;->key:J

    .line 143
    iget-object v2, p2, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->data:[B

    iput-object v2, v4, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;->buffer:[B

    .line 144
    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mDiskCache:Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :try_start_1
    iget-object v3, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->mDiskCache:Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;

    invoke-virtual {v3, v4}, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache;->lookup(Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 146
    monitor-exit v2

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    :catch_0
    move-exception v1

    goto :goto_0

    .line 147
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    :try_start_4
    iget-object v2, v4, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;->buffer:[B

    invoke-static {v1, v2}, Lcom/yf/gattlib/http/afinal/utils/Utils;->isSameKey([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, v4, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;->buffer:[B

    iput-object v2, p2, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->data:[B

    .line 150
    array-length v1, v1

    iput v1, p2, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->offset:I

    .line 151
    iget v1, v4, Lcom/yf/gattlib/http/afinal/bitmap/core/DiskCache$LookupRequest;->length:I

    iget v2, p2, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->offset:I

    sub-int/2addr v1, v2

    iput v1, p2, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->length:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 152
    const/4 v0, 0x1

    goto :goto_0
.end method
