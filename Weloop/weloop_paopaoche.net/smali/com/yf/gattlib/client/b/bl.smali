.class public Lcom/yf/gattlib/client/b/bl;
.super Lcom/yf/gattlib/client/b/e;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:J

.field private h:Ljava/nio/ByteBuffer;

.field private i:I

.field private j:I

.field private k:S

.field private l:S

.field private m:I

.field private n:I

.field private o:I

.field private p:J

.field private q:Lcom/yf/gattlib/client/b/bk;

.field private r:I

.field private s:B

.field private t:Landroid/os/HandlerThread;

.field private u:Landroid/os/Handler;

.field private v:I

.field private w:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/yf/gattlib/client/b/bl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/yf/gattlib/client/b/bk;IB)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/e;-><init>()V

    .line 37
    const/16 v0, 0x10

    iput v0, p0, Lcom/yf/gattlib/client/b/bl;->c:I

    .line 39
    const/16 v0, 0x40

    iput v0, p0, Lcom/yf/gattlib/client/b/bl;->d:I

    .line 40
    const/16 v0, 0x400

    iput v0, p0, Lcom/yf/gattlib/client/b/bl;->e:I

    .line 42
    const/16 v0, 0xe

    iput v0, p0, Lcom/yf/gattlib/client/b/bl;->f:I

    .line 43
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/yf/gattlib/client/b/bl;->g:J

    .line 62
    new-instance v0, Lcom/yf/gattlib/client/b/bm;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/client/b/bm;-><init>(Lcom/yf/gattlib/client/b/bl;)V

    iput-object v0, p0, Lcom/yf/gattlib/client/b/bl;->w:Ljava/lang/Runnable;

    .line 84
    iput-object p1, p0, Lcom/yf/gattlib/client/b/bl;->q:Lcom/yf/gattlib/client/b/bk;

    .line 85
    if-gez p2, :cond_0

    .line 86
    iput v2, p0, Lcom/yf/gattlib/client/b/bl;->r:I

    .line 90
    :goto_0
    if-eqz p3, :cond_1

    if-eq p3, v3, :cond_1

    .line 91
    iput-byte v3, p0, Lcom/yf/gattlib/client/b/bl;->s:B

    .line 95
    :goto_1
    iput v2, p0, Lcom/yf/gattlib/client/b/bl;->o:I

    .line 96
    iput v2, p0, Lcom/yf/gattlib/client/b/bl;->v:I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/bl;->h:Ljava/nio/ByteBuffer;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TransferFirmwareTransaction type, interval= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/yf/gattlib/client/b/bl;->s:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/gattlib/client/b/bl;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 99
    return-void

    .line 88
    :cond_0
    iput p2, p0, Lcom/yf/gattlib/client/b/bl;->r:I

    goto :goto_0

    .line 93
    :cond_1
    iput-byte p3, p0, Lcom/yf/gattlib/client/b/bl;->s:B

    goto :goto_1
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 117
    sget-object v0, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    const-string v1, "add timeout"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bl;->u:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bl;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/gattlib/client/b/bl;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bl;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/gattlib/client/b/bl;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yf/gattlib/client/b/bl;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->p()V

    return-void
.end method

