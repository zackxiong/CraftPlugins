.class public Lcom/yf/smart/weloopx/data/models/ApplyFriendModel;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private account:Ljava/lang/String;

.field private beApplyUserId:Ljava/lang/String;

.field private myUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ApplyFriendModel;->beApplyUserId:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ApplyFriendModel;->account:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ApplyFriendModel;->myUserId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ApplyFriendModel;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getBeApplyUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ApplyFriendModel;->beApplyUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getMyUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ApplyFriendModel;->myUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ApplyFriendModel;->account:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setBeApplyUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ApplyFriendModel;->beApplyUserId:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setMyUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ApplyFriendModel;->myUserId:Ljava/lang/String;

    .line 17
    return-void
.end method
