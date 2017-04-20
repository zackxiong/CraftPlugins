.class Lpl/gatti/dgcam/s;
.super Ljava/util/TimerTask;
.source "ProGuard"


# instance fields
.field final synthetic a:Lpl/gatti/dgcam/DgCamActivityForTommy2;


# direct methods
.method constructor <init>(Lpl/gatti/dgcam/DgCamActivityForTommy2;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lpl/gatti/dgcam/s;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lpl/gatti/dgcam/s;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    new-instance v1, Lpl/gatti/dgcam/t;

    invoke-direct {v1, p0}, Lpl/gatti/dgcam/t;-><init>(Lpl/gatti/dgcam/s;)V

    invoke-virtual {v0, v1}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 740
    return-void
.end method
