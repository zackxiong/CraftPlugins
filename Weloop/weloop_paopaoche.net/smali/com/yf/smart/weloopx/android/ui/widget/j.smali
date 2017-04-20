.class Lcom/yf/smart/weloopx/android/ui/widget/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/widget/i;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/widget/i;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/j;->a:Lcom/yf/smart/weloopx/android/ui/widget/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/j;->a:Lcom/yf/smart/weloopx/android/ui/widget/i;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/i;->a(Lcom/yf/smart/weloopx/android/ui/widget/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/j;->a:Lcom/yf/smart/weloopx/android/ui/widget/i;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/widget/i;->b(Lcom/yf/smart/weloopx/android/ui/widget/i;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    const-string v1, "startTime"

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/j;->a:Lcom/yf/smart/weloopx/android/ui/widget/i;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/widget/i;->c(Lcom/yf/smart/weloopx/android/ui/widget/i;)Lcom/yf/smart/weloopx/data/models/Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/Activity;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v1, "endTime"

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/j;->a:Lcom/yf/smart/weloopx/android/ui/widget/i;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/widget/i;->c(Lcom/yf/smart/weloopx/android/ui/widget/i;)Lcom/yf/smart/weloopx/data/models/Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/Activity;->getEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "Calories"

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/j;->a:Lcom/yf/smart/weloopx/android/ui/widget/i;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/widget/i;->c(Lcom/yf/smart/weloopx/android/ui/widget/i;)Lcom/yf/smart/weloopx/data/models/Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/Activity;->getCalorie()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 110
    const-string v1, "Distance"

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/j;->a:Lcom/yf/smart/weloopx/android/ui/widget/i;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/widget/i;->c(Lcom/yf/smart/weloopx/android/ui/widget/i;)Lcom/yf/smart/weloopx/data/models/Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/Activity;->getDistance()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 111
    const-string v1, "Steps"

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/j;->a:Lcom/yf/smart/weloopx/android/ui/widget/i;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/widget/i;->c(Lcom/yf/smart/weloopx/android/ui/widget/i;)Lcom/yf/smart/weloopx/data/models/Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/Activity;->getStepCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    const-string v1, "Speed"

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/j;->a:Lcom/yf/smart/weloopx/android/ui/widget/i;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/widget/i;->c(Lcom/yf/smart/weloopx/android/ui/widget/i;)Lcom/yf/smart/weloopx/data/models/Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/Activity;->getSpeedKph()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 113
    const-string v1, "subtype"

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/j;->a:Lcom/yf/smart/weloopx/android/ui/widget/i;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/widget/i;->c(Lcom/yf/smart/weloopx/android/ui/widget/i;)Lcom/yf/smart/weloopx/data/models/Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/Activity;->getSubType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/j;->a:Lcom/yf/smart/weloopx/android/ui/widget/i;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/widget/i;->b(Lcom/yf/smart/weloopx/android/ui/widget/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
