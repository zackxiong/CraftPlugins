.class public Lcom/yf/smart/weloopx/data/models/RemindersModel;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private dateAndTime:Ljava/lang/String;

.field private day:Ljava/lang/String;

.field private hour:Ljava/lang/String;

.field private id:I

.field private min:Ljava/lang/String;

.field private month:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private year:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->id:I

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->time:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->msg:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->min:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->hour:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->year:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->month:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->day:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->dateAndTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDateAndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->dateAndTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->day:Ljava/lang/String;

    return-object v0
.end method

.method public getHour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->hour:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->id:I

    return v0
.end method

.method public getMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->min:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->month:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->year:Ljava/lang/String;

    return-object v0
.end method

.method public setDateAndTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->dateAndTime:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setDay(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->day:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setHour(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->hour:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->id:I

    .line 57
    return-void
.end method

.method public setMin(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->min:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->month:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->msg:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->time:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/RemindersModel;->year:Ljava/lang/String;

    .line 33
    return-void
.end method
