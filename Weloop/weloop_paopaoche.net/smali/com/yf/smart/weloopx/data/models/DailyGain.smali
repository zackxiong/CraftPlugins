.class public Lcom/yf/smart/weloopx/data/models/DailyGain;
.super Lcom/yf/smart/weloopx/data/e;
.source "ProGuard"


# instance fields
.field private activePoint:I

.field private calorie:D

.field private calorieValue:D

.field private distance:D

.field private dsNum:I

.field private happenDate:Ljava/lang/String;

.field private sleepNum:I

.field private sleepTimes:I

.field private stepCount:I

.field private stillTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/e;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivePoint()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/DailyGain;->activePoint:I

    return v0
.end method

.method public getCalorie()D
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/DailyGain;->calorie:D

    return-wide v0
.end method

.method public getCalorieGoal()D
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/DailyGain;->calorieValue:D

    return-wide v0
.end method

.method public getDeepSleepMinutes()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/DailyGain;->dsNum:I

    return v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/DailyGain;->distance:D

    return-wide v0
.end method

.method public getHappenDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/DailyGain;->happenDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSleepCount()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/DailyGain;->sleepTimes:I

    return v0
.end method

.method public getSleepMinutes()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/DailyGain;->sleepNum:I

    return v0
.end method

.method public getStepCount()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/DailyGain;->stepCount:I

    return v0
.end method

.method public getStillSeconds()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/DailyGain;->stillTime:I

    return v0
.end method

.method public setActivePoint(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/DailyGain;->activePoint:I

    .line 85
    return-void
.end method

.method public setCalorie(D)V
    .locals 1

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/DailyGain;->calorie:D

    .line 36
    return-void
.end method

.method public setCalorieGoal(D)V
    .locals 1

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/DailyGain;->calorieValue:D

    .line 93
    return-void
.end method

.method public setDeepSleepMinutes(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/DailyGain;->dsNum:I

    .line 44
    return-void
.end method

.method public setDistance(D)V
    .locals 1

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/DailyGain;->distance:D

    .line 28
    return-void
.end method

.method public setHappenDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/DailyGain;->happenDate:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setSleepCount(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/DailyGain;->sleepTimes:I

    .line 52
    return-void
.end method

.method public setSleepMinutes(I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/DailyGain;->sleepNum:I

    .line 60
    return-void
.end method

.method public setStepCount(I)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/DailyGain;->stepCount:I

    .line 20
    return-void
.end method

.method public setStillSeconds(I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/DailyGain;->stillTime:I

    .line 68
    return-void
.end method
