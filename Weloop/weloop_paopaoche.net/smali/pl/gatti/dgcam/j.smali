.class Lpl/gatti/dgcam/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lpl/gatti/dgcam/DgCamActivity;


# direct methods
.method constructor <init>(Lpl/gatti/dgcam/DgCamActivity;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lpl/gatti/dgcam/j;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lpl/gatti/dgcam/j;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->q(Lpl/gatti/dgcam/DgCamActivity;)V

    .line 301
    iget-object v0, p0, Lpl/gatti/dgcam/j;->a:Lpl/gatti/dgcam/DgCamActivity;

    iget-object v0, v0, Lpl/gatti/dgcam/DgCamActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 302
    iget-object v0, p0, Lpl/gatti/dgcam/j;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->i(Lpl/gatti/dgcam/DgCamActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lpl/gatti/dgcam/j;->a:Lpl/gatti/dgcam/DgCamActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lpl/gatti/dgcam/DgCamActivity;->d(Lpl/gatti/dgcam/DgCamActivity;Z)Z

    .line 304
    return-void
.end method
