.class Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity$a;
.super Landroid/os/CountDownTimer;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;


# direct methods
.method public constructor <init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;JJ)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity$a;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    .line 431
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 432
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity$a;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->c:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 438
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity$a;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->c:Landroid/widget/Button;

    const v1, 0x7f070203

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 439
    return-void
.end method

.method public onTick(J)V
    .locals 5

    .prologue
    .line 444
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity$a;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->c:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 445
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity$a;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->c:Landroid/widget/Button;

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

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity$a;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070208

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 448
    return-void
.end method
