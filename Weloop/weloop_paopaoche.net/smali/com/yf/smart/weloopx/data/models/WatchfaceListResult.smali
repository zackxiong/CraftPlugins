.class public Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;
.super Lcom/yf/smart/weloopx/data/models/ServerResult;
.source "ProGuard"


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Watchface;",
            ">;"
        }
    .end annotation
.end field

.field private recordCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/models/ServerResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Watchface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;->dataList:Ljava/util/List;

    return-object v0
.end method

.method public getRecordCount()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;->recordCount:I

    return v0
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Watchface;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;->dataList:Ljava/util/List;

    .line 26
    return-void
.end method

.method public setRecordCount(I)V
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;->recordCount:I

    .line 18
    return-void
.end method
