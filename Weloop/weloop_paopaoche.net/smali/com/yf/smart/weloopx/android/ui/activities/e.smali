.class Lcom/yf/smart/weloopx/android/ui/activities/e;
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
    .line 389
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/e;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 392
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/e;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->f()V

    .line 393
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/e;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 394
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/e;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 395
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/e;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 396
    return-void
.end method
