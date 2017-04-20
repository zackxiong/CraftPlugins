.class Lcom/yf/smart/weloopx/android/ui/c/ar;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/aq;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/aq;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/ar;->a:Lcom/yf/smart/weloopx/android/ui/c/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ar;->a:Lcom/yf/smart/weloopx/android/ui/c/aq;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/c/aq;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ar;->a:Lcom/yf/smart/weloopx/android/ui/c/aq;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/aq;->startActivity(Landroid/content/Intent;)V

    .line 46
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ar;->a:Lcom/yf/smart/weloopx/android/ui/c/aq;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/aq;->b()V

    .line 47
    return-void
.end method
