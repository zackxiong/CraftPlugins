.class Lpl/gatti/dgcam/o;
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
    .line 353
    iput-object p1, p0, Lpl/gatti/dgcam/o;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lpl/gatti/dgcam/o;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->a(Lpl/gatti/dgcam/DgCamActivityForTommy2;Z)Z

    .line 358
    iget-object v0, p0, Lpl/gatti/dgcam/o;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->e(Lpl/gatti/dgcam/DgCamActivityForTommy2;)V

    .line 359
    iget-object v0, p0, Lpl/gatti/dgcam/o;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    iget-object v0, v0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 360
    iget-object v0, p0, Lpl/gatti/dgcam/o;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b(Lpl/gatti/dgcam/DgCamActivityForTommy2;Z)Z

    .line 361
    return-void
.end method
