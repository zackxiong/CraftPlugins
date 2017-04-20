.class Lcom/yf/smart/weloopx/android/ui/activities/fd;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/el;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/el;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fd;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 360
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fd;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/activitys/TargetSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fd;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->startActivity(Landroid/content/Intent;)V

    .line 362
    return-void
.end method
