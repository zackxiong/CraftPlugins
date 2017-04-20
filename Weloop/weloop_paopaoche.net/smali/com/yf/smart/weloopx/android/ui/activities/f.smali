.class Lcom/yf/smart/weloopx/android/ui/activities/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;I)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const v1, 0x7f02014d

    const v2, 0x7f02014c

    const/4 v5, 0x1

    .line 406
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;Z)Z

    .line 407
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->a:I

    packed-switch v0, :pswitch_data_0

    .line 437
    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->f()V

    .line 438
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 439
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 440
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 441
    return-void

    .line 409
    :pswitch_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->m:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->g()Ljava/lang/String;

    move-result-object v0

    .line 410
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    .line 411
    :goto_1
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    iget-object v3, v3, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->m:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v3, v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->g(Ljava/lang/String;)V

    .line 413
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    iget-object v3, v3, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->r:Lcom/yf/smart/weloopx/data/a;

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    iget-object v4, v4, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->m:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v3, v4}, Lcom/yf/smart/weloopx/data/a;->a(Lcom/yf/gattlib/db/daliy/modes/AlarmModel;)V

    .line 414
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 415
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    iget-object v3, v3, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->m:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v3}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a(ZI)V

    goto :goto_0

    .line 410
    :cond_0
    const-string v0, "0"

    goto :goto_1

    :cond_1
    move v1, v2

    .line 414
    goto :goto_2

    .line 419
    :pswitch_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->n:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->g()Ljava/lang/String;

    move-result-object v0

    .line 420
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    .line 421
    :goto_3
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    iget-object v3, v3, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->n:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v3, v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->g(Ljava/lang/String;)V

    .line 422
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    iget-object v3, v3, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->r:Lcom/yf/smart/weloopx/data/a;

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    iget-object v4, v4, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->n:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v3, v4}, Lcom/yf/smart/weloopx/data/a;->b(Lcom/yf/gattlib/db/daliy/modes/AlarmModel;)V

    .line 423
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_4
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 424
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->e(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    iget-object v3, v3, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->n:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v3}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x3ea

    invoke-virtual {v1, v0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a(ZI)V

    goto/16 :goto_0

    .line 420
    :cond_2
    const-string v0, "0"

    goto :goto_3

    :cond_3
    move v1, v2

    .line 423
    goto :goto_4

    .line 428
    :pswitch_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->o:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->g()Ljava/lang/String;

    move-result-object v0

    .line 429
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1"

    .line 430
    :goto_5
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    iget-object v3, v3, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->o:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v3, v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->g(Ljava/lang/String;)V

    .line 431
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    iget-object v3, v3, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->r:Lcom/yf/smart/weloopx/data/a;

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    iget-object v4, v4, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->o:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v3, v4}, Lcom/yf/smart/weloopx/data/a;->c(Lcom/yf/gattlib/db/daliy/modes/AlarmModel;)V

    .line 432
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_6
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 433
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->f(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    iget-object v3, v3, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->o:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v3}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/f;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x3eb

    invoke-virtual {v1, v0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a(ZI)V

    goto/16 :goto_0

    .line 429
    :cond_4
    const-string v0, "0"

    goto :goto_5

    :cond_5
    move v1, v2

    .line 432
    goto :goto_6

    .line 407
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
