.class final Lcom/tencent/b/a/ao;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/tencent/b/a/x;


# direct methods
.method constructor <init>(Lcom/tencent/b/a/x;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/b/a/ao;->a:Lcom/tencent/b/a/x;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/b/a/ao;->a:Lcom/tencent/b/a/x;

    invoke-static {v0}, Lcom/tencent/b/a/x;->a(Lcom/tencent/b/a/x;)Lcom/tencent/b/a/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/b/a/ao;->a:Lcom/tencent/b/a/x;

    invoke-static {v0}, Lcom/tencent/b/a/x;->a(Lcom/tencent/b/a/x;)Lcom/tencent/b/a/b/f;

    move-result-object v0

    new-instance v1, Lcom/tencent/b/a/f;

    invoke-direct {v1, p0}, Lcom/tencent/b/a/f;-><init>(Lcom/tencent/b/a/ao;)V

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/b/f;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
