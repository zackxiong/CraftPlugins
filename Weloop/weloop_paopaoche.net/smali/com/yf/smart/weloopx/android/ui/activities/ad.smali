.class Lcom/yf/smart/weloopx/android/ui/activities/ad;
.super Lcom/yf/smart/weloopx/android/ui/activities/z$c;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 1

    .prologue
    .line 966
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ad;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z$c;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/smart/weloopx/android/ui/activities/aa;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 969
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ad;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ad;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v2, 0x7f0700c5

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->h(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->h(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V

    .line 1000
    :goto_0
    return-void

    .line 974
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 977
    :pswitch_0
    invoke-static {}, Lcom/yf/smart/weloopx/c/w;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 978
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ad;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 979
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ad;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 981
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "pl.gatti.dgcam.ACTION_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 982
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 983
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/a/a;->e(Landroid/content/Intent;)V

    goto :goto_0

    .line 987
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ad;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 988
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ad;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 991
    :pswitch_2
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 992
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ad;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->G(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    goto :goto_0

    .line 994
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ad;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 995
    const-string v1, "IsWatch"

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ad;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->H(Lcom/yf/smart/weloopx/android/ui/activities/z;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 996
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ad;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 974
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d01ee
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
