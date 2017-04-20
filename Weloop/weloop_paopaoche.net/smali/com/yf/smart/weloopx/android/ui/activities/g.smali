.class Lcom/yf/smart/weloopx/android/ui/activities/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/g;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 451
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/g;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;Z)Z

    .line 452
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/g;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 453
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/g;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 454
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/g;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 455
    return-void
.end method
