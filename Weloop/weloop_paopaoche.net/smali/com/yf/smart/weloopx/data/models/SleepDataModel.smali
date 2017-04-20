.class public Lcom/yf/smart/weloopx/data/models/SleepDataModel;
.super Lcom/yf/gattlib/db/daliy/modes/IdModel;
.source "ProGuard"


# static fields
.field private static final serialVersionUID:J = 0x5312639f41c9f843L


# instance fields
.field public beginTime:Ljava/lang/String;

.field public clearTime:I

.field public deepSleepTime:I

.field public endTime:Ljava/lang/String;

.field public happenDate:Ljava/lang/String;

.field public id:I

.field public isSubmit:I

.field public mid:Ljava/lang/String;

.field public shallowSleepTime:I

.field public totalTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yf/gattlib/db/daliy/modes/IdModel;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/yf/gattlib/db/daliy/modes/IdModel;-><init>()V

    .line 41
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/SleepDataModel;->deepSleepTime:I

    .line 42
    iput p2, p0, Lcom/yf/smart/weloopx/data/models/SleepDataModel;->shallowSleepTime:I

    .line 43
    iput p3, p0, Lcom/yf/smart/weloopx/data/models/SleepDataModel;->clearTime:I

    .line 44
    iput p4, p0, Lcom/yf/smart/weloopx/data/models/SleepDataModel;->totalTime:I

    .line 45
    iput-object p5, p0, Lcom/yf/smart/weloopx/data/models/SleepDataModel;->happenDate:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private getShortTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-static {p1}, Lcom/yf/smart/weloopx/g/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAwakeTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/SleepDataModel;->clearTime:I

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/m;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeepSleepTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/SleepDataModel;->deepSleepTime:I

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/m;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/SleepDataModel;->totalTime:I

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/m;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLightSleepTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/SleepDataModel;->shallowSleepTime:I

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/m;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgressValues()[I
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 85
    const/4 v1, 0x0

    iget v2, p0, Lcom/yf/smart/weloopx/data/models/SleepDataModel;->clearTime:I

    aput v2, v0, v1

    .line 86
    const/4 v1, 0x1

    iget v2, p0, Lcom/yf/smart/weloopx/data/models/SleepDataModel;->clearTime:I

    iget v3, p0, Lcom/yf/smart/weloopx/data/models/SleepDataModel;->shallowSleepTime:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 87
    const/4 v1, 0x2

    iget v2, p0, Lcom/yf/smart/weloopx/data/models/SleepDataModel;->totalTime:I

    aput v2, v0, v1

    .line 88
    return-object v0
.end method

.method public getTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070226

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yf/smart/weloopx/data/models/SleepDataModel;->beginTime:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/yf/smart/weloopx/data/models/SleepDataModel;->getShortTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yf/smart/weloopx/data/models/SleepDataModel;->endTime:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/yf/smart/weloopx/data/models/SleepDataModel;->getShortTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
