.class public Lcom/yf/smart/weloopx/data/models/Activity;
.super Lcom/yf/smart/weloopx/data/e;
.source "ProGuard"


# static fields
.field public static final SUB_NO_BONG_SIT_DOWN:I = 0x1

.field public static final SUB_NO_BONG_TYPE_ACTIVITY:I = 0x4

.field public static final SUB_NO_BONG_TYPE_DRIVING:I = 0xa

.field public static final SUB_NO_BONG_TYPE_RUNNING:I = 0xb

.field public static final SUB_NO_BONG_TYPE_STATIC:I = 0x0

.field public static final SUB_NO_BONG_VEHICLE:I = 0x3

.field public static final SUB_NO_BONG_WALK:I = 0x2

.field public static final SUB_TYPE_BIKE:I = 0x6

.field public static final SUB_TYPE_RUNNING:I = 0x4

.field public static final SUB_TYPE_SPORT:I = 0x3

.field public static final SUB_TYPE_SPORT_WALKING:I = 0x2

.field public static final SUB_TYPE_SWIMMING:I = 0x5

.field public static final SUB_TYPE_WARM_UP:I = 0x1

.field public static final TYPE_BONG:I = 0x2

.field public static final TYPE_CHARGING:I = 0x5

.field public static final TYPE_NON_BONG:I = 0x3

.field public static final TYPE_SLEEP:I = 0x1

.field public static final TYPE_TAKE_OFF:I = 0x4


# instance fields
.field private actTime:Ljava/lang/String;

.field private allmileage:Ljava/lang/String;

.field private bongValue:Ljava/lang/String;

.field private calorie:Ljava/lang/String;

.field private distance:Ljava/lang/String;

.field private dsNum:I

.field private endTime:Ljava/lang/String;

.field private happenDate:Ljava/lang/String;

.field private hdRatio:Ljava/lang/String;

.field private jzRatio:Ljava/lang/String;

.field private lsNum:I

.field private nonActTime:Ljava/lang/String;

.field private score:Ljava/lang/String;

.field private speed:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private stepCount:Ljava/lang/String;

.field private subType:I

.field private type:I

.field private wakeNum:I

.field private wakeTimes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/e;-><init>()V

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->bongValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public composeActivity(Lcom/yf/smart/weloopx/data/models/Activity;)V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->actTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/yf/smart/weloopx/data/models/Activity;->actTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->actTime:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->nonActTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/yf/smart/weloopx/data/models/Activity;->nonActTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->nonActTime:Ljava/lang/String;

    .line 93
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->dsNum:I

    iget v1, p1, Lcom/yf/smart/weloopx/data/models/Activity;->dsNum:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->dsNum:I

    .line 94
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->lsNum:I

    iget v1, p1, Lcom/yf/smart/weloopx/data/models/Activity;->lsNum:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->lsNum:I

    .line 95
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->wakeNum:I

    iget v1, p1, Lcom/yf/smart/weloopx/data/models/Activity;->wakeNum:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->wakeNum:I

    .line 96
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->wakeTimes:I

    iget v1, p1, Lcom/yf/smart/weloopx/data/models/Activity;->wakeTimes:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->wakeTimes:I

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->stepCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->stepCount:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/data/models/Activity;->toInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p1, Lcom/yf/smart/weloopx/data/models/Activity;->stepCount:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/data/models/Activity;->toInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->stepCount:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->speed:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/data/models/Activity;->toDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v1, p1, Lcom/yf/smart/weloopx/data/models/Activity;->speed:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/data/models/Activity;->toDouble(Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->speed:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->calorie:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/data/models/Activity;->toDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v1, p1, Lcom/yf/smart/weloopx/data/models/Activity;->calorie:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/data/models/Activity;->toDouble(Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->calorie:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->distance:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/data/models/Activity;->toDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v1, p1, Lcom/yf/smart/weloopx/data/models/Activity;->distance:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/data/models/Activity;->toDouble(Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->distance:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->score:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/data/models/Activity;->toDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v1, p1, Lcom/yf/smart/weloopx/data/models/Activity;->score:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/data/models/Activity;->toDouble(Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->score:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->allmileage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/data/models/Activity;->toDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v1, p1, Lcom/yf/smart/weloopx/data/models/Activity;->allmileage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/data/models/Activity;->toDouble(Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->allmileage:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->startTime:Ljava/lang/String;

    iget-object v1, p1, Lcom/yf/smart/weloopx/data/models/Activity;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    iget-object v0, p1, Lcom/yf/smart/weloopx/data/models/Activity;->startTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->startTime:Ljava/lang/String;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->endTime:Ljava/lang/String;

    iget-object v1, p1, Lcom/yf/smart/weloopx/data/models/Activity;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 110
    iget-object v0, p1, Lcom/yf/smart/weloopx/data/models/Activity;->endTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->endTime:Ljava/lang/String;

    .line 112
    :cond_1
    return-void
.end method

.method public getActiveSeconds()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->actTime:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/data/models/Activity;->toInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAllmileage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->allmileage:Ljava/lang/String;

    return-object v0
.end method

.method public getBongValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->bongValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCalorie()D
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->calorie:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/data/models/Activity;->toDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDeepSleepMinutes()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->dsNum:I

    return v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->distance:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/data/models/Activity;->toDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getHappenDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->happenDate:Ljava/lang/String;

    return-object v0
.end method

.method public getHdRatio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->hdRatio:Ljava/lang/String;

    return-object v0
.end method

.method public getJzRatio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->jzRatio:Ljava/lang/String;

    return-object v0
.end method

.method public getNonActiveSeconds()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->nonActTime:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/data/models/Activity;->toInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getShallowSleepMinutes()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->lsNum:I

    return v0
.end method

.method public getSleepScore()D
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->score:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/data/models/Activity;->toDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSpeedKph()D
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->speed:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/data/models/Activity;->toDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStepCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->stepCount:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/data/models/Activity;->toInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSubType()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->subType:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->type:I

    return v0
.end method

.method public getWakeCount()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->wakeTimes:I

    return v0
.end method

.method public getWakeMinutes()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->wakeNum:I

    return v0
.end method

.method public setActiveSeconds(I)V
    .locals 2

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->actTime:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setAllmileage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->allmileage:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setBongValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->bongValue:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setCalorie(D)V
    .locals 3

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->calorie:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setDeepSleepMinutes(I)V
    .locals 0

    .prologue
    .line 228
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->dsNum:I

    .line 229
    return-void
.end method

.method public setDistance(D)V
    .locals 3

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->distance:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->endTime:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setHappenDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->happenDate:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setHdRatio(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->hdRatio:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setJzRatio(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->jzRatio:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setNonActiveSeconds(I)V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->nonActTime:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setShallowSleepMinutes(I)V
    .locals 0

    .prologue
    .line 232
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->lsNum:I

    .line 233
    return-void
.end method

.method public setSleepScore(D)V
    .locals 3

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->score:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setSpeed(D)V
    .locals 3

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->speed:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->startTime:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setStepCount(I)V
    .locals 2

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/Activity;->stepCount:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setSubType(I)V
    .locals 0

    .prologue
    .line 204
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->subType:I

    .line 205
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 196
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->type:I

    .line 197
    return-void
.end method

.method public setWakeCount(I)V
    .locals 0

    .prologue
    .line 240
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->wakeTimes:I

    .line 241
    return-void
.end method

.method public setWakeMinutes(I)V
    .locals 0

    .prologue
    .line 236
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/Activity;->wakeNum:I

    .line 237
    return-void
.end method
