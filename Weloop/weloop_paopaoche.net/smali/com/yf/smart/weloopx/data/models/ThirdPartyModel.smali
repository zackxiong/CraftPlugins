.class public Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;
.super Lcom/yf/smart/weloopx/data/models/ServerResult;
.source "ProGuard"


# instance fields
.field accessToken:Ljava/lang/String;

.field bindBong:Ljava/lang/String;

.field bindMAC:Ljava/lang/String;

.field birthday:Ljava/lang/String;

.field headPicUrl:Ljava/lang/String;

.field isSetTarget:Ljava/lang/String;

.field nickname:Ljava/lang/String;

.field pointCount:Ljava/lang/String;

.field regDate:Ljava/lang/String;

.field setTargetValue:Ljava/lang/String;

.field sex:Ljava/lang/String;

.field stature:Ljava/lang/String;

.field totalDistance:Ljava/lang/String;

.field totalStep:Ljava/lang/String;

.field userId:Ljava/lang/String;

.field weight:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/models/ServerResult;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->accessToken:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->pointCount:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->totalDistance:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->totalStep:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->bindBong:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->regDate:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->isSetTarget:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->headPicUrl:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->nickname:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->sex:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->stature:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->weight:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->birthday:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->bindMAC:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->userId:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->setTargetValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getBindBong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->bindBong:Ljava/lang/String;

    return-object v0
.end method

.method public getBindMAC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->bindMAC:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->headPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->headPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSetTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->isSetTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPointCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->pointCount:Ljava/lang/String;

    return-object v0
.end method

.method public getRegDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->regDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSetTargetValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->setTargetValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public getStature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->stature:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalDistance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->totalDistance:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalStep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->totalStep:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->weight:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->accessToken:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setBindBong(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->bindBong:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setBindMAC(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->bindMAC:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->birthday:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setHeadPic(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->headPicUrl:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setHeadPicUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->headPicUrl:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setIsSetTarget(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->isSetTarget:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->nickname:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setPointCount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->pointCount:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setRegDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->regDate:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setSetTargetValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->setTargetValue:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->sex:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setStature(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->stature:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setTotalDistance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->totalDistance:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setTotalStep(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->totalStep:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->userId:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setWeight(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ThirdPartyModel;->weight:Ljava/lang/String;

    .line 136
    return-void
.end method
