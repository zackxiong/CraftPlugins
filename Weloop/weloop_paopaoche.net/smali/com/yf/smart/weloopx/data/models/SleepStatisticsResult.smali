.class public Lcom/yf/smart/weloopx/data/models/SleepStatisticsResult;
.super Lcom/yf/smart/weloopx/data/models/ServerResult;
.source "ProGuard"


# instance fields
.field private days:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/SleepItem;",
            ">;"
        }
    .end annotation
.end field

.field private maxsleep:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/models/ServerResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getDays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/SleepItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/SleepStatisticsResult;->days:Ljava/util/List;

    return-object v0
.end method

.method public getMaxSleepMinutes()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/SleepStatisticsResult;->maxsleep:I

    return v0
.end method