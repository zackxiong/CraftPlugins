.class Lcom/yf/smart/weloopx/android/ui/activities/bb;
.super Lcom/yf/smart/weloopx/android/ui/activities/z$c;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 1

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bb;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z$c;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/smart/weloopx/android/ui/activities/aa;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1294
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bb;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1295
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bb;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->startActivity(Landroid/content/Intent;)V

    .line 1296
    return-void
.end method
