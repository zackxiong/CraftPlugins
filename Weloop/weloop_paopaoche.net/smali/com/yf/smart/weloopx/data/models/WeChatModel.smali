.class public Lcom/yf/smart/weloopx/data/models/WeChatModel;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private access_token:Ljava/lang/String;

.field private expires_in:Ljava/lang/String;

.field private openid:Ljava/lang/String;

.field private refresh_token:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private unionid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/WeChatModel;->access_token:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/WeChatModel;->expires_in:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/WeChatModel;->refresh_token:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/WeChatModel;->openid:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/WeChatModel;->scope:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/WeChatModel;->unionid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccess_token()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WeChatModel;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires_in()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WeChatModel;->expires_in:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WeChatModel;->openid:Ljava/lang/String;

    return-object v0
.end method

.method public getRefresh_token()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WeChatModel;->refresh_token:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WeChatModel;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getUnionid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WeChatModel;->unionid:Ljava/lang/String;

    return-object v0
.end method

.method public setAccess_token(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WeChatModel;->access_token:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setExpires_in(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WeChatModel;->expires_in:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setOpenid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WeChatModel;->openid:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setRefresh_token(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WeChatModel;->refresh_token:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WeChatModel;->scope:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setUnionid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WeChatModel;->unionid:Ljava/lang/String;

    .line 61
    return-void
.end method
