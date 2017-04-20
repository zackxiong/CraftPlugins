.class public Lcom/yf/gattlib/db/MessageConfig;
.super Lcom/roscopeco/ormdroid/Entity;
.source "ProGuard"


# static fields
.field public static final STATE_BLACK:I = 0x1

.field public static final STATE_WHITE:I


# instance fields
.field public id:I

.field public msgId:B

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/roscopeco/ormdroid/Entity;-><init>()V

    return-void
.end method

.method public static getAllMessageConfig()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/db/MessageConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    const-class v0, Lcom/yf/gattlib/db/MessageConfig;

    invoke-static {v0}, Lcom/roscopeco/ormdroid/Entity;->query(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roscopeco/ormdroid/Query;->executeMulti()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageConfig(B)Lcom/yf/gattlib/db/MessageConfig;
    .locals 3

    .prologue
    .line 16
    const-class v0, Lcom/yf/gattlib/db/MessageConfig;

    invoke-static {v0}, Lcom/roscopeco/ormdroid/Entity;->query(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    const-string v1, "msgId"

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roscopeco/ormdroid/Query;->eql(Ljava/lang/String;Ljava/lang/Object;)Lcom/roscopeco/ormdroid/Query$SQLExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roscopeco/ormdroid/Query;->where(Lcom/roscopeco/ormdroid/Query$SQLExpression;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roscopeco/ormdroid/Query;->execute()Lcom/roscopeco/ormdroid/Entity;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/db/MessageConfig;

    .line 17
    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/yf/gattlib/db/MessageConfig;

    invoke-direct {v0}, Lcom/yf/gattlib/db/MessageConfig;-><init>()V

    .line 19
    iput-byte p0, v0, Lcom/yf/gattlib/db/MessageConfig;->msgId:B

    .line 20
    const/4 v1, 0x0

    iput v1, v0, Lcom/yf/gattlib/db/MessageConfig;->state:I

    .line 22
    :cond_0
    return-object v0
.end method


# virtual methods
.method public save(I)I
    .locals 1

    .prologue
    .line 30
    iput p1, p0, Lcom/yf/gattlib/db/MessageConfig;->state:I

    .line 31
    invoke-super {p0}, Lcom/roscopeco/ormdroid/Entity;->save()I

    move-result v0

    return v0
.end method
