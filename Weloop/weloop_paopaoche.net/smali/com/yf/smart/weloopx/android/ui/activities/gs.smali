.class Lcom/yf/smart/weloopx/android/ui/activities/gs;
.super Ljava/util/TimerTask;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    .locals 0

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gs;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gs;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gs;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->L(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;I)I

    .line 1009
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gs;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->M(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gs;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->N(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1010
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gs;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->N(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/gs;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->O(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1012
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 1013
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/gs;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v2, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->e(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;I)V

    .line 1015
    :cond_0
    return-void
.end method
