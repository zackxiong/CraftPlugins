.class public Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;
.super Landroid/app/Activity;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yf/smart/weloopx/f/d$a;
.implements Lcom/yf/smart/weloopx/f/d$b;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:I

.field private I:Lcom/baidu/mapapi/map/BaiduMap;

.field private J:Lcom/baidu/mapapi/utils/CoordinateConverter;

.field private K:I

.field private L:Lcom/baidu/location/BDLocationListener;

.field a:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0157
    .end annotation
.end field

.field b:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0158
    .end annotation
.end field

.field c:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017d
    .end annotation
.end field

.field d:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017e
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d016e
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0159
    .end annotation
.end field

.field g:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0153
    .end annotation
.end field

.field h:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0155
    .end annotation
.end field

.field i:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0154
    .end annotation
.end field

.field j:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0156
    .end annotation
.end field

.field k:Lcom/baidu/mapapi/map/MapView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0151
    .end annotation
.end field

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/data/models/GDPData;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/graphics/Typeface;

.field private x:Lcom/yf/smart/weloopx/data/f;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/LocationModel;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/yf/smart/weloopx/f/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const-string v0, "TrajectoryActivity"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->n:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->y:Ljava/util/List;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->A:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->B:Ljava/lang/String;

    .line 99
    const-string v0, "0"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->C:Ljava/lang/String;

    .line 100
    const-string v0, "0"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->D:Ljava/lang/String;

    .line 101
    const-string v0, "0"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->E:Ljava/lang/String;

    .line 102
    const-string v0, "0"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->F:Ljava/lang/String;

    .line 103
    const-string v0, "0"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->G:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->H:I

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->l:Ljava/util/ArrayList;

    .line 506
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->K:I

    .line 507
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->m:Ljava/lang/String;

    .line 509
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/gl;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/gl;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->L:Lcom/baidu/location/BDLocationListener;

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->y:Ljava/util/List;

    return-object p1
.end method

