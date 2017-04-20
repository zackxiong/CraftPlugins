.class public Lcom/yf/gattlib/client/b/l;
.super Lcom/yf/gattlib/client/b/p;
.source "ProGuard"


# direct methods
.method public constructor <init>(ILcom/yf/gattlib/client/b/p$a;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 19
    invoke-direct {p0, p2}, Lcom/yf/gattlib/client/b/p;-><init>(Lcom/yf/gattlib/client/b/p$a;)V

    .line 20
    const/16 v0, 0xb6

    iput v0, p0, Lcom/yf/gattlib/client/b/l;->k:I

    .line 21
    const/16 v0, 0x73

    iput v0, p0, Lcom/yf/gattlib/client/b/l;->l:I

    .line 22
    iput-boolean v3, p0, Lcom/yf/gattlib/client/b/l;->n:Z

    .line 23
    const/16 v0, 0xa

    iput v0, p0, Lcom/yf/gattlib/client/b/l;->b:I

    .line 24
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/client/b/l;->b(I)V

    .line 26
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 27
    const/16 v0, 0x10

    iput-byte v0, p0, Lcom/yf/gattlib/client/b/l;->m:B

    .line 28
    const-string v0, "H2DR"

    iget v1, p0, Lcom/yf/gattlib/client/b/l;->k:I

    const/16 v2, 0x11

    invoke-static {v0, v1, v3, v2}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/l;->c([B)V

    .line 38
    :goto_0
    return-void

    .line 31
    :cond_0
    if-eqz p3, :cond_1

    .line 32
    iput-byte v1, p0, Lcom/yf/gattlib/client/b/l;->m:B

    .line 35
    :cond_1
    const/16 v0, 0x8

    new-array v0, v0, [B

    aput-byte v3, v0, v3

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/yf/gattlib/client/b/l;->l:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/l;->c([B)V

    goto :goto_0
.end method


# virtual methods
.method protected b([B)[B
    .locals 2

    .prologue
    .line 42
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    iget v1, p0, Lcom/yf/gattlib/client/b/l;->k:I

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/yf/gattlib/client/j;->c([B)B

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 44
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/client/b/l;->a([B)V

    .line 47
    :goto_0
    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/yf/gattlib/client/b/p;->b([B)[B

    move-result-object p1

    goto :goto_0
.end method

.method protected c()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yf/gattlib/client/b/l;->d:Ljava/util/Calendar;

    .line 53
    iget-object v1, p0, Lcom/yf/gattlib/client/b/l;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 54
    iget-object v1, p0, Lcom/yf/gattlib/client/b/l;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/yf/gattlib/client/b/l;->e:J

    .line 55
    iget-object v1, p0, Lcom/yf/gattlib/client/b/l;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/yf/gattlib/client/b/l;->f:J

    .line 56
    iget-object v1, p0, Lcom/yf/gattlib/client/b/l;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/yf/gattlib/client/b/l;->i:S

    .line 57
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/l;->s()V

    .line 58
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/l;->p()V

    .line 59
    iget-object v1, p0, Lcom/yf/gattlib/client/b/l;->h:[B

    invoke-virtual {p0, v1}, Lcom/yf/gattlib/client/b/l;->b([B)[B

    .line 60
    iget-wide v2, p0, Lcom/yf/gattlib/client/b/l;->e:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/l;->e()V

    .line 62
    const/4 v1, 0x3

    iput v1, p0, Lcom/yf/gattlib/client/b/l;->a:I

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
