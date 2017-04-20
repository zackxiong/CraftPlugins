.class Lpl/gatti/dgcam/i;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic a:Lpl/gatti/dgcam/DgCamActivity;


# direct methods
.method constructor <init>(Lpl/gatti/dgcam/DgCamActivity;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lpl/gatti/dgcam/i;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 269
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 270
    iget-object v0, p0, Lpl/gatti/dgcam/i;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->m(Lpl/gatti/dgcam/DgCamActivity;)I

    .line 271
    iget-object v0, p0, Lpl/gatti/dgcam/i;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->n(Lpl/gatti/dgcam/DgCamActivity;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    .line 272
    iget-object v1, p0, Lpl/gatti/dgcam/i;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v1}, Lpl/gatti/dgcam/DgCamActivity;->n(Lpl/gatti/dgcam/DgCamActivity;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x3c

    .line 274
    if-ge v0, v5, :cond_0

    .line 275
    iget-object v2, p0, Lpl/gatti/dgcam/i;->a:Lpl/gatti/dgcam/DgCamActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lpl/gatti/dgcam/DgCamActivity;->a(Lpl/gatti/dgcam/DgCamActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    :goto_0
    if-ge v1, v5, :cond_1

    .line 280
    iget-object v0, p0, Lpl/gatti/dgcam/i;->a:Lpl/gatti/dgcam/DgCamActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lpl/gatti/dgcam/DgCamActivity;->b(Lpl/gatti/dgcam/DgCamActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    :goto_1
    iget-object v0, p0, Lpl/gatti/dgcam/i;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivity;->l(Lpl/gatti/dgcam/DgCamActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lpl/gatti/dgcam/i;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v2}, Lpl/gatti/dgcam/DgCamActivity;->o(Lpl/gatti/dgcam/DgCamActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lpl/gatti/dgcam/i;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v2}, Lpl/gatti/dgcam/DgCamActivity;->p(Lpl/gatti/dgcam/DgCamActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    return-void

    .line 277
    :cond_0
    iget-object v2, p0, Lpl/gatti/dgcam/i;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lpl/gatti/dgcam/DgCamActivity;->a(Lpl/gatti/dgcam/DgCamActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lpl/gatti/dgcam/i;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lpl/gatti/dgcam/DgCamActivity;->b(Lpl/gatti/dgcam/DgCamActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method
