.class Lcom/yf/smart/weloopx/android/ui/c/at;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/as;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/as;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/at;->a:Lcom/yf/smart/weloopx/android/ui/c/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 85
    sget-boolean v0, Lcom/yf/smart/weloopx/android/ui/c/as;->b:Z

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/at;->a:Lcom/yf/smart/weloopx/android/ui/c/as;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/c/as;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/at;->a:Lcom/yf/smart/weloopx/android/ui/c/as;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/as;->startActivity(Landroid/content/Intent;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/at;->a:Lcom/yf/smart/weloopx/android/ui/c/as;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/as;->b()V

    .line 90
    return-void
.end method
