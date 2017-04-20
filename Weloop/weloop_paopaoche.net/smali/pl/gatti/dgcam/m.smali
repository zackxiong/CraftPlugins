.class Lpl/gatti/dgcam/m;
.super Ljava/util/TimerTask;
.source "ProGuard"


# instance fields
.field final synthetic a:Lpl/gatti/dgcam/DgCamActivityForTommy2;


# direct methods
.method constructor <init>(Lpl/gatti/dgcam/DgCamActivityForTommy2;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lpl/gatti/dgcam/m;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lpl/gatti/dgcam/m;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    new-instance v1, Lpl/gatti/dgcam/n;

    invoke-direct {v1, p0}, Lpl/gatti/dgcam/n;-><init>(Lpl/gatti/dgcam/m;)V

    invoke-virtual {v0, v1}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 339
    return-void
.end method
