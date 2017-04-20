.class Lcom/yf/smart/weloopx/android/services/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/services/LocationService;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/services/LocationService;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/services/e;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 293
    const-string v0, "KEY_TRAJECTORY_SWITCH"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/e;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/e;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/services/LocationService;->d(Lcom/yf/smart/weloopx/android/services/LocationService;)Lcom/yf/gattlib/c/c;

    move-result-object v1

    const-string v2, "KEY_TRAJECTORY_SWITCH"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/services/LocationService;->a(Lcom/yf/smart/weloopx/android/services/LocationService;Z)Z

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u8dd1\u6b65\u8f68\u8ff9\u5f00\u5173\u72b6\u6001 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/e;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/services/LocationService;->e(Lcom/yf/smart/weloopx/android/services/LocationService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/e;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->c(Lcom/yf/smart/weloopx/android/services/LocationService;)V

    .line 297
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/e;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->f(Lcom/yf/smart/weloopx/android/services/LocationService;)V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    const-string v0, "connect_notification"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/e;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->g(Lcom/yf/smart/weloopx/android/services/LocationService;)V

    goto :goto_0
.end method
