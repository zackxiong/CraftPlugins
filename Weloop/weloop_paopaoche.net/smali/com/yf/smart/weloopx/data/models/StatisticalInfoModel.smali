.class public Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private APP_VERSION:Ljava/lang/String;

.field private DEVICE_CONNCTED_TIMES:Ljava/lang/String;

.field private DEVICE_DISCONNECTED_TIMES:Ljava/lang/String;

.field private DEVICE_FIRME_VERSION:Ljava/lang/String;

.field private DEVICE_ID:Ljava/lang/String;

.field private HAPPEN_DATE:Ljava/lang/String;

.field private IS_SUBMIT:Ljava/lang/String;

.field private PHONE_MODEL:Ljava/lang/String;

.field private PHONE_NUM:Ljava/lang/String;

.field private PHONE_SYSTEM_VERSION:Ljava/lang/String;

.field private PUSH_MSG_NUM:Ljava/lang/String;

.field private SYNC_DATA_NUM:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->PHONE_MODEL:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->PHONE_NUM:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->PHONE_SYSTEM_VERSION:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->DEVICE_ID:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->APP_VERSION:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->DEVICE_FIRME_VERSION:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->DEVICE_CONNCTED_TIMES:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->DEVICE_DISCONNECTED_TIMES:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->PUSH_MSG_NUM:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->SYNC_DATA_NUM:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->HAPPEN_DATE:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->IS_SUBMIT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPP_VERSION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->APP_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getDEVICE_CONNCTED_TIMES()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->DEVICE_CONNCTED_TIMES:Ljava/lang/String;

    return-object v0
.end method

.method public getDEVICE_DISCONNECTED_TIMES()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->DEVICE_DISCONNECTED_TIMES:Ljava/lang/String;

    return-object v0
.end method

.method public getDEVICE_FIRME_VERSION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->DEVICE_FIRME_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getDEVICE_ID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->DEVICE_ID:Ljava/lang/String;

    return-object v0
.end method

.method public getHAPPEN_DATE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->HAPPEN_DATE:Ljava/lang/String;

    return-object v0
.end method

.method public getIS_SUBMIT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->IS_SUBMIT:Ljava/lang/String;

    return-object v0
.end method

.method public getPHONE_MODEL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->PHONE_MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getPHONE_NUM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->PHONE_NUM:Ljava/lang/String;

    return-object v0
.end method

.method public getPHONE_SYSTEM_VERSION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->PHONE_SYSTEM_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getPUSH_MSG_NUM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->PUSH_MSG_NUM:Ljava/lang/String;

    return-object v0
.end method

.method public getSYNC_DATA_NUM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->SYNC_DATA_NUM:Ljava/lang/String;

    return-object v0
.end method

.method public setAPP_VERSION(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->APP_VERSION:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setDEVICE_CONNCTED_TIMES(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->DEVICE_CONNCTED_TIMES:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setDEVICE_DISCONNECTED_TIMES(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->DEVICE_DISCONNECTED_TIMES:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setDEVICE_FIRME_VERSION(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->DEVICE_FIRME_VERSION:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setDEVICE_ID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->DEVICE_ID:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setHAPPEN_DATE(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->HAPPEN_DATE:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setIS_SUBMIT(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->IS_SUBMIT:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setPHONE_MODEL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->PHONE_MODEL:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setPHONE_NUM(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->PHONE_NUM:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setPHONE_SYSTEM_VERSION(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->PHONE_SYSTEM_VERSION:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setPUSH_MSG_NUM(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->PUSH_MSG_NUM:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setSYNC_DATA_NUM(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->SYNC_DATA_NUM:Ljava/lang/String;

    .line 99
    return-void
.end method
