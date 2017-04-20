.class Lcom/yf/smart/weloopx/view/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/yf/smart/weloopx/view/b;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/view/b;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/c;->c:Lcom/yf/smart/weloopx/view/b;

    iput-object p2, p0, Lcom/yf/smart/weloopx/view/c;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/yf/smart/weloopx/view/c;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 59
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/c;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/yf/smart/weloopx/view/c;->c:Lcom/yf/smart/weloopx/view/b;

    iget-object v1, v1, Lcom/yf/smart/weloopx/view/b;->a:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v1}, Lcom/yf/smart/weloopx/view/a;->a(Lcom/yf/smart/weloopx/view/a;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/view/c;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/c;->c:Lcom/yf/smart/weloopx/view/b;

    iget-object v0, v0, Lcom/yf/smart/weloopx/view/b;->a:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/view/a;->b(Lcom/yf/smart/weloopx/view/a;)Lcom/yf/smart/weloopx/view/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/view/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/view/CropImageView;->a(Landroid/graphics/Bitmap;Z)V

    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/c;->c:Lcom/yf/smart/weloopx/view/b;

    iget-object v0, v0, Lcom/yf/smart/weloopx/view/b;->a:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/view/a;->a(Lcom/yf/smart/weloopx/view/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 62
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/c;->c:Lcom/yf/smart/weloopx/view/b;

    iget-object v0, v0, Lcom/yf/smart/weloopx/view/b;->a:Lcom/yf/smart/weloopx/view/a;

    iget-object v1, p0, Lcom/yf/smart/weloopx/view/c;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/view/a;->a(Lcom/yf/smart/weloopx/view/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/c;->c:Lcom/yf/smart/weloopx/view/b;

    iget-object v0, v0, Lcom/yf/smart/weloopx/view/b;->a:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/view/a;->b(Lcom/yf/smart/weloopx/view/a;)Lcom/yf/smart/weloopx/view/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/c;->c:Lcom/yf/smart/weloopx/view/b;

    iget-object v0, v0, Lcom/yf/smart/weloopx/view/b;->a:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/view/a;->b(Lcom/yf/smart/weloopx/view/a;)Lcom/yf/smart/weloopx/view/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/yf/smart/weloopx/view/CropImageView;->a(ZZ)V

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/c;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 68
    return-void
.end method
