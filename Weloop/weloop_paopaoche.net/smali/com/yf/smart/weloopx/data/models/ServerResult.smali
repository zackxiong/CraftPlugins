.class public Lcom/yf/smart/weloopx/data/models/ServerResult;
.super Lcom/yf/smart/weloopx/data/e;
.source "ProGuard"


# instance fields
.field private message:Ljava/lang/String;

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/e;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ServerResult;->result:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/ServerResult;->message:Ljava/lang/String;

    return-void
.end method

.method public static getMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 32
    const-class v1, Lcom/yf/smart/weloopx/data/models/ServerResult;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/ServerResult;

    .line 33
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/ServerResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ServerResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/ServerResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ServerResult;->message:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/ServerResult;->result:Ljava/lang/String;

    .line 20
    return-void
.end method
