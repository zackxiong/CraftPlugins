.class public Lcom/yf/gattlib/client/b/c/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/c/b;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:[B

.field private f:I

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .prologue
    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/yf/gattlib/client/b/c/a;->a:I

    .line 18
    iput v0, p0, Lcom/yf/gattlib/client/b/c/a;->b:I

    .line 19
    const/16 v0, 0x100

    iput v0, p0, Lcom/yf/gattlib/client/b/c/a;->c:I

    .line 23
    const/16 v0, 0x1000

    iput v0, p0, Lcom/yf/gattlib/client/b/c/a;->d:I

    .line 89
    iput-object p1, p0, Lcom/yf/gattlib/client/b/c/a;->e:[B

    .line 90
    iput v1, p0, Lcom/yf/gattlib/client/b/c/a;->f:I

    .line 92
    array-length v0, p1

    div-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/yf/gattlib/client/b/c/a;->g:I

    .line 93
    array-length v0, p1

    rem-int/lit16 v0, v0, 0x100

    if-lez v0, :cond_0

    .line 94
    iget v0, p0, Lcom/yf/gattlib/client/b/c/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/c/a;->g:I

    .line 96
    :cond_0
    iput-boolean v1, p0, Lcom/yf/gattlib/client/b/c/a;->h:Z

    .line 97
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/yf/gattlib/client/b/c/a;
    .locals 8

    .prologue
    const v7, 0xea60

    const/4 v6, 0x0

    .line 59
    .line 62
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 63
    const/16 v1, 0x1000

    new-array v2, v1, [B

    .line 66
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 70
    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    .line 71
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, v4, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v1, v7

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 74
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v1, v5, v6, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-object v0, v1

    .line 77
    :cond_0
    invoke-virtual {v0, v2, v6, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 80
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 81
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 82
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    .line 83
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 84
    new-instance v0, Lcom/yf/gattlib/client/b/c/a;

    invoke-direct {v0, v1}, Lcom/yf/gattlib/client/b/c/a;-><init>([B)V

    .line 85
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/a;->e:[B

    array-length v0, v0

    iget v1, p0, Lcom/yf/gattlib/client/b/c/a;->f:I

    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/c/a;->i()I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lcom/yf/gattlib/client/b/c/a;->f:I

    .line 172
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/yf/gattlib/client/b/c/a;->h:Z

    .line 162
    return-void
.end method

.method public b()S
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/a;->e:[B

    iget-object v1, p0, Lcom/yf/gattlib/client/b/c/a;->e:[B

    array-length v1, v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/yf/gattlib/client/j;->a([BIS)S

    move-result v0

    return v0
.end method

.method public c()S
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 112
    iget v1, p0, Lcom/yf/gattlib/client/b/c/a;->f:I

    if-nez v1, :cond_0

    .line 116
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/yf/gattlib/client/b/c/a;->e:[B

    iget v2, p0, Lcom/yf/gattlib/client/b/c/a;->f:I

    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/c/a;->i()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-static {v1, v2, v0}, Lcom/yf/gattlib/client/j;->a([BIS)S

    move-result v0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/a;->e:[B

    array-length v0, v0

    return v0
.end method

.method public e()[B
    .locals 3

    .prologue
    .line 125
    iget v0, p0, Lcom/yf/gattlib/client/b/c/a;->f:I

    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/c/a;->i()I

    move-result v1

    mul-int/2addr v1, v0

    .line 126
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/a;->e:[B

    array-length v0, v0

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/c/a;->i()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 127
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/a;->e:[B

    array-length v0, v0

    sub-int/2addr v0, v1

    .line 131
    :goto_0
    iget-object v2, p0, Lcom/yf/gattlib/client/b/c/a;->e:[B

    add-int/2addr v0, v1

    invoke-static {v2, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/c/a;->i()I

    move-result v0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/yf/gattlib/client/b/c/a;->g:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/yf/gattlib/client/b/c/a;->f:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 146
    const/16 v0, 0x1000

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 151
    const/16 v0, 0x100

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 156
    const/16 v0, 0x10

    return v0
.end method
