.class public Lcom/yf/gattlib/client/a/a/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 11
    invoke-static {}, Lcom/yf/gattlib/db/MessageConfig;->getAllMessageConfig()Ljava/util/List;

    move-result-object v1

    .line 12
    const/4 v2, 0x6

    new-array v2, v2, [B

    sget-byte v3, Lcom/yf/gattlib/client/a/a;->a:B

    aput-byte v3, v2, v0

    sget-byte v3, Lcom/yf/gattlib/client/a/a;->a:B

    aput-byte v3, v2, v5

    const/4 v3, 0x2

    sget-byte v4, Lcom/yf/gattlib/client/a/a;->a:B

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    sget-byte v4, Lcom/yf/gattlib/client/a/a;->a:B

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    sget-byte v4, Lcom/yf/gattlib/client/a/a;->a:B

    aput-byte v4, v2, v3

    const/4 v3, 0x5

    sget-byte v4, Lcom/yf/gattlib/client/a/a;->a:B

    aput-byte v4, v2, v3

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/db/MessageConfig;

    .line 16
    iget v4, v0, Lcom/yf/gattlib/db/MessageConfig;->state:I

    if-ne v4, v5, :cond_1

    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 17
    iget-byte v0, v0, Lcom/yf/gattlib/db/MessageConfig;->msgId:B

    aput-byte v0, v2, v1

    .line 18
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-object v2

    :cond_1
    move v0, v1

    goto :goto_1
.end method
