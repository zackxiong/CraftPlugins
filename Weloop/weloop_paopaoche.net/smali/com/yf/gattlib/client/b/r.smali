.class public Lcom/yf/gattlib/client/b/r;
.super Lcom/yf/gattlib/client/b/p;
.source "ProGuard"


# instance fields
.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yf/gattlib/client/b/p$a;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 18
    invoke-direct {p0, p1}, Lcom/yf/gattlib/client/b/p;-><init>(Lcom/yf/gattlib/client/b/p$a;)V

    .line 16
    const-string v0, "GetRunningDataTransaction"

    iput-object v0, p0, Lcom/yf/gattlib/client/b/r;->o:Ljava/lang/String;

    .line 19
    const/16 v0, 0xb9

    iput v0, p0, Lcom/yf/gattlib/client/b/r;->k:I

    .line 20
    const/16 v0, 0x79

    iput v0, p0, Lcom/yf/gattlib/client/b/r;->l:I

    .line 21
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/r;->b(I)V

    .line 22
    iput-boolean v3, p0, Lcom/yf/gattlib/client/b/r;->n:Z

    .line 23
    iput v1, p0, Lcom/yf/gattlib/client/b/r;->b:I

    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [B

    aput-byte v3, v0, v3

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/yf/gattlib/client/b/r;->l:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    .line 26
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/r;->c([B)V

    .line 27
    return-void
.end method


# virtual methods
.method protected c()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 32
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yf/gattlib/client/b/r;->d:Ljava/util/Calendar;

    .line 33
    iget-object v1, p0, Lcom/yf/gattlib/client/b/r;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 34
    iget-object v1, p0, Lcom/yf/gattlib/client/b/r;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x10

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/yf/gattlib/client/b/r;->e:J

    .line 35
    iget-wide v2, p0, Lcom/yf/gattlib/client/b/r;->e:J

    iput-wide v2, p0, Lcom/yf/gattlib/client/b/r;->f:J

    .line 36
    const/4 v1, -0x1

    iput-short v1, p0, Lcom/yf/gattlib/client/b/r;->i:S

    .line 37
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/r;->s()V

    .line 38
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/r;->p()V

    .line 39
    iget-object v1, p0, Lcom/yf/gattlib/client/b/r;->h:[B

    invoke-virtual {p0, v1}, Lcom/yf/gattlib/client/b/r;->b([B)[B

    .line 40
    iget-wide v2, p0, Lcom/yf/gattlib/client/b/r;->e:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/r;->e()V

    .line 42
    const/4 v1, 0x3

    iput v1, p0, Lcom/yf/gattlib/client/b/r;->a:I

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected t()[B
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yf/gattlib/client/b/r;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 51
    return-object v0
.end method
