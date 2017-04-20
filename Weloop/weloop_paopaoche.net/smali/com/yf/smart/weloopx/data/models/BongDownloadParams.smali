.class public Lcom/yf/smart/weloopx/data/models/BongDownloadParams;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private additionalDays:I

.field private deviceId:Ljava/lang/String;

.field private happenDate:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private timeZone:F

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "1"

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAdditionalDays()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->additionalDays:I

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getHappenDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->happenDate:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()F
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->timeZone:F

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->accessToken:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setAdditionalDays(I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->additionalDays:I

    .line 42
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->deviceId:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setHappenDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->happenDate:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->mac:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setTimeZone(F)V
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->timeZone:F

    .line 18
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->version:Ljava/lang/String;

    .line 72
    return-void
.end method
