.class Lcom/yf/gattlib/f/h;
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
    .line 397
    iput-object p1, p0, Lcom/yf/gattlib/f/h;->a:Lcom/yf/gattlib/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 401
    const-string v0, "GattInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reTryNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/f/h;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v2}, Lcom/yf/gattlib/f/b;->h(Lcom/yf/gattlib/f/b;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GattInstance test, Runnable SyncTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/f/h;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v1}, Lcom/yf/gattlib/f/b;->h(Lcom/yf/gattlib/f/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 403
    iget-object v0, p0, Lcom/yf/gattlib/f/h;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0}, Lcom/yf/gattlib/f/b;->i(Lcom/yf/gattlib/f/b;)I

    .line 404
    iget-object v0, p0, Lcom/yf/gattlib/f/h;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0}, Lcom/yf/gattlib/f/b;->j(Lcom/yf/gattlib/f/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    const-string v0, "GattInstance \u65f6\u95f4\u5df2\u540c\u6b65\uff0c\u4e0d\u7528\u518d\u540c\u6b65\u65f6\u95f4"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 406
    const-string v0, " test, SyncTime, same time"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lcom/yf/gattlib/f/h;->a:Lcom/yf/gattlib/f/b;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/yf/gattlib/f/b;->b(Lcom/yf/gattlib/f/b;J)V

    .line 425
    :goto_0
    return-void

    .line 410
    :cond_0
    new-instance v0, Lcom/yf/gattlib/client/b/bb;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/bb;-><init>()V

    new-instance v1, Lcom/yf/gattlib/f/i;

    const-string v2, "sync time"

    invoke-direct {v1, p0, v2}, Lcom/yf/gattlib/f/i;-><init>(Lcom/yf/gattlib/f/h;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/b/bb;->c(Lcom/yf/gattlib/client/b/a/c;)Lcom/yf/gattlib/client/b/e;

    goto :goto_0
.end method
