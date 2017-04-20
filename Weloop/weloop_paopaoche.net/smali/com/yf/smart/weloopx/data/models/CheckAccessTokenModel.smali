.class public Lcom/yf/smart/weloopx/data/models/CheckAccessTokenModel;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private message:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private tokenIsValid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/CheckAccessTokenModel;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/CheckAccessTokenModel;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenIsValid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/CheckAccessTokenModel;->tokenIsValid:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/CheckAccessTokenModel;->message:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/CheckAccessTokenModel;->result:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setTokenIsValid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/CheckAccessTokenModel;->tokenIsValid:Ljava/lang/String;

    .line 33
    return-void
.end method
