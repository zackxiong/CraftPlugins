.class public Lcom/yf/smart/weloopx/test/ui/TestActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 8

    .prologue
    const-wide v4, 0x403de77a919695d9L    # 29.904214

    .line 47
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/test/ui/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/SDKInitializer;->initialize(Landroid/content/Context;)V

    .line 48
    const v0, 0x7f030085

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/test/ui/TestActivity;->setContentView(I)V

    .line 49
    const v0, 0x7f0d0257

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/test/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/map/MapView;

    const v0, 0x7f0d0256

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/test/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const-wide v6, 0x405c9a130df9bdc7L    # 114.407413

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/yf/smart/weloopx/test/ui/TestActivity;->a(Lcom/baidu/mapapi/map/MapView;Landroid/widget/ImageView;DD)V

    .line 52
    const v0, 0x7f0d0259

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/test/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/map/MapView;

    const v0, 0x7f0d0258

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/test/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const-wide v6, 0x405d1a130df9bdc7L    # 116.407413

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/yf/smart/weloopx/test/ui/TestActivity;->a(Lcom/baidu/mapapi/map/MapView;Landroid/widget/ImageView;DD)V

    .line 55
    const v0, 0x7f0d025b

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/test/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/map/MapView;

    const v0, 0x7f0d025a

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/test/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const-wide v6, 0x405d9a130df9bdc7L    # 118.407413

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/yf/smart/weloopx/test/ui/TestActivity;->a(Lcom/baidu/mapapi/map/MapView;Landroid/widget/ImageView;DD)V

    .line 58
    return-void
.end method

.method private a(Lcom/baidu/mapapi/map/MapView;Landroid/widget/ImageView;DD)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    .line 61
    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/MapView;->showZoomControls(Z)V

    .line 62
    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/MapView;->showScaleControl(Z)V

    .line 63
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    .line 64
    const/high16 v1, 0x41980000    # 19.0f

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/map/BaiduMap;->setMaxAndMinZoomLevel(FF)V

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setMapType(I)V

    .line 68
    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v1, p3, p4, p5, p6}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 69
    new-instance v2, Lcom/baidu/mapapi/map/MyLocationData$Builder;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/MyLocationData$Builder;-><init>()V

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->accuracy(F)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->direction(F)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v2

    iget-wide v4, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v2, v4, v5}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->latitude(D)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v2

    iget-wide v4, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v2, v4, v5}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->longitude(D)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->build()Lcom/baidu/mapapi/map/MyLocationData;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationData(Lcom/baidu/mapapi/map/MyLocationData;)V

    .line 77
    invoke-static {v1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLng(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 79
    new-instance v1, Lcom/yf/smart/weloopx/test/ui/a;

    invoke-direct {v1, p0, p2, v0}, Lcom/yf/smart/weloopx/test/ui/a;-><init>(Lcom/yf/smart/weloopx/test/ui/TestActivity;Landroid/widget/ImageView;Lcom/baidu/mapapi/map/BaiduMap;)V

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMapLoadedCallback(Lcom/baidu/mapapi/map/BaiduMap$OnMapLoadedCallback;)V

    .line 107
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-direct {p0}, Lcom/yf/smart/weloopx/test/ui/TestActivity;->a()V

    .line 31
    return-void
.end method
