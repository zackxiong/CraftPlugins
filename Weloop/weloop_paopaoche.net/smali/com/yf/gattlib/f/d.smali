.class Lcom/yf/gattlib/f/d;
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
    .line 332
    iput-object p1, p0, Lcom/yf/gattlib/f/d;->a:Lcom/yf/gattlib/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 335
    const-string v0, "GattInstance Runnable GetDeviceState"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/yf/gattlib/f/d;->a:Lcom/yf/gattlib/f/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    const-string v0, "GetDeviceState 1.30"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/yf/gattlib/f/d;->a:Lcom/yf/gattlib/f/b;

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/yf/gattlib/f/b;->b(Lcom/yf/gattlib/f/b;J)V

    .line 369
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/f/d;->a:Lcom/yf/gattlib/f/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    const-string v0, "GetDeviceState old watch"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/yf/gattlib/f/d;->a:Lcom/yf/gattlib/f/b;

    const-wide/16 v2, 0x32

    invoke-static {v0, v2, v3}, Lcom/yf/gattlib/f/b;->b(Lcom/yf/gattlib/f/b;J)V

    goto :goto_0

    .line 348
    :cond_1
    new-instance v0, Lcom/yf/gattlib/client/b/n;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/n;-><init>()V

    new-instance v1, Lcom/yf/gattlib/f/e;

    const-string v2, "get device state"

    invoke-direct {v1, p0, v2}, Lcom/yf/gattlib/f/e;-><init>(Lcom/yf/gattlib/f/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/b/n;->c(Lcom/yf/gattlib/client/b/a/c;)Lcom/yf/gattlib/client/b/e;

    goto :goto_0
.end method
