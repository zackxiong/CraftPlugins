.class public Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;
.super Lcom/yf/smart/weloopx/data/e;
.source "ProGuard"


# instance fields
.field public distance:Ljava/lang/String;

.field public endTime:Ljava/lang/String;

.field public gjflag:Ljava/lang/String;

.field public happenDate:Ljava/lang/String;

.field public ps:Ljava/lang/String;

.field public runid:Ljava/lang/String;

.field public startTime:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/e;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->userId:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->runid:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->happenDate:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->distance:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->ps:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->time:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->gjflag:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->url:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->startTime:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->endTime:Ljava/lang/String;

    return-void
.end method
