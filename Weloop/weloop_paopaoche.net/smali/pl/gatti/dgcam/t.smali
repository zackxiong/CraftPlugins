.class Lpl/gatti/dgcam/t;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lpl/gatti/dgcam/s;


# direct methods
.method constructor <init>(Lpl/gatti/dgcam/s;)V
    .locals 0

    .prologue
    .line 728
    iput-object p1, p0, Lpl/gatti/dgcam/t;->a:Lpl/gatti/dgcam/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DgCamActivityForTommy2 10\u5999\u53d1\u4e00\u4e2a\u7684\u76f8\u673a\u754c\u9762 isCameraOrVideo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lpl/gatti/dgcam/t;->a:Lpl/gatti/dgcam/s;

    iget-object v1, v1, Lpl/gatti/dgcam/s;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-static {v1}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->k(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lpl/gatti/dgcam/t;->a:Lpl/gatti/dgcam/s;

    iget-object v0, v0, Lpl/gatti/dgcam/s;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->k(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    new-instance v0, Lcom/yf/gattlib/client/b/u;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/u;-><init>()V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/u;->f()Lcom/yf/gattlib/client/b/e;

    .line 738
    :goto_0
    return-void

    .line 735
    :cond_0
    new-instance v0, Lcom/yf/gattlib/client/b/x;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/x;-><init>()V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/x;->f()Lcom/yf/gattlib/client/b/e;

    goto :goto_0
.end method
