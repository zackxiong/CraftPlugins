.class Lpl/gatti/dgcam/p;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lpl/gatti/dgcam/DgCamActivityForTommy2;


# direct methods
.method constructor <init>(Lpl/gatti/dgcam/DgCamActivityForTommy2;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lpl/gatti/dgcam/p;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 509
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 519
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 511
    :pswitch_0
    iget-object v0, p0, Lpl/gatti/dgcam/p;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->f(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Lpl/gatti/dgcam/a;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lpl/gatti/dgcam/a;->a(Ljava/lang/String;)Z

    .line 513
    iget-object v0, p0, Lpl/gatti/dgcam/p;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->g(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Lpl/gatti/dgcam/ac;

    move-result-object v0

    invoke-virtual {v0}, Lpl/gatti/dgcam/ac;->a()V

    goto :goto_0

    .line 509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
