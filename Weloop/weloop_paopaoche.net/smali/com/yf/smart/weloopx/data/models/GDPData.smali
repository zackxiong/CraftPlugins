.class public Lcom/yf/smart/weloopx/data/models/GDPData;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private hdop:D

.field private lat:D

.field private lon:D

.field private vel:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide v0, p0, Lcom/yf/smart/weloopx/data/models/GDPData;->lon:D

    .line 11
    iput-wide v0, p0, Lcom/yf/smart/weloopx/data/models/GDPData;->lat:D

    .line 12
    iput-wide v0, p0, Lcom/yf/smart/weloopx/data/models/GDPData;->vel:D

    .line 13
    iput-wide v0, p0, Lcom/yf/smart/weloopx/data/models/GDPData;->hdop:D

    .line 14
    return-void
.end method


# virtual methods
.method public getHdop()D
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/GDPData;->hdop:D

    return-wide v0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/GDPData;->lat:D

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/GDPData;->lon:D

    return-wide v0
.end method

.method public getVel()D
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/GDPData;->vel:D

    return-wide v0
.end method

.method public setHdop(D)V
    .locals 1

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/GDPData;->hdop:D

    .line 38
    return-void
.end method

.method public setLat(D)V
    .locals 1

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/GDPData;->lat:D

    .line 26
    return-void
.end method

.method public setLon(D)V
    .locals 1

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/GDPData;->lon:D

    .line 20
    return-void
.end method

.method public setVel(D)V
    .locals 1

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/GDPData;->vel:D

    .line 32
    return-void
.end method
