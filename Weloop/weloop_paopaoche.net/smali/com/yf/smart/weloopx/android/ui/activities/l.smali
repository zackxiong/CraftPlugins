.class Lcom/yf/smart/weloopx/android/ui/activities/l;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/l;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/l;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/l;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "AlarmEditActivity"

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 263
    return-void
.end method
