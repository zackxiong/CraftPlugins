.class public Lcom/yf/gattlib/http/afinal/FinalBitmap;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;,
        Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;,
        Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;,
        Lcom/yf/gattlib/http/afinal/FinalBitmap$AsyncDrawable;
    }
.end annotation


# static fields
.field private static mFinalBitmap:Lcom/yf/gattlib/http/afinal/FinalBitmap;


# instance fields
.field private bitmapLoadAndDisplayExecutor:Ljava/util/concurrent/ExecutorService;

.field private configMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapProcess:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapProcess;

.field private mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

.field private mContext:Landroid/content/Context;

.field private mExitTasksEarly:Z

.field private mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

.field private mInit:Z

.field private mPauseWork:Z

.field private final mPauseWorkLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mExitTasksEarly:Z

    .line 58
    iput-boolean v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mPauseWork:Z

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mPauseWorkLock:Ljava/lang/Object;

    .line 62
    iput-boolean v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mInit:Z

    .line 414
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->configMap:Ljava/util/HashMap;

    .line 70
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    invoke-direct {v0, p0, p1}, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;-><init>(Lcom/yf/gattlib/http/afinal/FinalBitmap;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    .line 72
    const-string v0, "afinalCache"

    invoke-static {p1, v0}, Lcom/yf/gattlib/http/afinal/utils/Utils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->configDiskCachePath(Ljava/lang/String;)Lcom/yf/gattlib/http/afinal/FinalBitmap;

    .line 74
    new-instance v0, Lcom/yf/gattlib/http/afinal/bitmap/display/SimpleDisplayer;

    invoke-direct {v0}, Lcom/yf/gattlib/http/afinal/bitmap/display/SimpleDisplayer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->configDisplayer(Lcom/yf/gattlib/http/afinal/bitmap/display/Displayer;)Lcom/yf/gattlib/http/afinal/FinalBitmap;

    .line 75
    new-instance v0, Lcom/yf/gattlib/http/afinal/bitmap/download/SimpleDownloader;

    invoke-direct {v0}, Lcom/yf/gattlib/http/afinal/bitmap/download/SimpleDownloader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->configDownlader(Lcom/yf/gattlib/http/afinal/bitmap/download/Downloader;)Lcom/yf/gattlib/http/afinal/FinalBitmap;

    .line 76
    return-void
.end method

.method static synthetic access$1000(Lcom/yf/gattlib/http/afinal/FinalBitmap;Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->processBitmap(Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/yf/gattlib/http/afinal/FinalBitmap;Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->createCircleImage(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/yf/gattlib/http/afinal/FinalBitmap;)Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/yf/gattlib/http/afinal/FinalBitmap;)Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/view/View;)Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->getBitmapTaskFromImageView(Landroid/view/View;)Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/yf/gattlib/http/afinal/FinalBitmap;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->clearCacheInternalInBackgroud()V

    return-void
.end method

.method static synthetic access$300(Lcom/yf/gattlib/http/afinal/FinalBitmap;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->closeCacheInternalInBackgroud()V

    return-void
.end method

.method static synthetic access$400(Lcom/yf/gattlib/http/afinal/FinalBitmap;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->clearDiskCacheInBackgroud()V

    return-void
.end method

.method static synthetic access$500(Lcom/yf/gattlib/http/afinal/FinalBitmap;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->clearCacheInBackgroud(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/yf/gattlib/http/afinal/FinalBitmap;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->clearDiskCacheInBackgroud(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/yf/gattlib/http/afinal/FinalBitmap;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mPauseWorkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/yf/gattlib/http/afinal/FinalBitmap;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mPauseWork:Z

    return v0
.end method

.method static synthetic access$900(Lcom/yf/gattlib/http/afinal/FinalBitmap;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mExitTasksEarly:Z

    return v0
.end method

.method public static checkImageTask(Ljava/lang/Object;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 657
    invoke-static {p1}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->getBitmapTaskFromImageView(Landroid/view/View;)Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;

    move-result-object v1

    .line 659
    if-eqz v1, :cond_1

    .line 660
    # getter for: Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->data:Ljava/lang/Object;
    invoke-static {v1}, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->access$100(Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;)Ljava/lang/Object;

    move-result-object v2

    .line 661
    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 662
    :cond_0
    invoke-virtual {v1, v0}, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->cancel(Z)Z

    .line 668
    :cond_1
    :goto_0
    return v0

    .line 665
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearCacheInBackgroud(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->clearCache(Ljava/lang/String;)V

    .line 444
    :cond_0
    return-void
.end method

.method private clearCacheInternalInBackgroud()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->clearCache()V

    .line 432
    :cond_0
    return-void
.end method

.method private clearDiskCacheInBackgroud()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->clearDiskCache()V

    .line 438
    :cond_0
    return-void
.end method

.method private clearDiskCacheInBackgroud(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->clearDiskCache(Ljava/lang/String;)V

    .line 450
    :cond_0
    return-void
.end method

.method private closeCacheInternalInBackgroud()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 458
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->close()V

    .line 460
    iput-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    .line 461
    sput-object v1, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mFinalBitmap:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    .line 463
    :cond_0
    return-void
.end method

.method public static declared-synchronized create(Landroid/content/Context;)Lcom/yf/gattlib/http/afinal/FinalBitmap;
    .locals 3

    .prologue
    .line 85
    const-class v1, Lcom/yf/gattlib/http/afinal/FinalBitmap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mFinalBitmap:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalBitmap;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/yf/gattlib/http/afinal/FinalBitmap;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mFinalBitmap:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    .line 88
    :cond_0
    sget-object v0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mFinalBitmap:Lcom/yf/gattlib/http/afinal/FinalBitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private createCircleImage(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/16 v8, 0xff

    .line 814
    const/4 v2, 0x3

    .line 815
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 816
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 817
    if-ge v0, v1, :cond_0

    .line 819
    :goto_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 820
    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 821
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 822
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 826
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 830
    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v0, 0x2

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 834
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 838
    invoke-virtual {v4, p1, v9, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 842
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 843
    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 844
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 845
    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 846
    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 847
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 848
    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v4, v2, v5, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 849
    return-object v3

    :cond_0
    move v0, v1

    .line 817
    goto :goto_0
.end method

.method private doDisplay(Landroid/widget/ImageView;Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;Z)V
    .locals 4

    .prologue
    .line 371
    if-eqz p1, :cond_0

    .line 372
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 373
    :cond_0
    iget-boolean v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mInit:Z

    if-nez v0, :cond_1

    .line 374
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->init()Lcom/yf/gattlib/http/afinal/FinalBitmap;

    .line 377
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_3

    .line 412
    :cond_2
    :goto_0
    return-void

    .line 381
    :cond_3
    if-nez p3, :cond_4

    .line 382
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object p3, v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    .line 384
    :cond_4
    const/4 v0, 0x0

    .line 386
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    if-eqz v1, :cond_5

    .line 387
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v0, p2}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->getBitmapFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 390
    :cond_5
    if-eqz v0, :cond_7

    .line 391
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    .line 392
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 394
    :cond_6
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 397
    :cond_7
    invoke-static {p2, p1}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->checkImageTask(Ljava/lang/Object;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;-><init>(Lcom/yf/gattlib/http/afinal/FinalBitmap;Landroid/view/View;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;Z)V

    .line 401
    new-instance v1, Lcom/yf/gattlib/http/afinal/FinalBitmap$AsyncDrawable;

    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p3}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->getLoadingBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/yf/gattlib/http/afinal/FinalBitmap$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;)V

    .line 405
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    .line 406
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 410
    :goto_1
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->bitmapLoadAndDisplayExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/core/AsyncTask;

    goto :goto_0

    .line 408
    :cond_8
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private static getBitmapTaskFromImageView(Landroid/view/View;)Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;
    .locals 2

    .prologue
    .line 633
    if-eqz p0, :cond_1

    .line 635
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 636
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 641
    :goto_0
    instance-of v1, v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$AsyncDrawable;

    if-eqz v1, :cond_1

    .line 642
    check-cast v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$AsyncDrawable;

    .line 643
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/FinalBitmap$AsyncDrawable;->getBitmapWorkerTask()Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;

    move-result-object v0

    .line 646
    :goto_1
    return-object v0

    .line 638
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 646
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getDisplayConfig()Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;
    .locals 2

    .prologue
    .line 417
    new-instance v0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-direct {v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;-><init>()V

    .line 418
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v1, v1, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setAnimation(Landroid/view/animation/Animation;)V

    .line 419
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v1, v1, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->getAnimationType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setAnimationType(I)V

    .line 420
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v1, v1, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->getBitmapHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setBitmapHeight(I)V

    .line 421
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v1, v1, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->getBitmapWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setBitmapWidth(I)V

    .line 422
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v1, v1, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->getLoadfailBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setLoadfailBitmap(Landroid/graphics/Bitmap;)V

    .line 424
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v1, v1, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->getLoadingBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 425
    return-object v0
.end method

.method private init()Lcom/yf/gattlib/http/afinal/FinalBitmap;
    .locals 6

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mInit:Z

    if-nez v0, :cond_1

    .line 251
    new-instance v0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v1, v1, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->cachePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;-><init>(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget v1, v1, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->memCacheSizePercent:F

    float-to-double v2, v1

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget v1, v1, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->memCacheSizePercent:F

    float-to-double v2, v1

    const-wide v4, 0x3fe999999999999aL    # 0.8

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    .line 255
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget v2, v2, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->memCacheSizePercent:F

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget v1, v1, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->diskCacheSize:I

    const/high16 v2, 0x500000

    if-le v1, v2, :cond_0

    .line 266
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget v1, v1, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->diskCacheSize:I

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->setDiskCacheSize(I)V

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget-boolean v1, v1, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->recycleImmediately:Z

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->setRecycleImmediately(Z)V

    .line 270
    new-instance v1, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    invoke-direct {v1, v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;-><init>(Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;)V

    iput-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    .line 273
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget v0, v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->poolSize:I

    new-instance v1, Lcom/yf/gattlib/http/afinal/FinalBitmap$1;

    invoke-direct {v1, p0}, Lcom/yf/gattlib/http/afinal/FinalBitmap$1;-><init>(Lcom/yf/gattlib/http/afinal/FinalBitmap;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->bitmapLoadAndDisplayExecutor:Ljava/util/concurrent/ExecutorService;

    .line 285
    new-instance v0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapProcess;

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v1, v1, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->downloader:Lcom/yf/gattlib/http/afinal/bitmap/download/Downloader;

    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    invoke-direct {v0, v1, v2}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapProcess;-><init>(Lcom/yf/gattlib/http/afinal/bitmap/download/Downloader;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;)V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mBitmapProcess:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapProcess;

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mInit:Z

    .line 290
    :cond_1
    return-object p0

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget v1, v1, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->memCacheSize:I

    const/high16 v2, 0x200000

    if-le v1, v2, :cond_3

    .line 259
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget v1, v1, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->memCacheSize:I

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->setMemCacheSize(I)V

    goto :goto_0

    .line 262
    :cond_3
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mContext:Landroid/content/Context;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    goto :goto_0
.end method

.method private processBitmap(Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mBitmapProcess:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapProcess;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mBitmapProcess:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapProcess;

    invoke-virtual {v0, p1, p2}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapProcess;->getBitmap(Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 475
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 548
    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;-><init>(Lcom/yf/gattlib/http/afinal/FinalBitmap;Lcom/yf/gattlib/http/afinal/FinalBitmap$1;)V

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;->execute([Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/core/AsyncTask;

    .line 549
    return-void
.end method

.method public clearCache(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 557
    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;-><init>(Lcom/yf/gattlib/http/afinal/FinalBitmap;Lcom/yf/gattlib/http/afinal/FinalBitmap$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;->execute([Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/core/AsyncTask;

    .line 559
    return-void
.end method

.method public clearDiskCache()V
    .locals 4

    .prologue
    .line 583
    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;-><init>(Lcom/yf/gattlib/http/afinal/FinalBitmap;Lcom/yf/gattlib/http/afinal/FinalBitmap$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;->execute([Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/core/AsyncTask;

    .line 584
    return-void
.end method

.method public clearDiskCache(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 592
    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;-><init>(Lcom/yf/gattlib/http/afinal/FinalBitmap;Lcom/yf/gattlib/http/afinal/FinalBitmap$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;->execute([Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/core/AsyncTask;

    .line 594
    return-void
.end method

.method public clearMemoryCache()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->clearMemoryCache()V

    .line 567
    :cond_0
    return-void
.end method

.method public clearMemoryCache(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->clearMemoryCache(Ljava/lang/String;)V

    .line 577
    :cond_0
    return-void
.end method

.method public closeCache()V
    .locals 4

    .prologue
    .line 602
    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;-><init>(Lcom/yf/gattlib/http/afinal/FinalBitmap;Lcom/yf/gattlib/http/afinal/FinalBitmap$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;->execute([Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/core/AsyncTask;

    .line 603
    return-void
.end method

.method public configBitmapLoadThreadSize(I)Lcom/yf/gattlib/http/afinal/FinalBitmap;
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iput p1, v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->poolSize:I

    .line 228
    :cond_0
    return-object p0
.end method

.method public configBitmapMaxHeight(I)Lcom/yf/gattlib/http/afinal/FinalBitmap;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setBitmapHeight(I)V

    .line 140
    return-object p0
.end method

.method public configBitmapMaxWidth(I)Lcom/yf/gattlib/http/afinal/FinalBitmap;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setBitmapWidth(I)V

    .line 150
    return-object p0
.end method

.method public configDiskCachePath(Ljava/lang/String;)Lcom/yf/gattlib/http/afinal/FinalBitmap;
    .locals 1

    .prologue
    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iput-object p1, v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->cachePath:Ljava/lang/String;

    .line 185
    :cond_0
    return-object p0
.end method

.method public configDiskCacheSize(I)Lcom/yf/gattlib/http/afinal/FinalBitmap;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iput p1, v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->diskCacheSize:I

    .line 217
    return-object p0
.end method

.method public configDisplayer(Lcom/yf/gattlib/http/afinal/bitmap/display/Displayer;)Lcom/yf/gattlib/http/afinal/FinalBitmap;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iput-object p1, v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->displayer:Lcom/yf/gattlib/http/afinal/bitmap/display/Displayer;

    .line 172
    return-object p0
.end method

.method public configDownlader(Lcom/yf/gattlib/http/afinal/bitmap/download/Downloader;)Lcom/yf/gattlib/http/afinal/FinalBitmap;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iput-object p1, v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->downloader:Lcom/yf/gattlib/http/afinal/bitmap/download/Downloader;

    .line 161
    return-object p0
.end method

.method public configLoadfailImage(I)Lcom/yf/gattlib/http/afinal/FinalBitmap;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setLoadfailBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    return-object p0
.end method

.method public configLoadfailImage(Landroid/graphics/Bitmap;)Lcom/yf/gattlib/http/afinal/FinalBitmap;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setLoadfailBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    return-object p0
.end method

.method public configLoadingImage(I)Lcom/yf/gattlib/http/afinal/FinalBitmap;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    return-object p0
.end method

.method public configLoadingImage(Landroid/graphics/Bitmap;)Lcom/yf/gattlib/http/afinal/FinalBitmap;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iget-object v0, v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    return-object p0
.end method

.method public configMemoryCachePercent(F)Lcom/yf/gattlib/http/afinal/FinalBitmap;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iput p1, v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->memCacheSizePercent:F

    .line 207
    return-object p0
.end method

.method public configMemoryCacheSize(I)Lcom/yf/gattlib/http/afinal/FinalBitmap;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iput p1, v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->memCacheSize:I

    .line 196
    return-object p0
.end method

.method public configRecycleImmediately(Z)Lcom/yf/gattlib/http/afinal/FinalBitmap;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    iput-boolean p1, v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->recycleImmediately:Z

    .line 239
    return-object p0
.end method

.method public display(Landroid/widget/ImageView;Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .locals 4

    .prologue
    .line 346
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->configMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    .line 349
    if-nez v0, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->getDisplayConfig()Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    move-result-object v0

    .line 351
    invoke-virtual {v0, p4}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setBitmapHeight(I)V

    .line 352
    invoke-virtual {v0, p3}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setBitmapWidth(I)V

    .line 353
    invoke-virtual {v0, p5}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 354
    invoke-virtual {v0, p6}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setLoadfailBitmap(Landroid/graphics/Bitmap;)V

    .line 355
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->configMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_0
    invoke-direct {p0, p1, p2, v0, p7}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->doDisplay(Landroid/widget/ImageView;Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;Z)V

    .line 362
    return-void
.end method

.method public display(Landroid/widget/ImageView;Ljava/lang/String;IIZ)V
    .locals 4

    .prologue
    .line 302
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->configMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    .line 304
    if-nez v0, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->getDisplayConfig()Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    move-result-object v0

    .line 306
    invoke-virtual {v0, p4}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setBitmapHeight(I)V

    .line 307
    invoke-virtual {v0, p3}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setBitmapWidth(I)V

    .line 308
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->configMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_0
    invoke-direct {p0, p1, p2, v0, p5}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->doDisplay(Landroid/widget/ImageView;Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;Z)V

    .line 312
    return-void
.end method

.method public display(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .locals 4

    .prologue
    .line 329
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->configMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    .line 331
    if-nez v0, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->getDisplayConfig()Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    move-result-object v0

    .line 333
    invoke-virtual {v0, p3}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 334
    invoke-virtual {v0, p4}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setLoadfailBitmap(Landroid/graphics/Bitmap;)V

    .line 335
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->configMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_0
    invoke-direct {p0, p1, p2, v0, p5}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->doDisplay(Landroid/widget/ImageView;Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;Z)V

    .line 341
    return-void
.end method

.method public display(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->configMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    .line 318
    if-nez v0, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->getDisplayConfig()Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    move-result-object v0

    .line 320
    invoke-virtual {v0, p3}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 321
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->configMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_0
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->doDisplay(Landroid/widget/ImageView;Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;Z)V

    .line 325
    return-void
.end method

.method public display(Landroid/widget/ImageView;Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;Z)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->doDisplay(Landroid/widget/ImageView;Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;Z)V

    .line 367
    return-void
.end method

.method public display(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->doDisplay(Landroid/widget/ImageView;Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;Z)V

    .line 298
    return-void
.end method

.method public exitTasksEarly(Z)V
    .locals 1

    .prologue
    .line 611
    iput-boolean p1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mExitTasksEarly:Z

    .line 612
    if-eqz p1, :cond_0

    .line 613
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->pauseWork(Z)V

    .line 614
    :cond_0
    return-void
.end method

.method public getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->getBitmapFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 486
    if-nez v0, :cond_0

    .line 487
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 489
    :cond_0
    return-object v0
.end method

.method public getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->getBitmapFromDiskCache(Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapFromDiskCache(Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mBitmapProcess:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapProcess;

    invoke-virtual {v0, p1, p2}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapProcess;->getFromDisk(Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->getBitmapFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->closeCache()V

    .line 542
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->setExitTasksEarly(Z)V

    .line 532
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->setExitTasksEarly(Z)V

    .line 525
    return-void
.end method

.method public pauseWork(Z)V
    .locals 2

    .prologue
    .line 623
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mPauseWorkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 624
    :try_start_0
    iput-boolean p1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mPauseWork:Z

    .line 625
    iget-boolean v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mPauseWork:Z

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mPauseWorkLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 628
    :cond_0
    monitor-exit v1

    .line 629
    return-void

    .line 628
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setExitTasksEarly(Z)V
    .locals 0

    .prologue
    .line 517
    iput-boolean p1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap;->mExitTasksEarly:Z

    .line 518
    return-void
.end method
