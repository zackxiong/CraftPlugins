.class Lcom/yf/smart/weloopx/activitys/ResetPassword$a;
.super Landroid/os/CountDownTimer;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/activitys/ResetPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/ResetPassword;


# direct methods
.method public constructor <init>(Lcom/yf/smart/weloopx/activitys/ResetPassword;JJ)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword$a;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    .line 145
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 146
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword$a;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    iget-object v0, v0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->a:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 152
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword$a;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    iget-object v0, v0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->a:Landroid/widget/Button;

    const v1, 0x7f070203

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 153
    return-void
.end method

.method public onTick(J)V
    .locals 5

    .prologue
    .line 158
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword$a;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    iget-object v0, v0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 159
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword$a;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    iget-object v0, v0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->a:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword$a;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070201

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 162
    return-void
.end method
