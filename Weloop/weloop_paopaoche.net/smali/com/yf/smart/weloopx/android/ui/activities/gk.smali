.class Lcom/yf/smart/weloopx/android/ui/activities/gk;
.super Landroid/os/AsyncTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gk;->a:Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14

    .prologue
    const-wide/16 v0, 0x0

    .line 165
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/gk;->a:Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/gk;->a:Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;)Lcom/yf/smart/weloopx/data/f;

    move-result-object v3

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/gk;->a:Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;

    invoke-static {v4}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/gk;->a:Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;

    invoke-static {v5}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/yf/smart/weloopx/data/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;Ljava/util/List;)Ljava/util/List;

    .line 168
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/gk;->a:Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v2, v0

    move-wide v6, v0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/LocationModel;

    .line 169
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_LAT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    sget v1, Lcom/yf/smart/weloopx/g/j;->c:I

    int-to-double v8, v1

    div-double v8, v4, v8

    .line 170
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_LON()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    sget v1, Lcom/yf/smart/weloopx/g/j;->c:I

    int-to-double v12, v1

    div-double/2addr v4, v12

    .line 172
    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v1, v8, v9, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 173
    new-instance v11, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v11, v6, v7, v2, v3}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/gk;->a:Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->e(Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " locationTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_TIME()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " latitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_LON()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    sget v3, Lcom/yf/smart/weloopx/g/j;->c:I

    int-to-double v12, v3

    div-double/2addr v6, v12

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_LAT()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    sget v3, Lcom/yf/smart/weloopx/g/j;->c:I

    int-to-double v12, v3

    div-double/2addr v6, v12

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " distance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v11}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_LON()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sget v6, Lcom/yf/smart/weloopx/g/j;->c:I

    int-to-double v6, v6

    div-double/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_LAT()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sget v0, Lcom/yf/smart/weloopx/g/j;->c:I

    int-to-double v6, v0

    div-double/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    move-wide v2, v4

    move-wide v6, v8

    .line 183
    goto/16 :goto_0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gk;->a:Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->e(Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u83b7\u5f97\u7684\u4f4d\u7f6e\u4fe1\u606f\u6570\u91cf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gk;->a:Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gk;->a:Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gk;->a:Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gk;->a:Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;->f(Lcom/yf/smart/weloopx/android/ui/activities/TrajectoryActivity;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/gk;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 158
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/gk;->a(Ljava/lang/Void;)V

    return-void
.end method
