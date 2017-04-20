.class Lcom/yf/smart/weloopx/view/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/view/a;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/view/a;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/b;->a:Lcom/yf/smart/weloopx/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 55
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 56
    iget-object v1, p0, Lcom/yf/smart/weloopx/view/b;->a:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v1}, Lcom/yf/smart/weloopx/view/a;->a(Lcom/yf/smart/weloopx/view/a;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/yf/smart/weloopx/view/b;->a:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v2}, Lcom/yf/smart/weloopx/view/a;->c(Lcom/yf/smart/weloopx/view/a;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/yf/smart/weloopx/view/c;

    invoke-direct {v3, p0, v1, v0}, Lcom/yf/smart/weloopx/view/c;-><init>(Lcom/yf/smart/weloopx/view/b;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/b;->a:Lcom/yf/smart/weloopx/view/a;

    iget-object v0, v0, Lcom/yf/smart/weloopx/view/a;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 76
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
