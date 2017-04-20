.class Lpl/gatti/dgcam/x;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/d/b$a;


# instance fields
.field final synthetic a:Lpl/gatti/dgcam/DgCamActivityForTommy2;


# direct methods
.method constructor <init>(Lpl/gatti/dgcam/DgCamActivityForTommy2;)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Lpl/gatti/dgcam/x;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 836
    const-string v0, "DgCamActivityForTommy2 listener\u4e2donGattInitCompleted\u65b9\u6cd5"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 837
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DgCamActivityForTommy2 \u91cd\u8fdelistener\u4e2donConnectStateChanged\u65b9\u6cd5isConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 826
    if-nez p2, :cond_1

    .line 827
    iget-object v0, p0, Lpl/gatti/dgcam/x;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->l(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lpl/gatti/dgcam/x;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    iget-object v1, p0, Lpl/gatti/dgcam/x;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    const v2, 0x7f070070

    invoke-virtual {v1, v2}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b(Lpl/gatti/dgcam/DgCamActivityForTommy2;Ljava/lang/String;)V

    .line 830
    :cond_0
    iget-object v0, p0, Lpl/gatti/dgcam/x;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-virtual {v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->finish()V

    .line 832
    :cond_1
    return-void
.end method
