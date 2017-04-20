.class public Lcom/yf/smart/weloopx/data/models/MsgNotiNumServerResult;
.super Lcom/yf/smart/weloopx/data/e;
.source "ProGuard"


# instance fields
.field private count:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/e;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/MsgNotiNumServerResult;->result:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/MsgNotiNumServerResult;->message:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/MsgNotiNumServerResult;->count:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/MsgNotiNumServerResult;->count:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/MsgNotiNumServerResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/MsgNotiNumServerResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/MsgNotiNumServerResult;->count:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/MsgNotiNumServerResult;->message:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/MsgNotiNumServerResult;->result:Ljava/lang/String;

    .line 26
    return-void
.end method
