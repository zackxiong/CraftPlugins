.class Lcom/yf/smart/weloopx/android/ui/activities/ch;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ch;->b:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ch;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 461
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ch;->b:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->A(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    const-string v0, "DfuActivity !mCanShowDialog"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ch;->b:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->B(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_3

    .line 466
    const-string v0, "DfuActivity"

    const-string v1, "mAlertDialog == null"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ch;->b:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ch;->b:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 469
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ch;->b:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->B(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 470
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ch;->b:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->B(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 471
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ch;->b:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->B(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 472
    const v0, 0x7f030053

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 474
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ch;->b:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    const v0, 0x7f0d01c6

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 476
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ch;->b:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    const v0, 0x7f0d01c8

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 477
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ch;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ch;->b:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->C(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ch;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ch;->b:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->D(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    const v0, 0x7f0d01c7

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ch;->b:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->B(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ch;->b:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->B(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 486
    const-string v0, "DfuActivity mAlertDialog != null"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
