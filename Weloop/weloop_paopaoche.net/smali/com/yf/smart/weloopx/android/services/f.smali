.class Lcom/yf/smart/weloopx/android/services/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/baidu/location/BDLocationListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/services/LocationService;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/services/LocationService;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/services/f;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 4

    .prologue
    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/f;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->h(Lcom/yf/smart/weloopx/android/services/LocationService;)Lcom/yf/smart/weloopx/g/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/g/j;->a(Lcom/baidu/location/BDLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/f;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->h(Lcom/yf/smart/weloopx/android/services/LocationService;)Lcom/yf/smart/weloopx/g/j;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/services/f;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/f;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->i(Lcom/yf/smart/weloopx/android/services/LocationService;)Lcom/yf/smart/weloopx/android/services/a;

    move-result-object v0

    sget-object v3, Lcom/yf/smart/weloopx/android/services/a;->a:Lcom/yf/smart/weloopx/android/services/a;

    if-eq v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/services/f;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/services/LocationService;->j(Lcom/yf/smart/weloopx/android/services/LocationService;)I

    move-result v3

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/yf/smart/weloopx/g/j;->a(Landroid/content/Context;Lcom/baidu/location/BDLocation;ZI)V

    .line 400
    :cond_0
    return-void

    .line 385
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
