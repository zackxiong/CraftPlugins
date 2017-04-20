.class Lcom/yf/gattlib/f/m;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/f/b;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/f/b;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/yf/gattlib/f/m;->a:Lcom/yf/gattlib/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 485
    const-string v0, "GattInitCompleted "

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 486
    iget-object v0, p0, Lcom/yf/gattlib/f/m;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0}, Lcom/yf/gattlib/f/b;->l(Lcom/yf/gattlib/f/b;)Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/yf/gattlib/f/m;->a:Lcom/yf/gattlib/f/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yf/gattlib/f/b;->h(Lcom/yf/gattlib/f/b;Z)Z

    .line 489
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.yf.gattlib.intent.action.ACTION_GATT_INIT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/a/a;->b(Landroid/content/Intent;)V

    .line 494
    :goto_0
    return-void

    .line 492
    :cond_0
    const-string v0, "GattInitCompleted disconnected"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
