.class Lpl/gatti/dgcam/v;
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
    .line 806
    iput-object p1, p0, Lpl/gatti/dgcam/v;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lpl/gatti/dgcam/v;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    new-instance v1, Lpl/gatti/dgcam/w;

    invoke-direct {v1, p0}, Lpl/gatti/dgcam/w;-><init>(Lpl/gatti/dgcam/v;)V

    invoke-virtual {v0, v1}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 816
    return-void
.end method
