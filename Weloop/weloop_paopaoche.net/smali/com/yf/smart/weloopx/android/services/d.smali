.class Lcom/yf/smart/weloopx/android/services/d;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/services/LocationService;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/services/LocationService;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/services/d;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 257
    const-string v0, "LocationService"

    const-string v1, "get alarm 1"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/d;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->c(Lcom/yf/smart/weloopx/android/services/LocationService;)V

    .line 259
    return-void
.end method
