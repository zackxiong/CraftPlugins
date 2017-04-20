.class Lcom/yf/smart/weloopx/c/ah;
.super Ljava/util/TimerTask;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/c/x;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/c/x;)V
    .locals 0

    .prologue
    .line 793
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/ah;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ah;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v0}, Lcom/yf/smart/weloopx/c/x;->k(Lcom/yf/smart/weloopx/c/x;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/ah;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->j(Lcom/yf/smart/weloopx/c/x;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 797
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ah;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v0}, Lcom/yf/smart/weloopx/c/x;->k(Lcom/yf/smart/weloopx/c/x;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/ah;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->j(Lcom/yf/smart/weloopx/c/x;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 799
    return-void
.end method
