.class public Lcom/yf/smart/weloopx/data/models/OneDayBong;
.super Lcom/yf/smart/weloopx/data/e;
.source "ProGuard"


# instance fields
.field private activity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private dailyGain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/DailyGain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/e;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/OneDayBong;->activity:Ljava/util/List;

    return-object v0
.end method

.method public getDailyGain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/DailyGain;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/OneDayBong;->dailyGain:Ljava/util/List;

    return-object v0
.end method

.method public setActivity(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/OneDayBong;->activity:Ljava/util/List;

    .line 20
    return-void
.end method

.method public setDailyGain(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/DailyGain;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/OneDayBong;->dailyGain:Ljava/util/List;

    .line 28
    return-void
.end method