.method static synthetic b(Lcom/yf/gattlib/client/b/bl;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->r()Z

    move-result v0

    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bl;->t:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "transher timeout"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yf/gattlib/client/b/bl;->t:Landroid/os/HandlerThread;

    .line 104
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bl;->t:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 105
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/gattlib/client/b/bl;->t:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yf/gattlib/client/b/bl;->u:Landroid/os/Handler;

    .line 107
    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    const-string v1, "remove timeout"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bl;->u:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bl;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/gattlib/client/b/bl;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    :cond_0
    return-void
.end method

.method private declared-synchronized q()V
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bl;->t:Landroid/os/HandlerThread;

    .line 126
    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->p()V

    .line 128
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/bl;->u:Landroid/os/Handler;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/bl;->t:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private r()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/bl;->b:I

    .line 243
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->y()V

    .line 244
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bl;->q:Lcom/yf/gattlib/client/b/bk;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bl;->q:Lcom/yf/gattlib/client/b/bk;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/bk;->b()V

    .line 247
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private s()Z
    .locals 4

    .prologue
    const/16 v0, 0x40

    const/4 v1, 0x0

    .line 270
    .line 271
    iget v2, p0, Lcom/yf/gattlib/client/b/bl;->o:I

    iget v3, p0, Lcom/yf/gattlib/client/b/bl;->n:I

    if-ge v2, v3, :cond_1

    .line 287
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requestSendingOneFrame mTransferringFrame, mCurFrame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yf/gattlib/client/b/bl;->v:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yf/gattlib/client/b/bl;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ota: requestSendingOneFrame, mTransferringFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yf/gattlib/client/b/bl;->v:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCurFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yf/gattlib/client/b/bl;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", numOfPacket="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 291
    iget v2, p0, Lcom/yf/gattlib/client/b/bl;->o:I

    iput v2, p0, Lcom/yf/gattlib/client/b/bl;->v:I

    .line 292
    const-string v2, "H2DR"

    const/16 v3, 0x97

    int-to-short v0, v0

    invoke-static {v2, v3, v0, v1}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    .line 295
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/bl;->a([B)V

    .line 296
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 273
    :cond_1
    iget v2, p0, Lcom/yf/gattlib/client/b/bl;->o:I

    iget v3, p0, Lcom/yf/gattlib/client/b/bl;->n:I

    if-ne v2, v3, :cond_2

    .line 274
    iget v2, p0, Lcom/yf/gattlib/client/b/bl;->i:I

    rem-int/lit16 v2, v2, 0x400

    .line 275
    if-eqz v2, :cond_0

    .line 278
    div-int/lit8 v0, v2, 0x10

    .line 279
    rem-int/lit8 v2, v2, 0x10

    if-lez v2, :cond_0

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ota: requestSendingOneFrame error, mCurFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/yf/gattlib/client/b/bl;->o:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    move v0, v1

    .line 285
    goto :goto_1
.end method

.method private t()V
    .locals 8

    .prologue
    const/16 v2, 0x400

    .line 300
    iget-object v1, p0, Lcom/yf/gattlib/client/b/bl;->h:Ljava/nio/ByteBuffer;

    .line 302
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 303
    new-array v0, v2, [B

    .line 308
    :goto_0
    iget v2, p0, Lcom/yf/gattlib/client/b/bl;->r:I

    add-int/lit16 v2, v2, 0x3de

    mul-int/lit8 v2, v2, 0x40

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/yf/gattlib/client/b/bl;->a(J)V

    .line 310
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 311
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 313
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Lcom/yf/gattlib/client/j;->a([BIS)S

    move-result v3

    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ota: sendOneFrame, crc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%04x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurFrame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/yf/gattlib/client/b/bl;->o:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTransferringFrame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/yf/gattlib/client/b/bl;->v:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cur buffer position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", frameData.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sendOneFrame() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 321
    invoke-static {v2}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 322
    const/16 v2, 0x10

    iget v3, p0, Lcom/yf/gattlib/client/b/bl;->r:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/yf/gattlib/client/b/bl;->a([BII)V

    .line 323
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bl;->q:Lcom/yf/gattlib/client/b/bk;

    iget v2, p0, Lcom/yf/gattlib/client/b/bl;->i:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/yf/gattlib/client/b/bk;->a(II)V

    .line 324
    return-void

    .line 305
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    goto/16 :goto_0
.end method

.method private u()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 327
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 328
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 329
    iget v1, p0, Lcom/yf/gattlib/client/b/bl;->i:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 330
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 331
    iget-short v1, p0, Lcom/yf/gattlib/client/b/bl;->l:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 332
    iget-short v1, p0, Lcom/yf/gattlib/client/b/bl;->k:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 333
    const v1, 0xffff

    iget v2, p0, Lcom/yf/gattlib/client/b/bl;->o:I

    div-int/lit8 v2, v2, 0x4

    and-int/2addr v1, v2

    int-to-short v1, v1

    .line 334
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 335
    iget-byte v2, p0, Lcom/yf/gattlib/client/b/bl;->s:B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 336
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 337
    invoke-static {v0}, Lcom/yf/gattlib/p/n;->a([B)V

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ota: sendFirmwareMeta, , mFirmwareSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yf/gattlib/client/b/bl;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mFirmwareCrc16="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%04x"

    new-array v4, v7, [Ljava/lang/Object;

    iget-short v5, p0, Lcom/yf/gattlib/client/b/bl;->l:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTransferCrc16="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%04x"

    new-array v4, v7, [Ljava/lang/Object;

    iget-short v5, p0, Lcom/yf/gattlib/client/b/bl;->k:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", page="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%04x"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTransferType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/yf/gattlib/client/b/bl;->s:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sendFirmwareMeta() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/bl;->a([B)V

    .line 349
    sget-object v0, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 353
    const-string v0, "ota: initTransfer"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ota: initTransfer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bl;->h:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->w()V

    .line 358
    :cond_0
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->x()V

    .line 359
    return-void
.end method

.method private w()V
    .locals 8

    .prologue
    const v7, 0xea60

    .line 362
    const-string v0, "ota: loadFirmware"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ota: loadFirmware"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bl;->q:Lcom/yf/gattlib/client/b/bk;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/bk;->d()Ljava/io/InputStream;

    move-result-object v2

    .line 366
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 367
    const/16 v0, 0x1000

    new-array v3, v0, [B

    .line 369
    sget-object v0, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    const-string v4, "1"

    invoke-static {v0, v4}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v0, "ota: 1"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 372
    :goto_0
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    .line 373
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, v4, :cond_4

    .line 374
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/2addr v0, v7

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 376
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v5, v6, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 379
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-object v1, v0

    goto :goto_0

    .line 381
    :cond_0
    const-string v0, "ota: 2"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 382
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 384
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/yf/gattlib/client/b/bl;->i:I

    .line 385
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 386
    iget v0, p0, Lcom/yf/gattlib/client/b/bl;->i:I

    div-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/yf/gattlib/client/b/bl;->m:I

    .line 387
    iget v0, p0, Lcom/yf/gattlib/client/b/bl;->i:I

    rem-int/lit16 v0, v0, 0x400

    if-lez v0, :cond_1

    .line 388
    iget v0, p0, Lcom/yf/gattlib/client/b/bl;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/bl;->m:I

    .line 390
    :cond_1
    const-string v0, "ota: 3"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 391
    iget v0, p0, Lcom/yf/gattlib/client/b/bl;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/bl;->n:I

    .line 392
    iput-object v1, p0, Lcom/yf/gattlib/client/b/bl;->h:Ljava/nio/ByteBuffer;

    .line 393
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Lcom/yf/gattlib/client/j;->a([BIS)S

    move-result v0

    iput-short v0, p0, Lcom/yf/gattlib/client/b/bl;->l:S

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ota: loadFirmware, mFirmwareSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/gattlib/client/b/bl;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNumOfFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/gattlib/client/b/bl;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastFrameIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/gattlib/client/b/bl;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFirmwareCrc16="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/yf/gattlib/client/b/bl;->l:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " loadFirmware() "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    if-eqz v2, :cond_2

    .line 403
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 409
    :cond_2
    :goto_2
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 398
    :catch_1
    move-exception v0

    .line 399
    :try_start_2
    new-instance v1, Lcom/yf/gattlib/e/d;

    invoke-direct {v1, v0}, Lcom/yf/gattlib/e/d;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 403
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 406
    :cond_3
    :goto_3
    throw v0

    .line 404
    :catch_2
    move-exception v1

    .line 405
    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private x()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 412
    iget v0, p0, Lcom/yf/gattlib/client/b/bl;->v:I

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    .line 413
    mul-int/lit16 v1, v0, 0x400

    .line 414
    iget v2, p0, Lcom/yf/gattlib/client/b/bl;->i:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/yf/gattlib/client/b/bl;->j:I

    .line 415
    if-nez v1, :cond_0

    .line 416
    iput-short v3, p0, Lcom/yf/gattlib/client/b/bl;->k:S

    .line 421
    :goto_0
    iget-object v2, p0, Lcom/yf/gattlib/client/b/bl;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 422
    iput v0, p0, Lcom/yf/gattlib/client/b/bl;->o:I

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ota: setTransferPosition, startFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", begin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNeedTransferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/gattlib/client/b/bl;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransferCrc16="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%04x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-short v4, p0, Lcom/yf/gattlib/client/b/bl;->k:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransferringFrame= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/gattlib/client/b/bl;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setTransferPosition() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 430
    return-void

    .line 418
    :cond_0
    iget-object v2, p0, Lcom/yf/gattlib/client/b/bl;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, v1, v3}, Lcom/yf/gattlib/client/j;->a([BIS)S

    move-result v2

    iput-short v2, p0, Lcom/yf/gattlib/client/b/bl;->k:S

    goto/16 :goto_0
.end method

.method private y()V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->q()V

    .line 442
    return-void
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 435
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->y()V

    .line 437
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yf/gattlib/client/b/e;->a(III[Ljava/lang/Object;)V

    .line 438
    return-void
.end method

.method public varargs a([B[Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/16 v3, 0x96

    const/4 v2, -0x1

    .line 143
    iget v0, p0, Lcom/yf/gattlib/client/b/bl;->b:I

    packed-switch v0, :pswitch_data_0

    .line 234
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/bl;->i()V

    .line 235
    :goto_0
    return-void

    .line 145
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 1.onGetValue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->p()V

    .line 147
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 148
    if-ne v3, v0, :cond_0

    .line 150
    sget-object v0, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    const-string v1, "1.1 onGetValue "

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "ota: 1"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 154
    :try_start_0
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->v()V

    .line 155
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->u()V

    .line 156
    const/4 v0, 0x2

    iput v0, p0, Lcom/yf/gattlib/client/b/bl;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    sget-object v1, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    const-string v2, "catch Exception"

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "ota: catch Exception"

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 161
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->r()Z

    .line 162
    new-instance v1, Lcom/yf/gattlib/e/b;

    invoke-direct {v1, v0}, Lcom/yf/gattlib/e/b;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 165
    :cond_0
    iput v2, p0, Lcom/yf/gattlib/client/b/bl;->b:I

    .line 166
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/bl;->i()V

    goto :goto_0

    .line 169
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 2.onGetValue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 170
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 171
    if-ne v3, v0, :cond_1

    .line 173
    :try_start_1
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->p()V

    .line 174
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->s()Z

    .line 175
    const/4 v0, 0x3

    iput v0, p0, Lcom/yf/gattlib/client/b/bl;->b:I
    :try_end_1
    .catch Lcom/yf/gattlib/e/b; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 177
    :catch_1
    move-exception v0

    .line 178
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->r()Z

    .line 179
    throw v0

    .line 182
    :cond_1
    iput v2, p0, Lcom/yf/gattlib/client/b/bl;->b:I

    .line 183
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/bl;->i()V

    goto/16 :goto_0

    .line 186
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 3.onGetValue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 187
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 188
    const/16 v1, 0x97

    if-ne v1, v0, :cond_2

    .line 189
    const/4 v0, 0x4

    iput v0, p0, Lcom/yf/gattlib/client/b/bl;->b:I

    .line 196
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yf/gattlib/client/b/bl;->p:J

    .line 197
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->t()V

    .line 198
    const/4 v0, 0x5

    iput v0, p0, Lcom/yf/gattlib/client/b/bl;->b:I
    :try_end_2
    .catch Lcom/yf/gattlib/e/b; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 200
    :catch_2
    move-exception v0

    .line 201
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->r()Z

    .line 202
    throw v0

    .line 205
    :cond_2
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->r()Z

    .line 206
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/bl;->i()V

    goto/16 :goto_0

    .line 209
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 4.onGetValue curFrame = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/gattlib/client/b/bl;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \u603b\u6570\u636e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/gattlib/client/b/bl;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 211
    :try_start_3
    iget v0, p0, Lcom/yf/gattlib/client/b/bl;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/bl;->o:I

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ota: ++mCurFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/gattlib/client/b/bl;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 213
    iget v0, p0, Lcom/yf/gattlib/client/b/bl;->o:I

    iget v1, p0, Lcom/yf/gattlib/client/b/bl;->n:I

    if-le v0, v1, :cond_4

    .line 214
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->y()V

    .line 215
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bl;->q:Lcom/yf/gattlib/client/b/bk;

    if-eqz v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bl;->q:Lcom/yf/gattlib/client/b/bk;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/bk;->c()V

    .line 218
    :cond_3
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/bl;->i()V
    :try_end_3
    .catch Lcom/yf/gattlib/e/b; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 225
    :catch_3
    move-exception v0

    .line 226
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->r()Z

    .line 227
    throw v0

    .line 221
    :cond_4
    :try_start_4
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->p()V

    .line 222
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->s()Z

    .line 224
    const/4 v0, 0x3

    iput v0, p0, Lcom/yf/gattlib/client/b/bl;->b:I
    :try_end_4
    .catch Lcom/yf/gattlib/e/b; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 231
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 5.onGetValue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public b()V
    .locals 4

    .prologue
    .line 252
    const-string v0, "H2DR"

    const/16 v1, 0x96

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    .line 254
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->e()V

    .line 255
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bl;->p()V

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/yf/gattlib/client/b/bl;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0. onStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 258
    const-string v1, "ota: onStart"

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 259
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/yf/gattlib/client/b/bl;->p:J

    .line 260
    iget-object v1, p0, Lcom/yf/gattlib/client/b/bl;->q:Lcom/yf/gattlib/client/b/bk;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/yf/gattlib/client/b/bl;->q:Lcom/yf/gattlib/client/b/bk;

    invoke-interface {v1}, Lcom/yf/gattlib/client/b/bk;->a()V

    .line 264
    :cond_0
    const-wide/16 v2, 0x7530

    invoke-direct {p0, v2, v3}, Lcom/yf/gattlib/client/b/bl;->a(J)V

    .line 265
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/bl;->a([B)V

    .line 266
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/bl;->b:I

    .line 267
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 136
    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method
