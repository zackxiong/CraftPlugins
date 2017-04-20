.class Lcom/yf/smart/weloopx/android/ui/activities/fy;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fy;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const v7, 0x7f0702d9

    const v6, 0x7f0702d2

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fy;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;)Lcom/yf/smart/weloopx/g/d;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fy;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/fy;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/fy;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;

    invoke-virtual {v5, v7}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/fy;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;

    invoke-static {v5}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/fy;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;

    invoke-virtual {v5, v6}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fy;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;)Lcom/yf/smart/weloopx/view/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/o;->dismiss()V

    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fy;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;)Lcom/yf/smart/weloopx/g/d;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fy;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/fy;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/fy;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;

    invoke-virtual {v5, v7}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/fy;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;

    invoke-static {v5}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/fy;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;

    invoke-virtual {v5, v6}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fy;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;)Lcom/yf/smart/weloopx/view/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/o;->dismiss()V

    goto/16 :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d02ab
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
