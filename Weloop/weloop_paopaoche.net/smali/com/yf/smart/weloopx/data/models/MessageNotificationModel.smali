.class public Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;
.super Lcom/yf/smart/weloopx/data/models/Friendmodel;
.source "ProGuard"


# instance fields
.field content:Ljava/lang/String;

.field headPicUrl:Ljava/lang/String;

.field msgTime:Ljava/lang/String;

.field msgType:Ljava/lang/String;

.field pageUrl:Ljava/lang/String;

.field picUrl:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/models/Friendmodel;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->msgType:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->content:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->msgTime:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->headPicUrl:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->type:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->picUrl:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->pageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->headPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->msgTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->msgType:Ljava/lang/String;

    return-object v0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->pageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->content:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setHeadPicUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->headPicUrl:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setMsgTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->msgTime:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setMsgType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->msgType:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setPageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->pageUrl:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->picUrl:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->type:Ljava/lang/String;

    .line 22
    return-void
.end method
