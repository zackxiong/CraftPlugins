.class Lcom/yf/gattlib/h/i;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/gattlib/h/h;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/h/h;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/yf/gattlib/h/i;->a:Lcom/yf/gattlib/h/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yf/gattlib/h/i;->a:Lcom/yf/gattlib/h/h;

    invoke-static {v0}, Lcom/yf/gattlib/h/h;->a(Lcom/yf/gattlib/h/h;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->k()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/h/i;->a:Lcom/yf/gattlib/h/h;

    invoke-static {v1}, Lcom/yf/gattlib/h/h;->a(Lcom/yf/gattlib/h/h;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/h/i;->a:Lcom/yf/gattlib/h/h;

    new-instance v1, Lcom/yf/gattlib/h/j;

    invoke-direct {v1, p0, p2}, Lcom/yf/gattlib/h/j;-><init>(Lcom/yf/gattlib/h/i;Landroid/content/Intent;)V

    invoke-static {v0, v1}, Lcom/yf/gattlib/h/h;->a(Lcom/yf/gattlib/h/h;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 193
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->k()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/h/i;->a:Lcom/yf/gattlib/h/h;

    invoke-static {v1}, Lcom/yf/gattlib/h/h;->a(Lcom/yf/gattlib/h/h;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    return-void
.end method
