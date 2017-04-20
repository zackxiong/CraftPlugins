.class public Lcom/yf/smart/weloopx/data/models/SyncAndOTAStatisticalModel;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public happenDate:Ljava/lang/String;

.field public otaDuration:I

.field public otaSize:I

.field public syncDataDuration:I

.field public syncDataSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v1, p0, Lcom/yf/smart/weloopx/data/models/SyncAndOTAStatisticalModel;->syncDataSize:I

    .line 9
    iput v1, p0, Lcom/yf/smart/weloopx/data/models/SyncAndOTAStatisticalModel;->syncDataDuration:I

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/SyncAndOTAStatisticalModel;->happenDate:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/yf/smart/weloopx/data/models/SyncAndOTAStatisticalModel;->otaSize:I

    .line 12
    iput v1, p0, Lcom/yf/smart/weloopx/data/models/SyncAndOTAStatisticalModel;->otaDuration:I

    return-void
.end method
