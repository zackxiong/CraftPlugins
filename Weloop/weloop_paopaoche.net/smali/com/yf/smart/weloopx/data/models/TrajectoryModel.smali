.class public Lcom/yf/smart/weloopx/data/models/TrajectoryModel;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private data:Ljava/lang/String;

.field private happenDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/TrajectoryModel;->happenDate:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/TrajectoryModel;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/TrajectoryModel;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getHappenDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/TrajectoryModel;->happenDate:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/TrajectoryModel;->data:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setHappenDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/TrajectoryModel;->happenDate:Ljava/lang/String;

    .line 24
    return-void
.end method
