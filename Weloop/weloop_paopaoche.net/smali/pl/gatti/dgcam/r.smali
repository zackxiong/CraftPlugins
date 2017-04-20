.class Lpl/gatti/dgcam/r;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lpl/gatti/dgcam/q;


# direct methods
.method constructor <init>(Lpl/gatti/dgcam/q;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lpl/gatti/dgcam/r;->a:Lpl/gatti/dgcam/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 689
    iget-object v0, p0, Lpl/gatti/dgcam/r;->a:Lpl/gatti/dgcam/q;

    iget-object v0, v0, Lpl/gatti/dgcam/q;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->h(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lpl/gatti/dgcam/r;->a:Lpl/gatti/dgcam/q;

    iget-object v1, v1, Lpl/gatti/dgcam/q;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-static {v1}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->h(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 693
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    const-string v0, "DgCamActivityForTommy2 \u7f29\u7565\u56fe\u6587\u4ef6\u5b58\u5728"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lpl/gatti/dgcam/r;->a:Lpl/gatti/dgcam/q;

    iget-object v0, v0, Lpl/gatti/dgcam/q;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-static {v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->j(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Lcom/b/a/a;

    move-result-object v0

    iget-object v1, p0, Lpl/gatti/dgcam/r;->a:Lpl/gatti/dgcam/q;

    iget-object v1, v1, Lpl/gatti/dgcam/q;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-static {v1}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->i(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lpl/gatti/dgcam/r;->a:Lpl/gatti/dgcam/q;

    iget-object v2, v2, Lpl/gatti/dgcam/q;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-static {v2}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->h(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method
