.class Lcom/yf/smart/weloopx/android/ui/activities/ae;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 0

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ae;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ae;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->I(Lcom/yf/smart/weloopx/android/ui/activities/z;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    :goto_0
    return-void

    .line 1010
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1012
    packed-switch p2, :pswitch_data_0

    .line 1038
    :goto_1
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 1039
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ae;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->J(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/RadioGroup$OnCheckedChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    goto :goto_0

    .line 1015
    :pswitch_0
    invoke-static {}, Lcom/yf/smart/weloopx/c/w;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1016
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ae;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1017
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ae;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1019
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "pl.gatti.dgcam.ACTION_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1020
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1021
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/a/a;->e(Landroid/content/Intent;)V

    goto :goto_1

    .line 1025
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ae;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1026
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ae;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1029
    :pswitch_2
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1030
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ae;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->G(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    goto :goto_1

    .line 1032
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ae;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1033
    const-string v1, "IsWatch"

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ae;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->H(Lcom/yf/smart/weloopx/android/ui/activities/z;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1034
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ae;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1012
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d01ee
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
