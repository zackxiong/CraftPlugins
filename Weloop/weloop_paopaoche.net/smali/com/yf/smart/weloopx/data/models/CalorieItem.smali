.class public Lcom/yf/smart/weloopx/data/models/CalorieItem;
.super Lcom/yf/smart/weloopx/data/e;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private activePoint:I

.field private calorie:D

.field private calorieValue:D

.field private distance:D

.field private happenDate:Ljava/lang/String;

.field private stepCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/e;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActivePoint()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/CalorieItem;->activePoint:I

    return v0
.end method

.method public getCalorie()D
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/CalorieItem;->calorie:D

    return-wide v0
.end method

.method public getCalorieGoal()D
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/CalorieItem;->calorieValue:D

    return-wide v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/CalorieItem;->distance:D

    return-wide v0
.end method

.method public getHappenDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/CalorieItem;->happenDate:Ljava/lang/String;

    return-object v0
.end method

.method public getStepCount()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/CalorieItem;->stepCount:I

    return v0
.end method

.method public setActivePoint(I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/CalorieItem;->activePoint:I

    .line 60
    return-void
.end method

.method public setCalorie(D)V
    .locals 1

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/CalorieItem;->calorie:D

    .line 52
    return-void
.end method

.method public setCalorieGoal(D)V
    .locals 1

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/CalorieItem;->calorieValue:D

    .line 56
    return-void
.end method

.method public setDistance(D)V
    .locals 1

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/CalorieItem;->distance:D

    .line 64
    return-void
.end method

.method public setHappenDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/CalorieItem;->happenDate:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setStepCount(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/CalorieItem;->stepCount:I

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/models/CalorieItem;->happenDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": stepCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/data/models/CalorieItem;->stepCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", calorie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/yf/smart/weloopx/data/models/CalorieItem;->calorie:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", calorieValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/yf/smart/weloopx/data/models/CalorieItem;->calorieValue:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activePoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/data/models/CalorieItem;->activePoint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/yf/smart/weloopx/data/models/CalorieItem;->distance:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
