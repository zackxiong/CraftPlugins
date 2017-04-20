.class Lpl/gatti/dgcam/w;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lpl/gatti/dgcam/v;


# direct methods
.method constructor <init>(Lpl/gatti/dgcam/v;)V
    .locals 0

    .prologue
    .line 809
    iput-object p1, p0, Lpl/gatti/dgcam/w;->a:Lpl/gatti/dgcam/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 812
    iget-object v0, p0, Lpl/gatti/dgcam/w;->a:Lpl/gatti/dgcam/v;

    iget-object v0, v0, Lpl/gatti/dgcam/v;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->m(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 813
    return-void
.end method
