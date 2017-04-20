.class Lcom/yf/smart/weloopx/android/ui/activities/gy;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gy;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 476
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gy;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->k(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Lcom/todddavies/components/progressbar/ProgressWheel2;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gy;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iget v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->d:I

    invoke-virtual {v0, v1}, Lcom/todddavies/components/progressbar/ProgressWheel2;->setProgress(I)V

    .line 477
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gy;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->p(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/gy;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iget v2, v2, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->d:I

    mul-int/lit8 v2, v2, 0x64

    div-int/lit16 v2, v2, 0x168

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    return-void
.end method
