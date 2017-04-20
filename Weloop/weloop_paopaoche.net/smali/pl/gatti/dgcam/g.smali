.class Lpl/gatti/dgcam/g;
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
    .line 155
    iput-object p1, p0, Lpl/gatti/dgcam/g;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lpl/gatti/dgcam/g;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->h(Lpl/gatti/dgcam/DgCamActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Lcom/yf/gattlib/client/b/v;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/v;-><init>()V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/v;->f()Lcom/yf/gattlib/client/b/e;

    .line 161
    iget-object v0, p0, Lpl/gatti/dgcam/g;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->i(Lpl/gatti/dgcam/DgCamActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lpl/gatti/dgcam/g;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->j(Lpl/gatti/dgcam/DgCamActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f07025e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 163
    iget-object v0, p0, Lpl/gatti/dgcam/g;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->l(Lpl/gatti/dgcam/DgCamActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lpl/gatti/dgcam/g;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v1}, Lpl/gatti/dgcam/DgCamActivity;->k(Lpl/gatti/dgcam/DgCamActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :goto_0
    iget-object v1, p0, Lpl/gatti/dgcam/g;->a:Lpl/gatti/dgcam/DgCamActivity;

    iget-object v0, p0, Lpl/gatti/dgcam/g;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->h(Lpl/gatti/dgcam/DgCamActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lpl/gatti/dgcam/DgCamActivity;->c(Lpl/gatti/dgcam/DgCamActivity;Z)Z

    .line 171
    return-void

    .line 166
    :cond_0
    new-instance v0, Lcom/yf/gattlib/client/b/y;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/y;-><init>()V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/y;->f()Lcom/yf/gattlib/client/b/e;

    .line 167
    iget-object v0, p0, Lpl/gatti/dgcam/g;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->j(Lpl/gatti/dgcam/DgCamActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0702bd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 168
    iget-object v0, p0, Lpl/gatti/dgcam/g;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->l(Lpl/gatti/dgcam/DgCamActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0\'00\'\'"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
