.class public Lcom/yf/smart/weloopx/data/models/BongUploadParams;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private devicedata:[B

.field private mac:Ljava/lang/String;

.field public runinfo:Ljava/lang/String;

.field private timeZone:F

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "1"

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->version:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->runinfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceData()[B
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->devicedata:[B

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()F
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->timeZone:F

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->accessToken:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setDeviceData([B)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->devicedata:[B

    .line 53
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->deviceId:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->mac:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setTimeZone(F)V
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->timeZone:F

    .line 21
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->version:Ljava/lang/String;

    .line 61
    return-void
.end method
