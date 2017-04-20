.class public Lcom/yf/smart/weloopx/data/models/UserData2;
.super Lcom/yf/smart/weloopx/data/models/ServerResult;
.source "ProGuard"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private bindBong:I

.field private bindMAC:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private headPicUrl:Ljava/lang/String;

.field private isSetTarget:I

.field private mobile:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private openId:Ljava/lang/String;

.field private regDate:Ljava/lang/String;

.field private setTargetValue:I

.field private sex:I

.field private stature:I

.field private userId:Ljava/lang/String;

.field private weight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/models/ServerResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getBindBong()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->bindBong:I

    return v0
.end method

.method public getBindMAC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->bindMAC:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->headPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSetTarget()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->isSetTarget:I

    return v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getRegDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->regDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSetTargetValue()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->setTargetValue:I

    return v0
.end method

.method public getSex()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->sex:I

    return v0
.end method

.method public getStature()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->stature:I

    return v0
.end method

.method public getTargetValue()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->setTargetValue:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->weight:I

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->accessToken:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setBindBong(I)V
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->bindBong:I

    .line 25
    return-void
.end method

.method public setBindMAC(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->bindMAC:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->birthday:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setHeadPicUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->headPicUrl:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setIsSetTarget(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->isSetTarget:I

    .line 41
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->mobile:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->nickname:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->openId:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setRegDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->regDate:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setSetTargetValue(I)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->setTargetValue:I

    .line 121
    return-void
.end method

.method public setSex(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->sex:I

    .line 65
    return-void
.end method

.method public setStature(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->stature:I

    .line 73
    return-void
.end method

.method public setTargetValue(I)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->setTargetValue:I

    .line 105
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->userId:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setWeight(I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserData2;->weight:I

    .line 81
    return-void
.end method
