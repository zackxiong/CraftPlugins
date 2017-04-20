.class public Lcom/yf/gattlib/client/b/c;
.super Lcom/yf/gattlib/client/b/e;
.source "ProGuard"


# static fields
.field private static final b:Ljava/lang/String;

.field private static final n:[I

.field private static final o:[I


# instance fields
.field private A:I

.field private B:Ljava/nio/ByteBuffer;

.field private C:[S

.field private D:Lcom/yf/gattlib/client/b/a/a;

.field private E:Ljava/nio/ByteBuffer;

.field private F:I

.field private G:I

.field private H:Z

.field private I:Lcom/yf/gattlib/p/j;

.field private J:B

.field private K:Ljava/nio/ByteBuffer;

.field private L:I

.field private M:I

.field private N:Ljava/lang/Runnable;

.field a:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private p:[I

.field private final q:S

.field private final r:S

.field private s:I

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/yf/gattlib/client/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/client/b/c;->b:Ljava/lang/String;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yf/gattlib/client/b/c;->n:[I

    .line 56
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/yf/gattlib/client/b/c;->o:[I

    return-void

    .line 52
    :array_0
    .array-data 4
        0x3b7c0
        0xa34c
    .end array-data

    .line 56
    :array_1
    .array-data 4
        0x27f
        -0x68df
        -0x2910
        -0x4bd5
        0x3455
        -0xd4d
        0x52b7
        0x31fc
        -0x4a7b
        0x2b70
        0x1389
        -0x40f1
        -0x303c
        -0x7ec7
        0x60b4
    .end array-data
.end method

.method public constructor <init>(Lcom/yf/gattlib/client/b/a/a;I)V
    .locals 3

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 347
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/e;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->c:I

    .line 33
    const/4 v0, 0x4

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->d:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->e:I

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->f:I

    .line 36
    const/4 v0, 0x5

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->g:I

    .line 37
    const/4 v0, 0x6

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->h:I

    .line 38
    const/4 v0, 0x7

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->i:I

    .line 39
    const/16 v0, 0x8

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->j:I

    .line 40
    const/16 v0, 0x9

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->k:I

    .line 41
    const/16 v0, 0xa

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->l:I

    .line 42
    const/16 v0, 0xb

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->m:I

    .line 61
    const/16 v0, 0xf

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/yf/gattlib/client/b/c;->p:[I

    .line 62
    const/16 v0, 0x2970

    iput-short v0, p0, Lcom/yf/gattlib/client/b/c;->q:S

    .line 63
    const/16 v0, 0x702c

    iput-short v0, p0, Lcom/yf/gattlib/client/b/c;->r:S

    .line 64
    const v0, 0x45b0c    # 4.00003E-40f

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->s:I

    .line 65
    iput v2, p0, Lcom/yf/gattlib/client/b/c;->t:I

    .line 66
    iput v2, p0, Lcom/yf/gattlib/client/b/c;->u:I

    .line 67
    const/16 v0, 0x190

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->v:I

    .line 68
    const/16 v0, 0x4000

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->w:I

    .line 75
    iput v1, p0, Lcom/yf/gattlib/client/b/c;->x:I

    .line 76
    iput v1, p0, Lcom/yf/gattlib/client/b/c;->y:I

    .line 77
    iput v1, p0, Lcom/yf/gattlib/client/b/c;->z:I

    .line 87
    iput-boolean v1, p0, Lcom/yf/gattlib/client/b/c;->H:Z

    .line 92
    iput v1, p0, Lcom/yf/gattlib/client/b/c;->L:I

    .line 93
    iput v1, p0, Lcom/yf/gattlib/client/b/c;->a:I

    .line 94
    const/16 v0, 0x7530

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->M:I

    .line 503
    new-instance v0, Lcom/yf/gattlib/client/b/d;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/client/b/d;-><init>(Lcom/yf/gattlib/client/b/c;)V

    iput-object v0, p0, Lcom/yf/gattlib/client/b/c;->N:Ljava/lang/Runnable;

    .line 348
    iput-object p1, p0, Lcom/yf/gattlib/client/b/c;->D:Lcom/yf/gattlib/client/b/a/a;

    .line 349
    if-gez p2, :cond_0

    .line 350
    iput v1, p0, Lcom/yf/gattlib/client/b/c;->G:I

    .line 354
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/c;->E:Ljava/nio/ByteBuffer;

    .line 356
    const-string v0, "checkfont"

    invoke-static {v0}, Lcom/yf/gattlib/p/j;->a(Ljava/lang/String;)Lcom/yf/gattlib/p/j;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/c;->I:Lcom/yf/gattlib/p/j;

    .line 357
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c;->t()V

    .line 358
    return-void

    .line 352
    :cond_0
    iput p2, p0, Lcom/yf/gattlib/client/b/c;->G:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/yf/gattlib/client/b/c;)Lcom/yf/gattlib/client/b/a/a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->D:Lcom/yf/gattlib/client/b/a/a;

    return-object v0
.end method

.method private a(B)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/yf/gattlib/client/b/c;->b(B)V

    .line 293
    return-void
.end method

.method private a(BII)[B
    .locals 2

    .prologue
    .line 392
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/c;->B:Ljava/nio/ByteBuffer;

    .line 393
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->B:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 394
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->B:Ljava/nio/ByteBuffer;

    const/16 v1, -0x5b

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 395
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->B:Ljava/nio/ByteBuffer;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 396
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->B:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 397
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->B:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 398
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->B:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 400
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->B:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private b(B)V
    .locals 8

    .prologue
    const v7, 0xea60

    .line 303
    .line 304
    const/4 v0, 0x0

    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/yf/gattlib/client/b/c;->D:Lcom/yf/gattlib/client/b/a/a;

    invoke-interface {v1, p1}, Lcom/yf/gattlib/client/b/a/a;->a(B)Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/yf/gattlib/e/d; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 310
    :goto_0
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 311
    const/16 v1, 0x1000

    new-array v3, v1, [B

    .line 315
    :goto_1
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    .line 316
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, v4, :cond_3

    .line 317
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v1, v7

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 319
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v5, v6, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 322
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    goto :goto_1

    .line 307
    :catch_0
    move-exception v1

    .line 308
    invoke-virtual {v1}, Lcom/yf/gattlib/e/d;->printStackTrace()V

    goto :goto_0

    .line 325
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 327
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, p0, Lcom/yf/gattlib/client/b/c;->F:I

    .line 328
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 329
    iput-object v2, p0, Lcom/yf/gattlib/client/b/c;->E:Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    if-eqz v0, :cond_1

    .line 337
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 343
    :cond_1
    :goto_3
    return-void

    .line 338
    :catch_1
    move-exception v0

    .line 339
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 332
    :catch_2
    move-exception v1

    .line 335
    if-eqz v0, :cond_1

    .line 337
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 338
    :catch_3
    move-exception v0

    .line 339
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 335
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 337
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 340
    :cond_2
    :goto_4
    throw v1

    .line 338
    :catch_4
    move-exception v0

    .line 339
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    move-object v1, v2

    goto :goto_2
.end method

.method private c([B)[S
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 258
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/yf/gattlib/client/b/c;->C:[S

    .line 259
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 260
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 261
    iget-object v1, p0, Lcom/yf/gattlib/client/b/c;->C:[S

    const/4 v2, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    aput-short v3, v1, v2

    .line 262
    iget-object v1, p0, Lcom/yf/gattlib/client/b/c;->C:[S

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    aput-short v0, v1, v2

    .line 263
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->C:[S

    return-object v0
.end method

.method private d([B)[S
    .locals 5

    .prologue
    const/16 v2, 0x10

    const/4 v4, 0x7

    .line 268
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 269
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 271
    array-length v0, p1

    if-ne v0, v2, :cond_0

    .line 272
    new-array v0, v4, [S

    iput-object v0, p0, Lcom/yf/gattlib/client/b/c;->C:[S

    .line 280
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 281
    iget-object v2, p0, Lcom/yf/gattlib/client/b/c;->C:[S

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    aput-short v3, v2, v0

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 275
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/yf/gattlib/client/b/c;->C:[S

    .line 276
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->C:[S

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    aput-short v2, v0, v4

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->C:[S

    return-object v0
.end method

.method private p()V
    .locals 4

    .prologue
    const/16 v3, 0xe

    const/4 v0, 0x0

    .line 210
    iput v0, p0, Lcom/yf/gattlib/client/b/c;->x:I

    .line 211
    iput v0, p0, Lcom/yf/gattlib/client/b/c;->y:I

    .line 212
    const/16 v1, 0x2970

    iget-object v2, p0, Lcom/yf/gattlib/client/b/c;->C:[S

    aget-short v2, v2, v0

    if-ne v1, v2, :cond_2

    .line 213
    const v0, 0x3b7c0

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->x:I

    .line 224
    :cond_0
    :goto_0
    const/16 v0, 0x702c

    iget-object v1, p0, Lcom/yf/gattlib/client/b/c;->C:[S

    const/4 v2, 0x1

    aget-short v1, v1, v2

    if-ne v0, v1, :cond_1

    .line 225
    const v0, 0xa34c

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->y:I

    .line 230
    :cond_1
    return-void

    .line 215
    :cond_2
    :goto_1
    if-ge v0, v3, :cond_4

    .line 216
    iget-object v1, p0, Lcom/yf/gattlib/client/b/c;->p:[I

    aget v1, v1, v0

    sget-object v2, Lcom/yf/gattlib/client/b/c;->o:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_3

    .line 217
    iget v1, p0, Lcom/yf/gattlib/client/b/c;->x:I

    add-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/yf/gattlib/client/b/c;->x:I

    .line 215
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    :cond_4
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->p:[I

    aget v0, v0, v3

    sget-object v1, Lcom/yf/gattlib/client/b/c;->o:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_0

    .line 221
    iget v0, p0, Lcom/yf/gattlib/client/b/c;->x:I

    add-int/lit16 v0, v0, 0x37c0

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->x:I

    goto :goto_0
.end method

.method private q()B
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 296
    iget-object v1, p0, Lcom/yf/gattlib/client/b/c;->C:[S

    aget-short v1, v1, v0

    const/16 v2, 0x2970

    if-eq v1, v2, :cond_0

    .line 299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private r()V
    .locals 6

    .prologue
    const/16 v2, 0x190

    .line 364
    iget-object v1, p0, Lcom/yf/gattlib/client/b/c;->K:Ljava/nio/ByteBuffer;

    .line 366
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 367
    new-array v0, v2, [B

    .line 368
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/yf/gattlib/client/b/c;->H:Z

    .line 375
    :goto_0
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 376
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 377
    const/16 v2, 0x14

    iget v3, p0, Lcom/yf/gattlib/client/b/c;->G:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/yf/gattlib/client/b/c;->a([BII)V

    .line 378
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c;->t()V

    .line 379
    const-string v2, "yonghong"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last frame\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/yf/gattlib/client/b/c;->H:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget v2, p0, Lcom/yf/gattlib/client/b/c;->a:I

    array-length v0, v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->a:I

    .line 384
    const-string v0, "yonghong"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last frame\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u767e\u5206\u6bd4\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yf/gattlib/client/b/c;->a:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/yf/gattlib/client/b/c;->s:I

    iget v4, p0, Lcom/yf/gattlib/client/b/c;->x:I

    iget v5, p0, Lcom/yf/gattlib/client/b/c;->y:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->D:Lcom/yf/gattlib/client/b/a/a;

    iget v1, p0, Lcom/yf/gattlib/client/b/c;->s:I

    iget v2, p0, Lcom/yf/gattlib/client/b/c;->x:I

    iget v3, p0, Lcom/yf/gattlib/client/b/c;->y:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/yf/gattlib/client/b/c;->a:I

    invoke-interface {v0, v1, v2}, Lcom/yf/gattlib/client/b/a/a;->a(II)V

    .line 389
    return-void

    .line 370
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 371
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/yf/gattlib/client/b/c;->H:Z

    goto :goto_0
.end method

.method private s()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x4000

    const/4 v4, 0x1

    .line 454
    :goto_0
    iget v0, p0, Lcom/yf/gattlib/client/b/c;->L:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_3

    .line 456
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->E:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/yf/gattlib/client/b/c;->K:Ljava/nio/ByteBuffer;

    .line 458
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->K:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-le v0, v5, :cond_0

    .line 459
    new-array v0, v5, [B

    .line 464
    :goto_1
    iget-object v1, p0, Lcom/yf/gattlib/client/b/c;->E:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 465
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/c;->K:Ljava/nio/ByteBuffer;

    .line 467
    const-string v0, "yonghong"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/client/b/c;->p:[I

    iget v3, p0, Lcom/yf/gattlib/client/b/c;->L:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/yf/gattlib/client/b/c;->o:[I

    iget v3, p0, Lcom/yf/gattlib/client/b/c;->L:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->p:[I

    iget v1, p0, Lcom/yf/gattlib/client/b/c;->L:I

    aget v0, v0, v1

    sget-object v1, Lcom/yf/gattlib/client/b/c;->o:[I

    iget v2, p0, Lcom/yf/gattlib/client/b/c;->L:I

    aget v1, v1, v2

    if-eq v0, v1, :cond_2

    .line 470
    iget v0, p0, Lcom/yf/gattlib/client/b/c;->L:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 471
    iget-byte v0, p0, Lcom/yf/gattlib/client/b/c;->J:B

    iget v1, p0, Lcom/yf/gattlib/client/b/c;->L:I

    mul-int/lit16 v1, v1, 0x4000

    invoke-direct {p0, v0, v1, v5}, Lcom/yf/gattlib/client/b/c;->a(BII)[B

    move-result-object v0

    .line 476
    :goto_2
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/c;->a([B)V

    .line 477
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c;->t()V

    .line 478
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    .line 479
    const/16 v0, 0xa

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->A:I

    .line 480
    iget v0, p0, Lcom/yf/gattlib/client/b/c;->L:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->L:I

    .line 501
    :goto_3
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->K:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    goto :goto_1

    .line 473
    :cond_1
    iget-byte v0, p0, Lcom/yf/gattlib/client/b/c;->J:B

    iget v1, p0, Lcom/yf/gattlib/client/b/c;->L:I

    mul-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x37c0    # 2.0E-41f

    invoke-direct {p0, v0, v1, v2}, Lcom/yf/gattlib/client/b/c;->a(BII)[B

    move-result-object v0

    goto :goto_2

    .line 484
    :cond_2
    iget v0, p0, Lcom/yf/gattlib/client/b/c;->L:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->L:I

    goto/16 :goto_0

    .line 487
    :cond_3
    const/16 v0, 0x702c

    iget-object v1, p0, Lcom/yf/gattlib/client/b/c;->C:[S

    aget-short v1, v1, v4

    if-ne v0, v1, :cond_4

    .line 488
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c;->u()V

    .line 489
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->D:Lcom/yf/gattlib/client/b/a/a;

    invoke-interface {v0, v6}, Lcom/yf/gattlib/client/b/a/a;->a(I)V

    .line 490
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/c;->i()V

    goto :goto_3

    .line 493
    :cond_4
    const v0, 0xa34c

    invoke-direct {p0, v4, v6, v0}, Lcom/yf/gattlib/client/b/c;->a(BII)[B

    move-result-object v0

    .line 494
    invoke-direct {p0, v4}, Lcom/yf/gattlib/client/b/c;->a(B)V

    .line 495
    iget-object v1, p0, Lcom/yf/gattlib/client/b/c;->E:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/yf/gattlib/client/b/c;->K:Ljava/nio/ByteBuffer;

    .line 496
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/c;->a([B)V

    .line 497
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c;->t()V

    .line 498
    const/16 v0, 0xb

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->A:I

    goto :goto_3
.end method

.method private t()V
    .locals 4

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c;->u()V

    .line 513
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->I:Lcom/yf/gattlib/p/j;

    iget-object v1, p0, Lcom/yf/gattlib/client/b/c;->N:Ljava/lang/Runnable;

    iget v2, p0, Lcom/yf/gattlib/client/b/c;->M:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/yf/gattlib/p/j;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 514
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->I:Lcom/yf/gattlib/p/j;

    iget-object v1, p0, Lcom/yf/gattlib/client/b/c;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/p/j;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 518
    return-void
.end method


# virtual methods
.method public varargs a([B[Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/16 v5, 0x42

    const/4 v3, 0x2

    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c;->u()V

    .line 104
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->d([B)I

    move-result v1

    .line 105
    iget v2, p0, Lcom/yf/gattlib/client/b/c;->A:I

    packed-switch v2, :pswitch_data_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 108
    :pswitch_0
    const/16 v2, 0x41

    if-ne v2, v1, :cond_0

    .line 110
    invoke-direct {p0, p1}, Lcom/yf/gattlib/client/b/c;->c([B)[S

    move-result-object v1

    iput-object v1, p0, Lcom/yf/gattlib/client/b/c;->C:[S

    .line 111
    sget-object v1, Lcom/yf/gattlib/client/b/c;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crcValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/gattlib/client/b/c;->C:[S

    aget-short v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/gattlib/client/b/c;->C:[S

    aget-short v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/c;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c;->u()V

    .line 114
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->D:Lcom/yf/gattlib/client/b/a/a;

    invoke-interface {v0, v4}, Lcom/yf/gattlib/client/b/a/a;->a(I)V

    .line 115
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/c;->i()V

    goto :goto_0

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/yf/gattlib/client/b/c;->D:Lcom/yf/gattlib/client/b/a/a;

    invoke-interface {v1}, Lcom/yf/gattlib/client/b/a/a;->a()V

    .line 119
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c;->q()B

    move-result v1

    iput-byte v1, p0, Lcom/yf/gattlib/client/b/c;->J:B

    .line 120
    iget-byte v1, p0, Lcom/yf/gattlib/client/b/c;->J:B

    invoke-direct {p0, v1}, Lcom/yf/gattlib/client/b/c;->a(B)V

    .line 121
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c;->p()V

    .line 123
    const/high16 v1, 0x20000

    const/16 v2, 0x4000

    invoke-virtual {p0, v0, v1, v2}, Lcom/yf/gattlib/client/b/c;->a(III)[B

    move-result-object v0

    .line 124
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    .line 125
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/c;->a([B)V

    .line 126
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c;->t()V

    .line 127
    const/4 v0, 0x6

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->A:I

    goto :goto_0

    .line 133
    :pswitch_1
    const/16 v2, 0x40

    if-ne v2, v1, :cond_2

    .line 134
    invoke-direct {p0, p1}, Lcom/yf/gattlib/client/b/c;->d([B)[S

    move-result-object v1

    .line 135
    :goto_1
    if-ge v0, v6, :cond_2

    .line 136
    iget-object v2, p0, Lcom/yf/gattlib/client/b/c;->p:[I

    aget-short v3, v1, v0

    aput v3, v2, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_2
    const/high16 v0, 0x20000

    const v1, 0x1b7c0

    const/16 v2, 0x4000

    invoke-virtual {p0, v0, v1, v2}, Lcom/yf/gattlib/client/b/c;->a(III)[B

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    .line 141
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/c;->a([B)V

    .line 142
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c;->t()V

    .line 143
    const/4 v0, 0x7

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->A:I

    goto/16 :goto_0

    .line 147
    :pswitch_2
    const/16 v2, 0x40

    if-ne v2, v1, :cond_4

    .line 148
    invoke-direct {p0, p1}, Lcom/yf/gattlib/client/b/c;->d([B)[S

    move-result-object v2

    move v1, v0

    .line 149
    :goto_2
    const/4 v3, 0x7

    if-ge v1, v3, :cond_3

    .line 150
    iget-object v3, p0, Lcom/yf/gattlib/client/b/c;->p:[I

    add-int/lit8 v4, v1, 0x8

    aget-short v5, v2, v1

    aput v5, v3, v4

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 152
    :cond_3
    :goto_3
    const/16 v1, 0xf

    if-ge v0, v1, :cond_4

    .line 153
    const-string v1, "yonghong = "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/gattlib/client/b/c;->p:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 156
    :cond_4
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c;->p()V

    .line 157
    iput v6, p0, Lcom/yf/gattlib/client/b/c;->A:I

    .line 158
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c;->s()V

    goto/16 :goto_0

    .line 161
    :pswitch_3
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->d([B)I

    move-result v0

    .line 162
    if-ne v5, v0, :cond_0

    .line 163
    aget-byte v0, p1, v3

    if-ne v0, v4, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c;->s()V

    goto/16 :goto_0

    .line 171
    :pswitch_4
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->d([B)I

    move-result v0

    .line 172
    if-ne v5, v0, :cond_0

    .line 173
    aget-byte v0, p1, v3

    if-ne v0, v4, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c;->r()V

    .line 175
    iget-boolean v0, p0, Lcom/yf/gattlib/client/b/c;->H:Z

    if-eqz v0, :cond_0

    .line 176
    iput v6, p0, Lcom/yf/gattlib/client/b/c;->A:I

    goto/16 :goto_0

    .line 183
    :pswitch_5
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->d([B)I

    move-result v1

    .line 184
    if-ne v5, v1, :cond_0

    .line 185
    aget-byte v1, p1, v3

    if-ne v1, v4, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c;->r()V

    .line 187
    iget-boolean v1, p0, Lcom/yf/gattlib/client/b/c;->H:Z

    if-eqz v1, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c;->u()V

    .line 189
    iget-object v1, p0, Lcom/yf/gattlib/client/b/c;->D:Lcom/yf/gattlib/client/b/a/a;

    invoke-interface {v1, v0}, Lcom/yf/gattlib/client/b/a/a;->a(I)V

    .line 190
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/c;->i()V

    goto/16 :goto_0

    .line 199
    :pswitch_6
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c;->r()V

    .line 200
    iget-boolean v0, p0, Lcom/yf/gattlib/client/b/c;->H:Z

    if-eqz v0, :cond_0

    .line 201
    iput v6, p0, Lcom/yf/gattlib/client/b/c;->A:I

    goto/16 :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(III)[B
    .locals 2

    .prologue
    .line 441
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/c;->B:Ljava/nio/ByteBuffer;

    .line 442
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->B:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 443
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->B:Ljava/nio/ByteBuffer;

    const/16 v1, -0x5b

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 444
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->B:Ljava/nio/ByteBuffer;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 445
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->B:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 446
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->B:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 447
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->B:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 448
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->B:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public a()[I
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x42
        0x41
    .end array-data
.end method

.method public b()V
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/c;->c()[B

    move-result-object v0

    .line 238
    const-string v1, "yonghong"

    const-string v2, "sdfsdf"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    .line 240
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/c;->a([B)V

    .line 241
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/c;->t()V

    .line 242
    const/4 v0, 0x5

    iput v0, p0, Lcom/yf/gattlib/client/b/c;->A:I

    .line 245
    return-void
.end method

.method public c()[B
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/c;->B:Ljava/nio/ByteBuffer;

    .line 250
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->B:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 252
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->B:Ljava/nio/ByteBuffer;

    const/16 v1, -0x5b

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 253
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->B:Ljava/nio/ByteBuffer;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 254
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c;->B:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 412
    const-wide/32 v0, 0x2dc6c0

    return-wide v0
.end method

.method public e()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 416
    const/16 v2, 0x2970

    iget-object v3, p0, Lcom/yf/gattlib/client/b/c;->C:[S

    aget-short v3, v3, v1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x702c

    iget-object v3, p0, Lcom/yf/gattlib/client/b/c;->C:[S

    aget-short v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 419
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
