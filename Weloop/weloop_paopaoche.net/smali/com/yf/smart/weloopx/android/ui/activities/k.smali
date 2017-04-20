.class Lcom/yf/smart/weloopx/android/ui/activities/k;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/k;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/k;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/k;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;Z)Z

    .line 156
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/k;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;

    invoke-static {v0, p2}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;I)I

    .line 157
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/k;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;

    invoke-static {v0, p3}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;I)I

    .line 158
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/k;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;

    invoke-static {v0, p2, p3}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;II)Ljava/lang/String;

    .line 160
    :cond_0
    return-void
.end method