.method private a(DD)V
    .locals 3

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 366
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->k:Lcom/baidu/mapapi/map/MapView;

    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 368
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/map/MyLocationData$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MyLocationData$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->accuracy(F)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->direction(F)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->latitude(D)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->longitude(D)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->build()Lcom/baidu/mapapi/map/MyLocationData;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->I:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationData(Lcom/baidu/mapapi/map/MyLocationData;)V

    .line 374
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 375
    invoke-static {v0}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLng(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->I:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    goto :goto_0
.end method

.method private a(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 354
    new-instance v0, Lcom/baidu/mapapi/map/TextOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/TextOptions;-><init>()V

    const v1, -0x55000100

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/TextOptions;->bgColor(I)Lcom/baidu/mapapi/map/TextOptions;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/TextOptions;->fontSize(I)Lcom/baidu/mapapi/map/TextOptions;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/baidu/mapapi/map/TextOptions;->fontColor(I)Lcom/baidu/mapapi/map/TextOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/mapapi/map/TextOptions;->text(Ljava/lang/String;)Lcom/baidu/mapapi/map/TextOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/TextOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/TextOptions;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->I:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    .line 361
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->B:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;)Lcom/yf/smart/weloopx/data/f;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->x:Lcom/yf/smart/weloopx/data/f;

    return-object v0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->y:Ljava/util/List;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 158
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/gk;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/gk;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/gk;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 197
    return-void
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_2

    .line 224
    const-string v1, "startTime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->A:Ljava/lang/String;

    .line 225
    const-string v1, "endTime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->B:Ljava/lang/String;

    .line 226
    const-string v1, "Calories"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->C:Ljava/lang/String;

    .line 227
    const-string v1, "%.2f"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Distance"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->E:Ljava/lang/String;

    .line 228
    const-string v1, "%.2f"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Distance"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->D:Ljava/lang/String;

    .line 229
    const-string v1, "Steps"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->F:Ljava/lang/String;

    .line 230
    const-string v1, "subtype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->H:I

    .line 232
    const-wide v2, 0x40ac200000000000L    # 3600.0

    const-string v1, "Speed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    div-double v0, v2, v0

    double-to-int v1, v0

    .line 233
    div-int/lit8 v2, v1, 0x3c

    .line 234
    const-string v0, ""

    .line 235
    if-lez v2, :cond_0

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_0
    rem-int/lit8 v1, v1, 0x3c

    .line 240
    if-lez v1, :cond_1

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    :cond_1
    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->G:Ljava/lang/String;

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Bundle params: startTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", calories = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", steps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 250
    :cond_2
    new-instance v0, Lcom/yf/smart/weloopx/data/f;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/data/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->x:Lcom/yf/smart/weloopx/data/f;

    .line 251
    new-instance v0, Lcom/yf/smart/weloopx/f/d;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/f/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->z:Lcom/yf/smart/weloopx/f/d;

    .line 252
    return-void
.end method

.method private f()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v4, 0x7f0d015b

    const v3, 0x7f0d015a

    const/16 v2, 0x8

    .line 257
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/diy.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->w:Landroid/graphics/Typeface;

    .line 258
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->o:Landroid/widget/TextView;

    .line 259
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->p:Landroid/widget/TextView;

    .line 260
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->q:Landroid/widget/TextView;

    .line 261
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->r:Landroid/widget/TextView;

    .line 263
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->s:Landroid/widget/TextView;

    .line 264
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->t:Landroid/widget/TextView;

    .line 265
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->u:Landroid/widget/TextView;

    .line 266
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->v:Landroid/widget/TextView;

    .line 268
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->w:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 269
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->w:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 270
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->w:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 271
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->w:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 273
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->s:Landroid/widget/TextView;

    const v1, 0x7f070261

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->t:Landroid/widget/TextView;

    const v1, 0x7f070265

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->u:Landroid/widget/TextView;

    const v1, 0x7f070267

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->v:Landroid/widget/TextView;

    const v1, 0x7f070266

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f07027b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 284
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->d:Landroid/widget/Button;

    const v1, 0x7f0700af

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 287
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->d:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 288
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->H:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->s:Landroid/widget/TextView;

    const v1, 0x7f070263

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->t:Landroid/widget/TextView;

    const v1, 0x7f070262

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->v:Landroid/widget/TextView;

    const v1, 0x7f070264

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->A:Ljava/lang/String;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/g/m;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 307
    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->E:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    int-to-double v6, v0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->h()V

    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->k:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->I:Lcom/baidu/mapapi/map/BaiduMap;

    .line 320
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->I:Lcom/baidu/mapapi/map/BaiduMap;

    const/high16 v1, 0x41980000    # 19.0f

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/map/BaiduMap;->setMaxAndMinZoomLevel(FF)V

    .line 322
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->I:Lcom/baidu/mapapi/map/BaiduMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setMapType(I)V

    .line 324
    return-void
.end method

.method private h()V
    .locals 8

    .prologue
    const v7, 0x7f07022f

    const/high16 v6, -0x10000

    const/4 v5, 0x0

    .line 328
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 333
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->i()Ljava/util/List;

    move-result-object v1

    .line 334
    const v0, 0x7f0200fb

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromResource(I)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v2

    .line 335
    new-instance v3, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v3}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v3, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    .line 336
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->I:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    .line 337
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p0, v7}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v6}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->a(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;I)V

    .line 338
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->a(DD)V

    goto :goto_0

    .line 341
    :cond_1
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->i()Ljava/util/List;

    move-result-object v1

    .line 342
    new-instance v0, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    const/16 v2, 0x7d

    const/16 v3, 0xcc

    const/16 v4, 0x9d

    invoke-static {v2, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    .line 346
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->I:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    .line 347
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p0, v7}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v6}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->a(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;I)V

    .line 348
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    const v2, 0x7f0700ec

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0xffff01

    invoke-direct {p0, v0, v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->a(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;I)V

    .line 349
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->a(DD)V

    goto/16 :goto_0
.end method

.method private i()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 410
    const-string v0, ""

    const-string v0, ""

    .line 412
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->y:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v4

    .line 435
    :goto_0
    return-object v0

    .line 416
    :cond_1
    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->J:Lcom/baidu/mapapi/utils/CoordinateConverter;

    .line 417
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/LocationModel;

    .line 418
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_LAT()Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "0"

    :cond_2
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 420
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_LON()Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "0"

    :cond_3
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 422
    invoke-static {v8, v9}, Lcom/yf/smart/weloopx/g/j;->a(D)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 423
    sget v0, Lcom/yf/smart/weloopx/g/j;->c:I

    int-to-double v0, v0

    div-double v0, v2, v0

    .line 424
    sget v2, Lcom/yf/smart/weloopx/g/j;->c:I

    int-to-double v2, v2

    div-double v2, v8, v2

    .line 430
    :goto_2
    new-instance v7, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-virtual {v5, v7}, Lcom/baidu/mapapi/utils/CoordinateConverter;->coord(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/utils/CoordinateConverter;

    .line 431
    invoke-virtual {v5}, Lcom/baidu/mapapi/utils/CoordinateConverter;->convert()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    .line 432
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 426
    :cond_4
    sget v0, Lcom/yf/smart/weloopx/g/j;->b:I

    int-to-double v0, v0

    div-double v0, v2, v0

    .line 427
    sget v2, Lcom/yf/smart/weloopx/g/j;->b:I

    int-to-double v2, v2

    div-double v2, v8, v2

    goto :goto_2

    :cond_5
    move-object v0, v4

    .line 435
    goto :goto_0
.end method

.method private j()V
    .locals 0

    .prologue
    .line 440
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onDownloadStart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onDownloadFailed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onDownloadSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onUploadFailed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onUploadStart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onUploadSuccess  date = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->x:Lcom/yf/smart/weloopx/data/f;

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/f;->b(Ljava/lang/String;)Z

    .line 483
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 400
    :goto_0
    return-void

    .line 384
    :sswitch_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->finish()V

    goto :goto_0

    .line 388
    :sswitch_1
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->j()V

    goto :goto_0

    .line 392
    :sswitch_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->z:Lcom/yf/smart/weloopx/f/d;

    invoke-static {}, Lcom/yf/gattlib/p/b;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/yf/smart/weloopx/f/d;->a(Lcom/yf/smart/weloopx/f/d$a;Ljava/lang/String;Z)V

    goto :goto_0

    .line 396
    :sswitch_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->z:Lcom/yf/smart/weloopx/f/d;

    invoke-static {}, Lcom/yf/gattlib/p/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/yf/smart/weloopx/f/d;->a(Lcom/yf/smart/weloopx/f/d$b;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0157 -> :sswitch_3
        0x7f0d0158 -> :sswitch_2
        0x7f0d017d -> :sswitch_0
        0x7f0d017e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->requestWindowFeature(I)Z

    .line 114
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/SDKInitializer;->initialize(Landroid/content/Context;)V

    .line 115
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->setContentView(I)V

    .line 116
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 117
    new-instance v0, Lcom/baidu/mapapi/utils/CoordinateConverter;

    invoke-direct {v0}, Lcom/baidu/mapapi/utils/CoordinateConverter;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->J:Lcom/baidu/mapapi/utils/CoordinateConverter;

    .line 118
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->J:Lcom/baidu/mapapi/utils/CoordinateConverter;

    sget-object v1, Lcom/baidu/mapapi/utils/CoordinateConverter$CoordType;->GPS:Lcom/baidu/mapapi/utils/CoordinateConverter$CoordType;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/utils/CoordinateConverter;->from(Lcom/baidu/mapapi/utils/CoordinateConverter$CoordType;)Lcom/baidu/mapapi/utils/CoordinateConverter;

    .line 119
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->e()V

    .line 120
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->f()V

    .line 121
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->g()V

    .line 122
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->d()V

    .line 125
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onDestroy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->k:Lcom/baidu/mapapi/map/MapView;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->k:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onDestroy()V

    .line 153
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->k:Lcom/baidu/mapapi/map/MapView;

    .line 154
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 137
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->k:Lcom/baidu/mapapi/map/MapView;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->k:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onPause()V

    .line 139
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 130
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->k:Lcom/baidu/mapapi/map/MapView;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->k:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onResume()V

    .line 132
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 144
    return-void
.end method
