.class Lcom/yf/smart/weloopx/android/a/b;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/a/a;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/a/a;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/a/b;->a:Lcom/yf/smart/weloopx/android/a/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/a/b;->a:Lcom/yf/smart/weloopx/android/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/a/a;->a(I)V

    .line 64
    const-string v0, "AppExitMonitor"

    const-string v1, "set exitVal=0"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 65
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/a/b;->a:Lcom/yf/smart/weloopx/android/a/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/a/a;->a(I)V

    .line 67
    const-string v0, "AppExitMonitor"

    const-string v1, "set exitVal=-1"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
