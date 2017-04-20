.class Lcom/yf/gattlib/server/a/b/a/a$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/server/a/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:[B

.field b:B

.field c:I

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/yf/gattlib/server/a/b/a/a;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/server/a/b/a/a;[B)V
    .locals 6

    .prologue
    .line 389
    iput-object p1, p0, Lcom/yf/gattlib/server/a/b/a/a$a;->e:Lcom/yf/gattlib/server/a/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p2, p0, Lcom/yf/gattlib/server/a/b/a/a$a;->a:[B

    .line 391
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a$a;->a:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/yf/gattlib/server/a/b/a/a$a;->b:B

    .line 392
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a$a;->a:[B

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/yf/gattlib/server/a/b/a/a$a;->c:I

    .line 394
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/yf/gattlib/server/a/b/a/a$a;->d:Ljava/util/Map;

    .line 395
    const/4 v0, 0x5

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 396
    aget-byte v2, p2, v0

    packed-switch v2, :pswitch_data_0

    .line 413
    add-int/lit8 v0, v0, 0x1

    .line 414
    goto :goto_0

    .line 399
    :pswitch_0
    aget-byte v2, p2, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    add-int/lit8 v0, v0, 0x1

    .line 401
    goto :goto_0

    .line 406
    :pswitch_1
    aget-byte v2, p2, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/gattlib/server/a/b/a/a$a;->a:[B

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    add-int/lit8 v0, v0, 0x3

    .line 410
    goto :goto_0

    .line 417
    :cond_0
    return-void

    .line 396
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 420
    const/4 v0, 0x5

    .line 421
    iget-object v1, p0, Lcom/yf/gattlib/server/a/b/a/a$a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 422
    add-int/lit8 v3, v1, 0x1

    .line 423
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    if-lez v1, :cond_0

    .line 424
    add-int/lit8 v1, v3, 0x2

    .line 425
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 429
    goto :goto_0

    .line 427
    :cond_0
    add-int/lit8 v0, v3, 0x4

    goto :goto_1

    .line 430
    :cond_1
    return v1
.end method
