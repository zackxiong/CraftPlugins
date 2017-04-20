.class Lcom/yf/smart/weloopx/android/ui/activities/gx;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;I)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f070108

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 358
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->g(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 359
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->h(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->i(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->j(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->k(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Lcom/todddavies/components/progressbar/ProgressWheel2;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/todddavies/components/progressbar/ProgressWheel2;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->l(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->a:I

    packed-switch v0, :pswitch_data_0

    .line 430
    :goto_0
    return-void

    .line 366
    :pswitch_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->m(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0700d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 367
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->m(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->l(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 369
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->l(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 370
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->n(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->n(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b:Lb/a/a/a/a/a;

    invoke-virtual {v1}, Lb/a/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->o(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 375
    :pswitch_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->m(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->i(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->i(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 378
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->k(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Lcom/todddavies/components/progressbar/ProgressWheel2;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/todddavies/components/progressbar/ProgressWheel2;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->l(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070138

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 380
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->n(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b:Lb/a/a/a/a/a;

    invoke-virtual {v1}, Lb/a/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->o(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 383
    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toBeNewVersionView"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 387
    :pswitch_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->m(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0702ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 388
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->m(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->l(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->n(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->h(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->o(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 396
    :pswitch_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->m(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->m(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f07019e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 398
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->m(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->g(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 400
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->l(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 401
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->n(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->n(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b:Lb/a/a/a/a/a;

    invoke-virtual {v1}, Lb/a/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->o(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 407
    :pswitch_4
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->m(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->j(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->k(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Lcom/todddavies/components/progressbar/ProgressWheel2;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/todddavies/components/progressbar/ProgressWheel2;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->l(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->l(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f07008a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 412
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->n(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->g(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 414
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->o(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 418
    :pswitch_5
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->m(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->i(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->i(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 421
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->k(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Lcom/todddavies/components/progressbar/ProgressWheel2;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/todddavies/components/progressbar/ProgressWheel2;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->l(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0702ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 423
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->n(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b:Lb/a/a/a/a/a;

    invoke-virtual {v1}, Lb/a/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gx;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->o(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 364
    :pswitch_data_0
    .packed-switch 0xd80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
