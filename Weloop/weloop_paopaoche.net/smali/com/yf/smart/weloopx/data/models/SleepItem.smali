.class public Lcom/yf/smart/weloopx/data/models/SleepItem;
.super Lcom/yf/smart/weloopx/data/e;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private dsNum:I

.field private happenDate:Ljava/lang/String;

.field private lsNum:I

.field private score:D

.field private sleepValue:I

.field private wakeNum:I


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

.method public getDeepSleepMinutes()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/SleepItem;->dsNum:I

    return v0
.end method

.method public getHappenDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/SleepItem;->happenDate:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()D
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/SleepItem;->score:D

    return-wide v0
.end method

.method public getShallowSleepMinutes()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/SleepItem;->lsNum:I

    return v0
.end method

.method public getSleepGoalMinutes()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/SleepItem;->sleepValue:I

    return v0
.end method

.method public getWakeMinutes()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/SleepItem;->wakeNum:I

    return v0
.end method

.method public setDeepSleepMinutes(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/SleepItem;->dsNum:I

    .line 48
    return-void
.end method

.method public setHappenDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/SleepItem;->happenDate:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setScore(D)V
    .locals 1

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/SleepItem;->score:D

    .line 64
    return-void
.end method

.method public setShallowSleepMinutes(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/SleepItem;->lsNum:I

    .line 52
    return-void
.end method

.method public setSleepGoalMinutes(I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/SleepItem;->sleepValue:I

    .line 60
    return-void
.end method

.method public setWakeMinutes(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/SleepItem;->wakeNum:I

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/models/SleepItem;->happenDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": dsNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/data/models/SleepItem;->dsNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lsNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/data/models/SleepItem;->lsNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wakeNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/data/models/SleepItem;->wakeNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sleepValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/data/models/SleepItem;->sleepValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/yf/smart/weloopx/data/models/SleepItem;->score:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
