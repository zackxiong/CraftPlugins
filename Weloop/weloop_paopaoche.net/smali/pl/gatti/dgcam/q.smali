.class Lpl/gatti/dgcam/q;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lpl/gatti/dgcam/DgCamActivityForTommy2;


# direct methods
.method constructor <init>(Lpl/gatti/dgcam/DgCamActivityForTommy2;)V
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lpl/gatti/dgcam/q;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lpl/gatti/dgcam/q;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    iget-object v1, p0, Lpl/gatti/dgcam/q;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-static {v1}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->c(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Lcom/yf/smart/weloopx/g/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/g/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->a(Lpl/gatti/dgcam/DgCamActivityForTommy2;Ljava/lang/String;)Ljava/lang/String;

    .line 685
    iget-object v0, p0, Lpl/gatti/dgcam/q;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    new-instance v1, Lpl/gatti/dgcam/r;

    invoke-direct {v1, p0}, Lpl/gatti/dgcam/r;-><init>(Lpl/gatti/dgcam/q;)V

    invoke-virtual {v0, v1}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 701
    return-void
.end method
