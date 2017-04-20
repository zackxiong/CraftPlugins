.class public Lcom/yf/smart/weloopx/data/models/TrajectoryResponse;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private days:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/TrajectoryModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Lcom/yf/smart/weloopx/data/models/TrajectoryModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/TrajectoryResponse;->days:Ljava/util/List;

    return-object v0
.end method

.method public setDays(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/TrajectoryModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/TrajectoryResponse;->days:Ljava/util/List;

    .line 17
    return-void
.end method
