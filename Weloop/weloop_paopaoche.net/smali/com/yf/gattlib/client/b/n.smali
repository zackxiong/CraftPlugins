.class public Lcom/yf/gattlib/client/b/n;
.super Lcom/yf/gattlib/client/b/ab;
.source "ProGuard"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/nio/ByteBuffer;

.field private d:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/ab;-><init>()V

    .line 15
    const-string v0, "GetDeviceStateTransaction"

    iput-object v0, p0, Lcom/yf/gattlib/client/b/n;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs a([B[Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    iget v0, p0, Lcom/yf/gattlib/client/b/n;->b:I

    packed-switch v0, :pswitch_data_0

    .line 64
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/n;->i()V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 35
    :pswitch_0
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 36
    const/16 v1, 0xa7

    if-eq v0, v1, :cond_0

    .line 38
    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    .line 39
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->b([B)B

    move-result v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/gattlib/client/b/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " device state, len = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 41
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/n;->c:Ljava/nio/ByteBuffer;

    .line 42
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/client/b/n;->b([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/n;->d:[B

    .line 43
    iput v4, p0, Lcom/yf/gattlib/client/b/n;->b:I

    goto :goto_0

    .line 47
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/gattlib/client/b/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ST_RECEIVING_DATA = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/yf/gattlib/client/b/n;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 49
    iget-object v0, p0, Lcom/yf/gattlib/client/b/n;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/yf/gattlib/client/b/n;->d:[B

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/n;->b([B)[B

    .line 53
    const/16 v0, 0x3ea

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/yf/gattlib/client/b/n;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v3, v3, v1}, Lcom/yf/gattlib/client/b/n;->a(III[Ljava/lang/Object;)V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/gattlib/client/b/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/b/n;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/n;->i()V

    goto/16 :goto_0

    .line 61
    :pswitch_2
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/n;->i()V

    goto/16 :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected c()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    iput v2, p0, Lcom/yf/gattlib/client/b/n;->b:I

    .line 26
    const-string v0, "H2DR"

    const/16 v1, 0xa7

    invoke-static {v0, v1, v2, v2}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    return-object v0
.end method
