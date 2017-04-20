.class Lcom/yf/gattlib/client/b/bm;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/client/b/bl;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/client/b/bl;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yf/gattlib/client/b/bm;->a:Lcom/yf/gattlib/client/b/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/gattlib/client/b/bl;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mTimeoutChecker transfer timeout!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 67
    const-string v0, "ota: mTimeoutChecker, timeout"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 68
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bm;->a:Lcom/yf/gattlib/client/b/bl;

    invoke-static {v0}, Lcom/yf/gattlib/client/b/bl;->a(Lcom/yf/gattlib/client/b/bl;)V

    .line 70
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bm;->a:Lcom/yf/gattlib/client/b/bl;

    invoke-static {v0}, Lcom/yf/gattlib/client/b/bl;->b(Lcom/yf/gattlib/client/b/bl;)Z

    .line 71
    const-string v0, "ota: mTimeoutChecker, mRxStream == null is "

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 80
    :goto_0
    return-void

    .line 76
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bm;->a:Lcom/yf/gattlib/client/b/bl;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/bl;->b()V
    :try_end_0
    .catch Lcom/yf/gattlib/e/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
