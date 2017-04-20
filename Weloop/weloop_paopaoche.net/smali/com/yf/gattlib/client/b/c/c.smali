.class public Lcom/yf/gattlib/client/b/c/c;
.super Lcom/yf/gattlib/client/b/e;
.source "ProGuard"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/client/b/c/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yf/gattlib/client/b/c/c$a;

.field private b:I

.field private c:I

.field private d:I

.field private final e:I

.field private final f:I

.field private g:Lcom/yf/gattlib/client/b/c/b;

.field private h:I


# direct methods
.method public constructor <init>(Lcom/yf/gattlib/client/b/c/b;Lcom/yf/gattlib/client/b/c/c$a;II)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/e;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/gattlib/client/b/c/c;->c:I

    .line 37
    const/4 v0, 0x5

    iput v0, p0, Lcom/yf/gattlib/client/b/c/c;->d:I

    .line 38
    const v0, 0x1902d

    iput v0, p0, Lcom/yf/gattlib/client/b/c/c;->e:I

    .line 39
    const v0, 0x9c40

    iput v0, p0, Lcom/yf/gattlib/client/b/c/c;->f:I

    .line 47
    iput-object p1, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    .line 48
    iput p4, p0, Lcom/yf/gattlib/client/b/c/c;->c:I

    .line 49
    iput-object p2, p0, Lcom/yf/gattlib/client/b/c/c;->a:Lcom/yf/gattlib/client/b/c/c$a;

    .line 50
    iput p3, p0, Lcom/yf/gattlib/client/b/c/c;->d:I

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/yf/gattlib/client/b/c/c;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->r()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/yf/gattlib/e/c;

    const-string v1, "Dial is null"

    invoke-direct {v0, v1}, Lcom/yf/gattlib/e/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    .line 212
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/c/b;->e()[B

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v1}, Lcom/yf/gattlib/client/b/c/b;->j()I

    move-result v1

    iget v2, p0, Lcom/yf/gattlib/client/b/c/c;->d:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/yf/gattlib/client/b/c/c;->a([BII)V

    .line 214
    iget-object v1, p0, Lcom/yf/gattlib/client/b/c/c;->a:Lcom/yf/gattlib/client/b/c/c$a;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/yf/gattlib/client/b/c/c;->a:Lcom/yf/gattlib/client/b/c/c$a;

    iget-object v2, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v2}, Lcom/yf/gattlib/client/b/c/b;->d()I

    move-result v2

    iget-object v3, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v3}, Lcom/yf/gattlib/client/b/c/b;->g()I

    move-result v3

    iget-object v4, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v4}, Lcom/yf/gattlib/client/b/c/b;->i()I

    move-result v4

    mul-int/2addr v3, v4

    array-length v0, v0

    add-int/2addr v0, v3

    iget v3, p0, Lcom/yf/gattlib/client/b/c/c;->c:I

    invoke-interface {v1, v2, v0, v3}, Lcom/yf/gattlib/client/b/c/c$a;->a(III)V

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->q()V

    .line 220
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 223
    invoke-static {}, Lcom/yf/gattlib/p/l;->a()Lcom/yf/gattlib/p/l;

    move-result-object v0

    const v1, 0x1902d

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/p/l;->a(I)V

    .line 224
    return-void
.end method

