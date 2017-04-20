.class Lcom/yf/smart/weloopx/android/ui/activities/gr;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 948
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gr;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/gr;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 951
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gr;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iget-boolean v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->h:Z

    if-nez v0, :cond_1

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " !mCanShowDialog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gr;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->I(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_3

    .line 956
    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mAlertDialog == null"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gr;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/gr;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 959
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gr;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->I(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 960
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gr;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->I(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 961
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gr;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->I(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 962
    const v0, 0x7f030053

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 964
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/gr;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    const v0, 0x7f0d01c6

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 966
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/gr;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    const v0, 0x7f0d01c8

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 967
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gr;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 968
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gr;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->J(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/gr;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 970
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gr;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->K(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 971
    const v0, 0x7f0d01c7

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 974
    :cond_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gr;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 975
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gr;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->J(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    :cond_4
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gr;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->I(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gr;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->I(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAlertDialog != null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
