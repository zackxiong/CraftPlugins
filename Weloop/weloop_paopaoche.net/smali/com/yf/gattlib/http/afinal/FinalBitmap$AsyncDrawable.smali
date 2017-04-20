.class Lcom/yf/gattlib/http/afinal/FinalBitmap$AsyncDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/http/afinal/FinalBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncDrawable"
.end annotation


# instance fields
.field private final bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;)V
    .locals 1

    .prologue
    .line 676
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 677
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$AsyncDrawable;->bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;

    .line 679
    return-void
.end method


# virtual methods
.method public getBitmapWorkerTask()Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$AsyncDrawable;->bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;

    return-object v0
.end method
