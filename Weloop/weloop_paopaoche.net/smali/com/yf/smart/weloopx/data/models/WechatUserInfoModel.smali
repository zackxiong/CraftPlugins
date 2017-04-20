.class public Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;
.super Lcom/yf/smart/weloopx/data/models/ServerResult;
.source "ProGuard"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private bindBong:Ljava/lang/String;

.field private bindMAC:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private headPicUrl:Ljava/lang/String;

.field private headimgurl:Ljava/lang/String;

.field private isSetTarget:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private openid:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private regDate:Ljava/lang/String;

.field private setTargetValue:Ljava/lang/String;

.field private sex:Ljava/lang/String;

.field private stature:Ljava/lang/String;

.field private unionid:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private weight:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/models/ServerResult;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->userId:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->accessToken:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->bindBong:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->regDate:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->isSetTarget:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->setTargetValue:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->headPicUrl:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->nickname:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->sex:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->stature:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->weight:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->birthday:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->bindMAC:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getBindBong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->bindBong:Ljava/lang/String;

    return-object v0
.end method

.method public getBindMAC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->bindMAC:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->headPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadimgurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->headimgurl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSetTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->isSetTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->openid:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getRegDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->regDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSetTargetValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->setTargetValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public getStature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->stature:Ljava/lang/String;

    return-object v0
.end method

.method public getUnionid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->unionid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->weight:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->accessToken:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setBindBong(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->bindBong:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setBindMAC(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->bindMAC:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->birthday:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->city:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->country:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setHeadPicUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->headPicUrl:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setHeadimgurl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->headimgurl:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setIsSetTarget(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->isSetTarget:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->language:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->nickname:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setOpenid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->openid:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->province:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setRegDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->regDate:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setSetTargetValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->setTargetValue:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->sex:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setStature(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->stature:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setUnionid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->unionid:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->userId:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setWeight(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->weight:Ljava/lang/String;

    .line 171
    return-void
.end method
