.class public Lcom/yf/smart/weloopx/data/WeatherResult;
.super Lcom/yf/smart/weloopx/data/models/ServerResult;
.source "ProGuard"


# instance fields
.field PM25:Ljava/lang/String;

.field temperature:Ljava/lang/String;

.field weather:Ljava/lang/String;

.field wind:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/models/ServerResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getPM25()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/WeatherResult;->PM25:Ljava/lang/String;

    return-object v0
.end method

.method public getTemperature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/WeatherResult;->temperature:Ljava/lang/String;

    return-object v0
.end method

.method public getWeather()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/WeatherResult;->weather:Ljava/lang/String;

    return-object v0
.end method

.method public getWind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/WeatherResult;->wind:Ljava/lang/String;

    return-object v0
.end method

.method public setPM25(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/WeatherResult;->PM25:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setTemperature(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/WeatherResult;->temperature:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setWeather(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/WeatherResult;->weather:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setWind(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/WeatherResult;->wind:Ljava/lang/String;

    .line 44
    return-void
.end method
