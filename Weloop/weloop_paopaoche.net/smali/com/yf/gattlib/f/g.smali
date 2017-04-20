.class Lcom/yf/gattlib/f/g;
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
    .line 381
    iput-object p1, p0, Lcom/yf/gattlib/f/g;->a:Lcom/yf/gattlib/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 385
    const-string v0, "GattInstance test, Runnable SyncPhoneType"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 386
    iget-object v0, p0, Lcom/yf/gattlib/f/g;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0}, Lcom/yf/gattlib/f/b;->f(Lcom/yf/gattlib/f/b;)Lcom/yf/gattlib/client/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/gattlib/f/g;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0}, Lcom/yf/gattlib/f/b;->f(Lcom/yf/gattlib/f/b;)Lcom/yf/gattlib/client/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->j()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 388
    const-string v0, "GattInstance test, SyncPhoneType, same phone type"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 389
    iget-object v0, p0, Lcom/yf/gattlib/f/g;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0}, Lcom/yf/gattlib/f/b;->g(Lcom/yf/gattlib/f/b;)V

    .line 394
    :goto_0
    return-void

    .line 392
    :cond_0
    new-instance v0, Lcom/yf/gattlib/client/b/ba;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/ba;-><init>()V

    new-instance v1, Lcom/yf/gattlib/f/b$a;

    iget-object v2, p0, Lcom/yf/gattlib/f/g;->a:Lcom/yf/gattlib/f/b;

    const-string v3, "sync phone type"

    invoke-direct {v1, v2, v3}, Lcom/yf/gattlib/f/b$a;-><init>(Lcom/yf/gattlib/f/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/b/ba;->c(Lcom/yf/gattlib/client/b/a/c;)Lcom/yf/gattlib/client/b/e;

    goto :goto_0
.end method
