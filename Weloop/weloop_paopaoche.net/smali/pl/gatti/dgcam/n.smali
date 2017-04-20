.class Lpl/gatti/dgcam/n;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lpl/gatti/dgcam/m;


# direct methods
.method constructor <init>(Lpl/gatti/dgcam/m;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lpl/gatti/dgcam/n;->a:Lpl/gatti/dgcam/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lpl/gatti/dgcam/n;->a:Lpl/gatti/dgcam/m;

    iget-object v0, v0, Lpl/gatti/dgcam/m;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->a(Lpl/gatti/dgcam/DgCamActivityForTommy2;)I

    .line 336
    iget-object v0, p0, Lpl/gatti/dgcam/n;->a:Lpl/gatti/dgcam/m;

    iget-object v0, v0, Lpl/gatti/dgcam/m;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->d(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lpl/gatti/dgcam/n;->a:Lpl/gatti/dgcam/m;

    iget-object v1, v1, Lpl/gatti/dgcam/m;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-static {v1}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->c(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Lcom/yf/smart/weloopx/g/d;

    move-result-object v1

    iget-object v2, p0, Lpl/gatti/dgcam/n;->a:Lpl/gatti/dgcam/m;

    iget-object v2, v2, Lpl/gatti/dgcam/m;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-static {v2}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b(Lpl/gatti/dgcam/DgCamActivityForTommy2;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/g/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    return-void
.end method
