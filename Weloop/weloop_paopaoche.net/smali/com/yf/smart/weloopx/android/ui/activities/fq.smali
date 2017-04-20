.class Lcom/yf/smart/weloopx/android/ui/activities/fq;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/fp;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/fp;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fq;->a:Lcom/yf/smart/weloopx/android/ui/activities/fp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fq;->a:Lcom/yf/smart/weloopx/android/ui/activities/fp;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/fp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fq;->a:Lcom/yf/smart/weloopx/android/ui/activities/fp;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/fp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method
