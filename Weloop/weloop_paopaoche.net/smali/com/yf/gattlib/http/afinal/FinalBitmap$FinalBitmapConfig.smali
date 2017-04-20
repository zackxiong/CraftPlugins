.class Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/http/afinal/FinalBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinalBitmapConfig"
.end annotation


# instance fields
.field public cachePath:Ljava/lang/String;

.field public defaultDisplayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

.field public diskCacheSize:I

.field public displayer:Lcom/yf/gattlib/http/afinal/bitmap/display/Displayer;

.field public downloader:Lcom/yf/gattlib/http/afinal/bitmap/download/Downloader;

.field public memCacheSize:I

.field public memCacheSizePercent:F

.field public poolSize:I

.field public recycleImmediately:Z

.field final synthetic this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;


# direct methods
.method public constructor <init>(Lcom/yf/gattlib/http/afinal/FinalBitmap;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 871
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    const/4 v0, 0x3

    iput v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->poolSize:I

    .line 869
    iput-boolean v2, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->recycleImmediately:Z

    .line 872
    new-instance v0, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-direct {v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    .line 874
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setAnimation(Landroid/view/animation/Animation;)V

    .line 875
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v0, v2}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setAnimationType(I)V

    .line 879
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 881
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 882
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setBitmapHeight(I)V

    .line 883
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->setBitmapWidth(I)V

    .line 885
    return-void
.end method
