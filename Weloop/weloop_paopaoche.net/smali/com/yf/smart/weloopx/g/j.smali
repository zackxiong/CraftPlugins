.class public Lcom/yf/smart/weloopx/g/j;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:Z

.field public static b:I

.field public static c:I


# instance fields
.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:D

.field private h:D

.field private i:Lcom/yf/smart/weloopx/data/f;

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yf/smart/weloopx/g/j;->a:Z

    .line 35
    const/16 v0, 0x2710

    sput v0, Lcom/yf/smart/weloopx/g/j;->b:I

    .line 36
    const v0, 0x989680

    sput v0, Lcom/yf/smart/weloopx/g/j;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "TrajectoryUtil"

    iput-object v0, p0, Lcom/yf/smart/weloopx/g/j;->d:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/smart/weloopx/g/j;->e:I

    .line 38
    const/16 v0, 0xa

    iput v0, p0, Lcom/yf/smart/weloopx/g/j;->f:I

    .line 39
    iput-wide v2, p0, Lcom/yf/smart/weloopx/g/j;->g:D

    .line 40
    iput-wide v2, p0, Lcom/yf/smart/weloopx/g/j;->h:D

    .line 43
    const-wide/32 v0, 0x1e13380

    iput-wide v0, p0, Lcom/yf/smart/weloopx/g/j;->j:J

    .line 46
    new-instance v0, Lcom/yf/smart/weloopx/data/f;

    invoke-direct {v0, p1}, Lcom/yf/smart/weloopx/data/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/g/j;->i:Lcom/yf/smart/weloopx/data/f;

    .line 47
    return-void
.end method

