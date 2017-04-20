.class Lcom/yf/smart/weloopx/android/services/j;
.super Ljava/util/TimerTask;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/services/LocationService;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/services/LocationService;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/services/j;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/j;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->m(Lcom/yf/smart/weloopx/android/services/LocationService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/j;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/services/LocationService;->l(Lcom/yf/smart/weloopx/android/services/LocationService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 597
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/j;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->m(Lcom/yf/smart/weloopx/android/services/LocationService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/j;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/services/LocationService;->l(Lcom/yf/smart/weloopx/android/services/LocationService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 598
    return-void
.end method
