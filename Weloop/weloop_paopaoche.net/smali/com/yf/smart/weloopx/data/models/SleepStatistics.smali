.class public Lcom/yf/smart/weloopx/data/models/SleepStatistics;
.super Lcom/yf/smart/weloopx/data/e;
.source "ProGuard"


# instance fields
.field private deepSleepAvg:I

.field private deepSleepSum:I

.field private shallowSleepAvg:I

.field private shallowSleepSum:I

.field private sleepGoalSum:I

.field private sleepScoreAvg:D

.field private wakeAvg:I

.field private wakeSum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/e;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeepSleepAvg()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->deepSleepAvg:I

    return v0
.end method

.method public getDeepSleepSum()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->deepSleepSum:I

    return v0
.end method

.method public getShallowSleepAvg()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->shallowSleepAvg:I

    return v0
.end method

.method public getShallowSleepSum()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->shallowSleepSum:I

    return v0
.end method

.method public getSleepGoalSum()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->sleepGoalSum:I

    return v0
.end method

.method public getSleepScoreAvg()D
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->sleepScoreAvg:D

    return-wide v0
.end method

.method public getWakeAvg()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->wakeAvg:I

    return v0
.end method

.method public getWakeSum()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->wakeSum:I

    return v0
.end method

.method public setDeepSleepAvg(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->deepSleepAvg:I

    .line 51
    return-void
.end method

.method public setDeepSleepSum(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->deepSleepSum:I

    .line 35
    return-void
.end method

.method public setShallowSleepAvg(I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->shallowSleepAvg:I

    .line 43
    return-void
.end method

.method public setShallowSleepSum(I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->shallowSleepSum:I

    .line 27
    return-void
.end method

.method public setSleepGoalSum(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->sleepGoalSum:I

    .line 67
    return-void
.end method

.method public setSleepScoreAvg(D)V
    .locals 1

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->sleepScoreAvg:D

    .line 59
    return-void
.end method

.method public setWakeAvg(I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->wakeAvg:I

    .line 75
    return-void
.end method

.method public setWakeSum(I)V
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->wakeSum:I

    .line 19
    return-void
.end method