.method private a(Lcom/yf/smart/weloopx/data/models/TrajectoryModel;)V
    .locals 6

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/TrajectoryModel;->getData()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    array-length v3, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 77
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/TrajectoryModel;->getHappenDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/yf/smart/weloopx/g/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/LocationModel;

    move-result-object v4

    .line 79
    invoke-virtual {v4}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_LOCATION_INFO()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_TIME()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 80
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/g/j;->i:Lcom/yf/smart/weloopx/data/f;

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/f;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static a(D)Z
    .locals 4

    .prologue
    .line 62
    sget v0, Lcom/yf/smart/weloopx/g/j;->b:I

    int-to-double v0, v0

    div-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(DD)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 237
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yf/smart/weloopx/g/j;->a(DD)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 252
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    iget-wide v2, p0, Lcom/yf/smart/weloopx/g/j;->g:D

    iget-wide v4, p0, Lcom/yf/smart/weloopx/g/j;->h:D

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/yf/smart/weloopx/g/j;->a(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    iget v2, p0, Lcom/yf/smart/weloopx/g/j;->e:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 249
    new-instance v2, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 250
    new-instance v3, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v4, p0, Lcom/yf/smart/weloopx/g/j;->g:D

    iget-wide v6, p0, Lcom/yf/smart/weloopx/g/j;->h:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 252
    invoke-static {v2, v3}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v2

    iget v4, p0, Lcom/yf/smart/weloopx/g/j;->f:I

    iget v5, p0, Lcom/yf/smart/weloopx/g/j;->e:I

    mul-int/2addr v4, v5

    int-to-double v4, v4

    cmpg-double v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private c(DD)Z
    .locals 5

    .prologue
    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 256
    iget-wide v0, p0, Lcom/yf/smart/weloopx/g/j;->g:D

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/yf/smart/weloopx/g/j;->h:D

    sub-double/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/LocationModel;
    .locals 1

    .prologue
    .line 89
    invoke-static {p1, p2}, Lcom/yf/smart/weloopx/data/models/LocationModel;->decode(Ljava/lang/String;Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/LocationModel;

    move-result-object v0

    .line 90
    return-object v0
.end method

.method public a(DDDFF)Ljava/lang/String;
    .locals 11

    .prologue
    .line 101
    invoke-static {}, Lcom/yf/gattlib/p/b;->g()J

    move-result-wide v0

    .line 102
    long-to-int v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/yf/smart/weloopx/data/models/LocationModel;->encodeLocationInfo(IDDDFF)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/baidu/location/BDLocation;ZI)V
    .locals 20

    .prologue
    .line 119
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, ""

    .line 121
    :cond_0
    invoke-static {}, Lcom/yf/gattlib/p/b;->f()Ljava/lang/String;

    move-result-object v15

    .line 122
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v6

    .line 123
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v8

    .line 124
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getAltitude()D

    move-result-wide v10

    .line 125
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getDirection()F

    move-result v12

    .line 126
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getSpeed()F

    move-result v13

    .line 127
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v16

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " \u767e\u5ea6\u5b9a\u4f4d\u7684location: time = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, ",latitude="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, ",longitude="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, ", sumStep = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, ", Is runingmode ?  = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " time = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getTime()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 134
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/g/j;->a(Lcom/baidu/location/BDLocation;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 199
    :goto_0
    return-void

    .line 138
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yf/smart/weloopx/g/j;->d:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " isRunningMode = "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 139
    if-eqz p3, :cond_5

    .line 140
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/yf/smart/weloopx/g/j;->b(DD)Z

    move-result v14

    .line 141
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v17

    const/high16 v18, 0x42a00000    # 80.0f

    cmpl-float v17, v17, v18

    if-gtz v17, :cond_2

    if-nez v14, :cond_3

    .line 142
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " \u5b9a\u4f4d\u7cbe\u5ea6 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u662f\u5426\u6709\u6548\u70b9: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/g/j;->e:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/yf/smart/weloopx/g/j;->e:I

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yf/smart/weloopx/g/j;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_3
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/yf/smart/weloopx/g/j;->e:I

    .line 148
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/yf/smart/weloopx/g/j;->c(DD)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 149
    const-string v4, " \u76f8\u540c\u7684GPS\u70b9..."

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yf/smart/weloopx/g/j;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :cond_4
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/yf/smart/weloopx/g/j;->g:D

    .line 154
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/yf/smart/weloopx/g/j;->h:D

    move-object v14, v5

    .line 163
    :goto_1
    invoke-static {v6, v7, v8, v9}, Lcom/yf/smart/weloopx/g/g;->a(DD)Lcom/yf/smart/weloopx/g/g$a;

    move-result-object v5

    .line 164
    invoke-virtual {v5}, Lcom/yf/smart/weloopx/g/g$a;->a()D

    move-result-wide v6

    .line 165
    invoke-virtual {v5}, Lcom/yf/smart/weloopx/g/g$a;->b()D

    move-result-wide v8

    .line 167
    sget v5, Lcom/yf/smart/weloopx/g/j;->c:I

    int-to-double v0, v5

    move-wide/from16 v18, v0

    mul-double v6, v6, v18

    .line 168
    sget v5, Lcom/yf/smart/weloopx/g/j;->c:I

    int-to-double v0, v5

    move-wide/from16 v18, v0

    mul-double v8, v8, v18

    .line 169
    sget v5, Lcom/yf/smart/weloopx/g/j;->b:I

    int-to-double v0, v5

    move-wide/from16 v18, v0

    mul-double v10, v10, v18

    .line 170
    sget v5, Lcom/yf/smart/weloopx/g/j;->b:I

    int-to-float v5, v5

    mul-float/2addr v12, v5

    .line 171
    sget v5, Lcom/yf/smart/weloopx/g/j;->b:I

    int-to-float v5, v5

    mul-float/2addr v13, v5

    .line 174
    new-instance v17, Lcom/yf/smart/weloopx/data/models/LocationModel;

    invoke-direct/range {v17 .. v17}, Lcom/yf/smart/weloopx/data/models/LocationModel;-><init>()V

    .line 175
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yf/smart/weloopx/b/b;->g()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_DEVICE_ID(Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_USER_ID(Ljava/lang/String;)V

    .line 177
    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_DIRECTION(Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_TIME(Ljava/lang/String;)V

    .line 179
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_ALTITUTE(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/yf/gattlib/p/b;->e()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_DATE(Ljava/lang/String;)V

    .line 181
    const-string v4, "0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_IS_SUBMIT(Ljava/lang/String;)V

    .line 182
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_LAT(Ljava/lang/String;)V

    .line 183
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_LON(Ljava/lang/String;)V

    .line 184
    float-to-int v4, v13

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_SPEED(Ljava/lang/String;)V

    .line 185
    move/from16 v0, v16

    float-to-int v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_RADIUS(Ljava/lang/String;)V

    move-object/from16 v5, p0

    .line 187
    invoke-virtual/range {v5 .. v13}, Lcom/yf/smart/weloopx/g/j;->a(DDDFF)Ljava/lang/String;

    move-result-object v4

    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yf/smart/weloopx/g/j;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u4fdd\u5b58\u7684\u65f6\u5019\u7ec4\u88c5\u7684\u4f4d\u7f6e\u4fe1\u606f =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 189
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 190
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_LOCATION_INFO(Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yf/smart/weloopx/g/j;->i:Lcom/yf/smart/weloopx/data/f;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/yf/smart/weloopx/data/f;->a(Lcom/yf/smart/weloopx/data/models/LocationModel;)V

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yf/smart/weloopx/g/j;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 193
    invoke-static {v14}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 157
    :cond_5
    const-string v5, " \u4e0d\u662f\u8dd1\u6b65\u6a21\u5f0f"

    .line 158
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/yf/smart/weloopx/g/j;->g:D

    .line 159
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/yf/smart/weloopx/g/j;->h:D

    .line 160
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/yf/smart/weloopx/g/j;->e:I

    move-object v14, v5

    goto/16 :goto_1

    .line 195
    :cond_6
    const-string v4, " locationInfo \u4e3a\u7a7a..."

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yf/smart/weloopx/g/j;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 197
    invoke-static {v4}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/yf/smart/weloopx/data/models/TrajectoryResponse;)V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/TrajectoryResponse;->getDays()Ljava/util/List;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/TrajectoryModel;

    .line 56
    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/g/j;->a(Lcom/yf/smart/weloopx/data/models/TrajectoryModel;)V

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public a(DD)Z
    .locals 7

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v2, 0x0

    .line 266
    cmpl-double v0, p1, v2

    if-lez v0, :cond_0

    cmpl-double v0, p1, v4

    if-eqz v0, :cond_0

    cmpl-double v0, p3, v2

    if-lez v0, :cond_0

    cmpl-double v0, p3, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/baidu/location/BDLocation;)Z
    .locals 4

    .prologue
    .line 261
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/yf/smart/weloopx/g/j;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
