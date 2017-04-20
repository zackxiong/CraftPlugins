.class public Lcom/yf/smart/weloopx/data/models/ReturnHeadPicUrlModel;
.super Lcom/yf/smart/weloopx/data/models/ServerResult;
.source "ProGuard"


# instance fields
.field private headPicUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/models/ServerResult;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ReturnHeadPicUrlModel;->headPicUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHeadPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ReturnHeadPicUrlModel;->headPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setHeadPicUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ReturnHeadPicUrlModel;->headPicUrl:Ljava/lang/String;

    .line 15
    return-void
.end method
