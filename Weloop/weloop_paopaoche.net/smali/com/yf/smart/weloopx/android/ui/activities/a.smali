.class Lcom/yf/smart/weloopx/android/ui/activities/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/a;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/a;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;I)V

    .line 204
    return-void
.end method