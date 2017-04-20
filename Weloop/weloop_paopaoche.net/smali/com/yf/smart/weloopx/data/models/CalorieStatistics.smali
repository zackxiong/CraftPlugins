.class public Lcom/yf/smart/weloopx/data/models/CalorieStatistics;
.super Lcom/yf/smart/weloopx/data/e;
.source "ProGuard"


# instance fields
.field private activePointAvg:I

.field private activePointSum:I

.field private calorieAvg:D

.field private calorieGoalSum:D

.field private calorieSum:D

.field private distanceAvg:D

.field private distanceSum:D

.field private stepCountAvg:I

.field private stepCountSum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/e;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivePointAvg()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->activePointAvg:I

    return v0
.end method

.method public getActivePointSum()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->activePointSum:I

    return v0
.end method

.method public getCalorieAvg()D
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->calorieAvg:D

    return-wide v0
.end method

.method public getCalorieGoalSum()D
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->calorieGoalSum:D

    return-wide v0
.end method

.method public getCalorieSum()D
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->calorieSum:D

    return-wide v0
.end method

.method public getDistanceAvg()D
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->distanceAvg:D

    return-wide v0
.end method

.method public getDistanceSum()D
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->distanceSum:D

    return-wide v0
.end method

.method public getStepCountAvg()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->stepCountAvg:I

    return v0
.end method

.method public getStepCountSum()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->stepCountSum:I

    return v0
.end method

.method public setActivePointAvg(I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->activePointAvg:I

    .line 60
    return-void
.end method

.method public setActivePointSum(I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->activePointSum:I

    .line 28
    return-void
.end method

.method public setCalorieAvg(D)V
    .locals 1

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->calorieAvg:D

    .line 68
    return-void
.end method

.method public setCalorieGoalSum(D)V
    .locals 1

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->calorieGoalSum:D

    .line 84
    return-void
.end method

.method public setCalorieSum(D)V
    .locals 1

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->calorieSum:D

    .line 36
    return-void
.end method

.method public setDistanceAvg(D)V
    .locals 1

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->distanceAvg:D

    .line 76
    return-void
.end method

.method public setDistanceSum(D)V
    .locals 1

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->distanceSum:D

    .line 44
    return-void
.end method

.method public setStepCountAvg(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->stepCountAvg:I

    .line 52
    return-void
.end method

.method public setStepCountSum(I)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->stepCountSum:I

    .line 20
    return-void
.end method
