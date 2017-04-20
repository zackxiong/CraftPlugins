.class public Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCacheParams"
.end annotation


# instance fields
.field public diskCacheCount:I

.field public diskCacheDir:Ljava/io/File;

.field public diskCacheEnabled:Z

.field public diskCacheSize:I

.field public memCacheSize:I

.field public memoryCacheEnabled:Z

.field public recycleImmediately:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/high16 v0, 0x800000

    iput v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memCacheSize:I

    .line 218
    const/high16 v0, 0x3200000

    iput v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheSize:I

    .line 219
    const/16 v0, 0x2710

    iput v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheCount:I

    .line 221
    iput-boolean v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memoryCacheEnabled:Z

    .line 222
    iput-boolean v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheEnabled:Z

    .line 223
    iput-boolean v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->recycleImmediately:Z

    .line 226
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 227
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/high16 v0, 0x800000

    iput v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memCacheSize:I

    .line 218
    const/high16 v0, 0x3200000

    iput v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheSize:I

    .line 219
    const/16 v0, 0x2710

    iput v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheCount:I

    .line 221
    iput-boolean v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memoryCacheEnabled:Z

    .line 222
    iput-boolean v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheEnabled:Z

    .line 223
    iput-boolean v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->recycleImmediately:Z

    .line 230
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 231
    return-void
.end method

.method private static getMemoryClass(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 259
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    return v0
.end method


# virtual methods
.method public setDiskCacheCount(I)V
    .locals 0

    .prologue
    .line 265
    iput p1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheCount:I

    .line 266
    return-void
.end method

.method public setDiskCacheSize(I)V
    .locals 0

    .prologue
    .line 255
    iput p1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->diskCacheSize:I

    .line 256
    return-void
.end method

.method public setMemCacheSize(I)V
    .locals 0

    .prologue
    .line 251
    iput p1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memCacheSize:I

    .line 252
    return-void
.end method

.method public setMemCacheSizePercent(Landroid/content/Context;F)V
    .locals 2

    .prologue
    const/high16 v1, 0x44800000    # 1024.0f

    .line 241
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setMemCacheSizePercent - percent must be between 0.05 and 0.8 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_1
    invoke-static {p1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->getMemoryClass(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->memCacheSize:I

    .line 248
    return-void
.end method

.method public setRecycleImmediately(Z)V
    .locals 0

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->recycleImmediately:Z

    .line 270
    return-void
.end method
