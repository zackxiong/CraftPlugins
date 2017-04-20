.class Lpl/gatti/dgcam/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lpl/gatti/dgcam/DgCamActivity;


# direct methods
.method constructor <init>(Lpl/gatti/dgcam/DgCamActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lpl/gatti/dgcam/d;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lpl/gatti/dgcam/DgCamActivity;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Change fontOrBackground camera "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lpl/gatti/dgcam/d;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->a(Lpl/gatti/dgcam/DgCamActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lpl/gatti/dgcam/d;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->b(Lpl/gatti/dgcam/DgCamActivity;)Lpl/gatti/dgcam/z;

    move-result-object v0

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->b()V

    .line 119
    :cond_0
    iget-object v0, p0, Lpl/gatti/dgcam/d;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->d(Lpl/gatti/dgcam/DgCamActivity;)Lpl/gatti/dgcam/a;

    move-result-object v3

    iget-object v0, p0, Lpl/gatti/dgcam/d;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->c(Lpl/gatti/dgcam/DgCamActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lpl/gatti/dgcam/a;->b(I)V

    .line 122
    iget-object v0, p0, Lpl/gatti/dgcam/d;->a:Lpl/gatti/dgcam/DgCamActivity;

    iget-object v3, p0, Lpl/gatti/dgcam/d;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v3}, Lpl/gatti/dgcam/DgCamActivity;->c(Lpl/gatti/dgcam/DgCamActivity;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-static {v0, v1}, Lpl/gatti/dgcam/DgCamActivity;->a(Lpl/gatti/dgcam/DgCamActivity;Z)Z

    .line 123
    iget-object v0, p0, Lpl/gatti/dgcam/d;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->e(Lpl/gatti/dgcam/DgCamActivity;)V

    .line 124
    return-void

    :cond_1
    move v0, v2

    .line 119
    goto :goto_0

    :cond_2
    move v1, v2

    .line 122
    goto :goto_1
.end method
