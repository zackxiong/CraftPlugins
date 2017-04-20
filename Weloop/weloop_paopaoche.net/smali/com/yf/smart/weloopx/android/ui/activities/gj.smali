.class Lcom/yf/smart/weloopx/android/ui/activities/gj;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gj;->a:Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gj;->a:Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gj;->a:Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->stopService(Landroid/content/Intent;)Z

    .line 86
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gj;->a:Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->finish()V

    .line 87
    return-void
.end method
