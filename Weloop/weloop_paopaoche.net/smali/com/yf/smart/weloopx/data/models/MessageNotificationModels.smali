.class public Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field message:Ljava/lang/String;

.field msgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;",
            ">;"
        }
    .end annotation
.end field

.field result:Ljava/lang/String;

.field userId:Ljava/lang/String;

.field userList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Friendmodel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;->result:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;->message:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;->msgList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Friendmodel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;->userList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;->message:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setMsgList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;->msgList:Ljava/util/ArrayList;

    .line 38
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;->result:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;->userId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setUserList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Friendmodel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;->userList:Ljava/util/ArrayList;

    .line 46
    return-void
.end method