.method private q()V
    .locals 5

    .prologue
    .line 227
    invoke-static {}, Lcom/yf/gattlib/p/l;->a()Lcom/yf/gattlib/p/l;

    move-result-object v0

    const v1, 0x1902d

    const-wide/32 v2, 0x9c40

    new-instance v4, Lcom/yf/gattlib/client/b/c/d;

    invoke-direct {v4, p0}, Lcom/yf/gattlib/client/b/c/d;-><init>(Lcom/yf/gattlib/client/b/c/c;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yf/gattlib/p/l;->a(IJLcom/yf/gattlib/p/l$a;)I

    .line 240
    return-void
.end method

.method private r()V
    .locals 1

    .prologue
    .line 243
    const-string v0, "timeout\u88ab\u8c03\u7528"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->a:Lcom/yf/gattlib/client/b/c/c$a;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->a:Lcom/yf/gattlib/client/b/c/c$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/c/c$a;->e()V

    .line 246
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->u()V

    .line 248
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/c/c;->a(I)V

    .line 249
    return-void
.end method

.method private s()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, -0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/c/c;->b:I

    .line 253
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->t()V

    .line 254
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->a:Lcom/yf/gattlib/client/b/c/c$a;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->a:Lcom/yf/gattlib/client/b/c/c$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/c/c$a;->b()V

    .line 256
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->u()V

    .line 258
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private t()V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->p()V

    .line 263
    return-void
.end method

.method private u()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->a:Lcom/yf/gattlib/client/b/c/c$a;

    .line 267
    return-void
.end method

.method private v()V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/c/b;->g()I

    move-result v0

    .line 271
    iget-object v1, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v1}, Lcom/yf/gattlib/client/b/c/b;->i()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v1}, Lcom/yf/gattlib/client/b/c/b;->h()I

    move-result v1

    div-int/2addr v0, v1

    .line 272
    iget-object v1, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v1}, Lcom/yf/gattlib/client/b/c/b;->h()I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v2}, Lcom/yf/gattlib/client/b/c/b;->i()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/yf/gattlib/client/b/c/c;->h:I

    .line 273
    iget-object v1, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    iget v2, p0, Lcom/yf/gattlib/client/b/c/c;->h:I

    invoke-interface {v1, v2}, Lcom/yf/gattlib/client/b/c/b;->a(I)V

    .line 274
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 275
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 276
    iget-object v2, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v2}, Lcom/yf/gattlib/client/b/c/b;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 277
    iget-object v2, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v2}, Lcom/yf/gattlib/client/b/c/b;->i()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 278
    iget-object v2, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v2}, Lcom/yf/gattlib/client/b/c/b;->b()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 279
    iget-object v2, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v2}, Lcom/yf/gattlib/client/b/c/b;->c()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 280
    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 281
    iget v0, p0, Lcom/yf/gattlib/client/b/c/c;->c:I

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 282
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 283
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 284
    invoke-static {v0}, Lcom/yf/gattlib/p/n;->a([B)V

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3. sendDialMeta meta = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/c/c;->a([B)V

    .line 289
    return-void
.end method

.method private w()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 297
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    iget v1, p0, Lcom/yf/gattlib/client/b/c/c;->h:I

    invoke-interface {v0, v1}, Lcom/yf/gattlib/client/b/c/b;->a(I)V

    .line 298
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/c/b;->a()I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v2

    .line 319
    :goto_0
    return v0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/c/b;->a()I

    move-result v0

    iget-object v1, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v1}, Lcom/yf/gattlib/client/b/c/b;->i()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 305
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/c/b;->i()I

    move-result v0

    .line 310
    :goto_1
    iget-object v1, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v1}, Lcom/yf/gattlib/client/b/c/b;->j()I

    move-result v1

    div-int v1, v0, v1

    .line 311
    iget-object v3, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v3}, Lcom/yf/gattlib/client/b/c/b;->j()I

    move-result v3

    rem-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 312
    add-int/lit8 v0, v1, 0x1

    .line 315
    :goto_2
    const-string v1, "H2DR"

    const/16 v3, 0x99

    int-to-short v0, v0

    invoke-static {v1, v3, v0, v2}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    .line 318
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/c/c;->a([B)V

    .line 319
    const/4 v0, 0x1

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/c/b;->a()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 173
    const/4 v0, 0x2

    if-eq v0, p1, :cond_0

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yf/gattlib/client/b/e;->a(III[Ljava/lang/Object;)V

    .line 203
    :goto_0
    return-void

    .line 177
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 201
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yf/gattlib/client/b/e;->a(III[Ljava/lang/Object;)V

    goto :goto_0

    .line 179
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change dail transaction on cancel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/b/c/c;->a:Lcom/yf/gattlib/client/b/c/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->a:Lcom/yf/gattlib/client/b/c/c$a;

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->a:Lcom/yf/gattlib/client/b/c/c$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/c/c$a;->b()V

    .line 182
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->u()V

    .line 184
    :cond_2
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->t()V

    goto :goto_1

    .line 187
    :sswitch_1
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->t()V

    .line 188
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->a:Lcom/yf/gattlib/client/b/c/c$a;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->a:Lcom/yf/gattlib/client/b/c/c$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/c/c$a;->e()V

    .line 190
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->u()V

    goto :goto_1

    .line 194
    :sswitch_2
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->a:Lcom/yf/gattlib/client/b/c/c$a;

    if-eqz v0, :cond_1

    .line 195
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->p()V

    .line 196
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->a:Lcom/yf/gattlib/client/b/c/c$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/c/c$a;->d()V

    .line 197
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->u()V

    goto :goto_1

    .line 177
    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public varargs a([B[Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/16 v2, 0x98

    const/4 v3, -0x1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetValue value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->p()V

    .line 78
    iget v0, p0, Lcom/yf/gattlib/client/b/c/c;->b:I

    packed-switch v0, :pswitch_data_0

    .line 168
    :pswitch_0
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/c/c;->i()V

    .line 169
    :goto_0
    return-void

    .line 80
    :pswitch_1
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 81
    const-string v1, "2. SEND_WATCH_PANEL_META"

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 82
    if-ne v2, v0, :cond_0

    .line 84
    :try_start_0
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->c()V

    .line 85
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->v()V

    .line 86
    const/4 v0, 0x2

    iput v0, p0, Lcom/yf/gattlib/client/b/c/c;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->s()Z

    .line 90
    new-instance v1, Lcom/yf/gattlib/e/b;

    invoke-direct {v1, v0}, Lcom/yf/gattlib/e/b;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->s()Z

    .line 94
    iput v3, p0, Lcom/yf/gattlib/client/b/c/c;->b:I

    .line 95
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/c/c;->i()V

    goto :goto_0

    .line 98
    :pswitch_2
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 99
    const-string v1, "4. STATE_AFTER_SENDING_FRAME_META "

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 100
    if-ne v2, v0, :cond_1

    .line 102
    :try_start_1
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->w()Z

    .line 103
    const/4 v0, 0x3

    iput v0, p0, Lcom/yf/gattlib/client/b/c/c;->b:I
    :try_end_1
    .catch Lcom/yf/gattlib/e/b; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 105
    :catch_1
    move-exception v0

    .line 106
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->s()Z

    .line 107
    throw v0

    .line 110
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4.1 STATE_AFTER_SENDING_FRAME_META code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->s()Z

    .line 113
    iput v3, p0, Lcom/yf/gattlib/client/b/c/c;->b:I

    .line 114
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/c/c;->i()V

    goto :goto_0

    .line 117
    :pswitch_3
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5. STATE_WAITING_SENDING_FRAME_DATA code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 119
    const/16 v1, 0x99

    if-ne v1, v0, :cond_2

    .line 120
    const/4 v0, 0x4

    iput v0, p0, Lcom/yf/gattlib/client/b/c/c;->b:I

    .line 122
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5.1 TotalNumFrame = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v1}, Lcom/yf/gattlib/client/b/c/b;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curIndexFrame = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v1}, Lcom/yf/gattlib/client/b/c/b;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->e()V

    .line 127
    const/4 v0, 0x5

    iput v0, p0, Lcom/yf/gattlib/client/b/c/c;->b:I
    :try_end_2
    .catch Lcom/yf/gattlib/e/b; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 129
    :catch_2
    move-exception v0

    .line 130
    const-string v1, "5.1 \u51fa\u9519\u4e86 "

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->s()Z

    .line 132
    throw v0

    .line 135
    :cond_2
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->s()Z

    .line 136
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/c/c;->i()V

    goto/16 :goto_0

    .line 139
    :pswitch_4
    const-string v0, "6. STATE_AFTER_SENDING_ONE_FREME"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 141
    :try_start_3
    iget v0, p0, Lcom/yf/gattlib/client/b/c/c;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/c/c;->h:I

    .line 142
    iget v0, p0, Lcom/yf/gattlib/client/b/c/c;->h:I

    iget-object v1, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    invoke-interface {v1}, Lcom/yf/gattlib/client/b/c/b;->f()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 143
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->g:Lcom/yf/gattlib/client/b/c/b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/yf/gattlib/client/b/c/b;->a(Z)V

    .line 144
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->t()V

    .line 145
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->a:Lcom/yf/gattlib/client/b/c/c$a;

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->a:Lcom/yf/gattlib/client/b/c/c$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/c/c$a;->c()V

    .line 148
    :cond_3
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/c/c;->i()V
    :try_end_3
    .catch Lcom/yf/gattlib/e/b; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 153
    :catch_3
    move-exception v0

    .line 154
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->s()Z

    .line 155
    throw v0

    .line 151
    :cond_4
    :try_start_4
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->w()Z

    .line 152
    const/4 v0, 0x3

    iput v0, p0, Lcom/yf/gattlib/client/b/c/c;->b:I
    :try_end_4
    .catch Lcom/yf/gattlib/e/b; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 159
    :pswitch_5
    const-string v0, "7. STATE_SENDING_OVER"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->a:Lcom/yf/gattlib/client/b/c/c$a;

    if-eqz v0, :cond_5

    .line 161
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/c;->a:Lcom/yf/gattlib/client/b/c/c$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/c/c$a;->c()V

    .line 163
    :cond_5
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/c/c;->i()V

    goto/16 :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public b()V
    .locals 4

    .prologue
    .line 60
    const-string v0, "1. onStart"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 61
    const-string v0, "H2DR"

    const/16 v1, 0x98

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/yf/gattlib/client/b/c/c;->a:Lcom/yf/gattlib/client/b/c/c$a;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/yf/gattlib/client/b/c/c;->a:Lcom/yf/gattlib/client/b/c/c$a;

    invoke-interface {v1}, Lcom/yf/gattlib/client/b/c/c$a;->a()V

    .line 66
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1.1 cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c/c;->q()V

    .line 68
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/c/c;->a([B)V

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/c/c;->b:I

    .line 70
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 55
    const-wide/32 v0, 0x57e40

    return-wide v0
.end method
