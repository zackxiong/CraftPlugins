.class Lpl/gatti/dgcam/u;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ProGuard"


# instance fields
.field final synthetic a:Lpl/gatti/dgcam/DgCamActivityForTommy2;


# direct methods
.method constructor <init>(Lpl/gatti/dgcam/DgCamActivityForTommy2;)V
    .locals 0

    .prologue
    .line 787
    iput-object p1, p0, Lpl/gatti/dgcam/u;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 791
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 792
    iget-object v3, p0, Lpl/gatti/dgcam/u;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-static {v3}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->l(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 802
    :goto_0
    return v0

    .line 795
    :cond_0
    iget-object v3, p0, Lpl/gatti/dgcam/u;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v3, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->c(Lpl/gatti/dgcam/DgCamActivityForTommy2;Z)Z

    .line 796
    iget-object v0, p0, Lpl/gatti/dgcam/u;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    iget-object v2, p0, Lpl/gatti/dgcam/u;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-static {v2}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->k(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Z

    move-result v2

    invoke-static {v0, v2}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->d(Lpl/gatti/dgcam/DgCamActivityForTommy2;Z)V

    .line 797
    iget-object v0, p0, Lpl/gatti/dgcam/u;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->k(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 798
    new-instance v0, Lcom/yf/gattlib/client/b/u;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/u;-><init>()V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/u;->f()Lcom/yf/gattlib/client/b/e;

    :goto_1
    move v0, v1

    .line 802
    goto :goto_0

    .line 800
    :cond_2
    new-instance v0, Lcom/yf/gattlib/client/b/x;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/x;-><init>()V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/x;->f()Lcom/yf/gattlib/client/b/e;

    goto :goto_1
.end method
