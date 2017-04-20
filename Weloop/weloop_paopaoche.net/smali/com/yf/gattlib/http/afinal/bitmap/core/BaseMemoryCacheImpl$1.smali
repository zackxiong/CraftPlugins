.class Lcom/yf/gattlib/http/afinal/bitmap/core/BaseMemoryCacheImpl$1;
.super Lcom/yf/gattlib/http/afinal/bitmap/core/LruMemoryCache;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yf/gattlib/http/afinal/bitmap/core/LruMemoryCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yf/gattlib/http/afinal/bitmap/core/BaseMemoryCacheImpl;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/http/afinal/bitmap/core/BaseMemoryCacheImpl;I)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BaseMemoryCacheImpl$1;->this$0:Lcom/yf/gattlib/http/afinal/bitmap/core/BaseMemoryCacheImpl;

    invoke-direct {p0, p2}, Lcom/yf/gattlib/http/afinal/bitmap/core/LruMemoryCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 27
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/yf/gattlib/http/afinal/bitmap/core/BaseMemoryCacheImpl$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 1

    .prologue
    .line 30
    invoke-static {p2}, Lcom/yf/gattlib/http/afinal/utils/Utils;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
