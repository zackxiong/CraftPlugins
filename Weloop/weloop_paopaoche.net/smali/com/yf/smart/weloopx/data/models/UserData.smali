.class public Lcom/yf/smart/weloopx/data/models/UserData;
.super Lcom/yf/smart/weloopx/data/e;
.source "ProGuard"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private account:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private bindDevice:Ljava/lang/String;

.field private bindToBong:I

.field private birthday:Ljava/lang/String;

.field private calorieValue:I

.field private channelId:Ljava/lang/String;

.field private checkCode:Ljava/lang/String;

.field private checkCodeResult:Ljava/lang/String;

.field private clientType:I

.field private deviceToken:Ljava/lang/String;

.field private encryptedAccount:Ljava/lang/String;

.field private happenDate:Ljava/util/Date;

.field private headPic:Ljava/io/File;

.field private headPicAddress:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private newPwd:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private oldPwd:Ljava/lang/String;

.field private openId:Ljava/lang/String;

.field private pwd:Ljava/lang/String;

.field private sex:I

.field private stature:I

.field private userId:Ljava/lang/String;

.field private userType:I

.field private weight:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 184
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/e;-><init>()V

    .line 17
    iput v1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->userType:I

    .line 18
    iput v1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->clientType:I

    .line 26
    iput v1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->sex:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->userId:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->stature:I

    .line 32
    iput v1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->weight:I

    .line 36
    iput v1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->calorieValue:I

    .line 40
    iput v1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->bindToBong:I

    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 161
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/e;-><init>()V

    .line 17
    iput v1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->userType:I

    .line 18
    iput v1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->clientType:I

    .line 26
    iput v1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->sex:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->userId:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->stature:I

    .line 32
    iput v1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->weight:I

    .line 36
    iput v1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->calorieValue:I

    .line 40
    iput v1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->bindToBong:I

    .line 163
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->account:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Lcom/yf/smart/weloopx/data/models/UserData;->pwd:Ljava/lang/String;

    .line 165
    iput-object p3, p0, Lcom/yf/smart/weloopx/data/models/UserData;->checkCode:Ljava/lang/String;

    .line 166
    iput p4, p0, Lcom/yf/smart/weloopx/data/models/UserData;->userType:I

    .line 167
    iput p5, p0, Lcom/yf/smart/weloopx/data/models/UserData;->clientType:I

    .line 168
    iput-object p6, p0, Lcom/yf/smart/weloopx/data/models/UserData;->channelId:Ljava/lang/String;

    .line 169
    iput-object p7, p0, Lcom/yf/smart/weloopx/data/models/UserData;->deviceToken:Ljava/lang/String;

    .line 170
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getBindDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->bindDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getBindToBong()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->bindToBong:I

    return v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCalorieValue()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->calorieValue:I

    return v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->checkCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckCodeResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->checkCodeResult:Ljava/lang/String;

    return-object v0
.end method

.method public getClientType()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->clientType:I

    return v0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->deviceToken:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptedAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->encryptedAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getHappenDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->happenDate:Ljava/util/Date;

    return-object v0
.end method

.method public getHeadPic()Ljava/io/File;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->headPic:Ljava/io/File;

    return-object v0
.end method

.method public getHeadPicAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->headPicAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getNewPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->newPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationDeviceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->deviceToken:Ljava/lang/String;

    return-object v0
.end method

.method public getOldPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->oldPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->sex:I

    return v0
.end method

.method public getStature()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->stature:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->userType:I

    return v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserData;->weight:I

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->accessToken:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->account:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->appKey:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setBindDevice(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->bindDevice:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setBindToBong(I)V
    .locals 0

    .prologue
    .line 272
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->bindToBong:I

    .line 273
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->birthday:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setCalorieValue(I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->calorieValue:I

    .line 75
    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->channelId:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setCheckCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->checkCode:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setCheckCodeResult(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->checkCodeResult:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setClientType(I)V
    .locals 0

    .prologue
    .line 240
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->clientType:I

    .line 241
    return-void
.end method

.method public setDeviceToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->deviceToken:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setEncryptedAccount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->encryptedAccount:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setHappenDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->happenDate:Ljava/util/Date;

    .line 83
    return-void
.end method

.method public setHeadPic(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->headPic:Ljava/io/File;

    .line 139
    return-void
.end method

.method public setHeadPicAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->headPicAddress:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->latitude:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->longitude:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setNewPwd(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->newPwd:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->nickname:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setNotificationChannelId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->channelId:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setNotificationDeviceToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->deviceToken:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setOldPwd(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->oldPwd:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->openId:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->pwd:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setSex(I)V
    .locals 0

    .prologue
    .line 154
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->sex:I

    .line 155
    return-void
.end method

.method public setStature(I)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->stature:I

    .line 107
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->userId:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setUserType(I)V
    .locals 0

    .prologue
    .line 232
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->userType:I

    .line 233
    return-void
.end method

.method public setWeight(I)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserData;->weight:I

    .line 115
    return-void
.end method
