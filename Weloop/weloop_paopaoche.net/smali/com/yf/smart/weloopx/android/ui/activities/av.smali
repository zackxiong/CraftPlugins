.class Lcom/yf/smart/weloopx/android/ui/activities/av;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/au;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/au;I)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 212
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->a:I

    packed-switch v0, :pswitch_data_0

    .line 252
    :goto_0
    :pswitch_0
    return-void

    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->h(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/client/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/client/d;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setCheckedFromCode(Z)V

    goto :goto_0

    .line 217
    :pswitch_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->i(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/client/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/client/d;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setCheckedFromCode(Z)V

    goto :goto_0

    .line 222
    :pswitch_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->j(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iget-object v2, v2, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/client/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/gattlib/client/d;->b()B

    move-result v2

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/c/w;->a(Landroid/content/Context;B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 225
    :pswitch_4
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->k(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iget-object v2, v2, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/client/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/gattlib/client/d;->c()B

    move-result v2

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/c/w;->a(Landroid/content/Context;B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 228
    :pswitch_5
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/client/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->c()B

    move-result v0

    .line 230
    and-int/lit8 v3, v0, 0xf

    .line 232
    shr-int/lit8 v4, v0, 0x4

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iget-object v6, v6, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v6}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u53d1\u51fa\u901a\u77e5\u4e4b\u540e motionMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", \u7ffb\u8155\u4eae\u5c4f = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", \u9707\u52a8\u5f3a\u5ea6 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 235
    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iget-object v5, v5, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v5}, Lcom/yf/smart/weloopx/android/ui/activities/z;->l(Lcom/yf/smart/weloopx/android/ui/activities/z;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 236
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->m(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    move-result-object v5

    if-ne v4, v1, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setCheckedFromCode(Z)V

    .line 237
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->n(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    move-result-object v0

    if-ne v3, v1, :cond_1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setCheckedFromCode(Z)V

    goto/16 :goto_0

    :cond_0
    move v0, v2

    .line 236
    goto :goto_1

    :cond_1
    move v1, v2

    .line 237
    goto :goto_2

    .line 239
    :cond_2
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iget-object v3, v3, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/activities/z;->n(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    move-result-object v3

    if-ne v0, v1, :cond_3

    :goto_3
    invoke-virtual {v3, v1}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setCheckedFromCode(Z)V

    goto/16 :goto_0

    :cond_3
    move v1, v2

    goto :goto_3

    .line 245
    :pswitch_6
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->o(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/client/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/client/d;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setCheckedFromCode(Z)V

    goto/16 :goto_0

    .line 248
    :pswitch_7
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->p(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/client/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/client/d;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setCheckedFromCode(Z)V

    .line 249
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/av;->b:Lcom/yf/smart/weloopx/android/ui/activities/au;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->q(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    goto/16 :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method
