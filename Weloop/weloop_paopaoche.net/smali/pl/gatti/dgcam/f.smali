.class Lpl/gatti/dgcam/f;
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
    .line 135
    iput-object p1, p0, Lpl/gatti/dgcam/f;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    iget-object v3, p0, Lpl/gatti/dgcam/f;->a:Lpl/gatti/dgcam/DgCamActivity;

    iget-object v0, p0, Lpl/gatti/dgcam/f;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->f(Lpl/gatti/dgcam/DgCamActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lpl/gatti/dgcam/DgCamActivity;->b(Lpl/gatti/dgcam/DgCamActivity;Z)Z

    .line 140
    iget-object v0, p0, Lpl/gatti/dgcam/f;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->d(Lpl/gatti/dgcam/DgCamActivity;)Lpl/gatti/dgcam/a;

    move-result-object v3

    iget-object v0, p0, Lpl/gatti/dgcam/f;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->f(Lpl/gatti/dgcam/DgCamActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "on"

    :goto_1
    invoke-virtual {v3, v0}, Lpl/gatti/dgcam/a;->a(Ljava/lang/String;)Z

    move-result v0

    .line 143
    if-nez v0, :cond_3

    .line 144
    iget-object v0, p0, Lpl/gatti/dgcam/f;->a:Lpl/gatti/dgcam/DgCamActivity;

    iget-object v3, p0, Lpl/gatti/dgcam/f;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v3}, Lpl/gatti/dgcam/DgCamActivity;->f(Lpl/gatti/dgcam/DgCamActivity;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-static {v0, v1}, Lpl/gatti/dgcam/DgCamActivity;->b(Lpl/gatti/dgcam/DgCamActivity;Z)Z

    .line 152
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 139
    goto :goto_0

    .line 140
    :cond_1
    const-string v0, "off"

    goto :goto_1

    :cond_2
    move v1, v2

    .line 144
    goto :goto_2

    .line 147
    :cond_3
    iget-object v0, p0, Lpl/gatti/dgcam/f;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->f(Lpl/gatti/dgcam/DgCamActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    iget-object v0, p0, Lpl/gatti/dgcam/f;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->g(Lpl/gatti/dgcam/DgCamActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f07008c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    .line 150
    :cond_4
    iget-object v0, p0, Lpl/gatti/dgcam/f;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->g(Lpl/gatti/dgcam/DgCamActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070194

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_3
.end method
