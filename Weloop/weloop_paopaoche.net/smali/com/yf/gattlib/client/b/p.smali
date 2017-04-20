.class public Lcom/yf/gattlib/client/b/p;
.super Lcom/yf/gattlib/client/b/e;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/client/b/p$a;
    }
.end annotation


# static fields
.field private static final t:Lcom/yf/gattlib/client/b/p$a;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:Ljava/nio/ByteBuffer;

.field protected d:Ljava/util/Calendar;

.field protected e:J

.field protected f:J

.field protected g:Ljava/nio/ByteBuffer;

.field protected h:[B

.field protected i:S

.field protected j:Lcom/yf/gattlib/client/b/p$a;

.field protected k:I

.field protected l:I

.field protected m:B

.field protected n:Z

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 324
    new-instance v0, Lcom/yf/gattlib/client/b/q;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/q;-><init>()V

    sput-object v0, Lcom/yf/gattlib/client/b/p;->t:Lcom/yf/gattlib/client/b/p$a;

    return-void
.end method

.method public constructor <init>(Lcom/yf/gattlib/client/b/p$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/e;-><init>()V

    .line 24
    const/4 v0, 0x3

    iput v0, p0, Lcom/yf/gattlib/client/b/p;->a:I

    .line 30
    const/16 v0, 0x80

    iput v0, p0, Lcom/yf/gattlib/client/b/p;->o:I

    .line 40
    iput-boolean v1, p0, Lcom/yf/gattlib/client/b/p;->n:Z

    .line 45
    if-nez p1, :cond_0

    .line 46
    sget-object v0, Lcom/yf/gattlib/client/b/p;->t:Lcom/yf/gattlib/client/b/p$a;

    iput-object v0, p0, Lcom/yf/gattlib/client/b/p;->j:Lcom/yf/gattlib/client/b/p$a;

    .line 50
    :goto_0
    const/16 v0, 0xa0

    iput v0, p0, Lcom/yf/gattlib/client/b/p;->k:I

    .line 51
    const/16 v0, 0x62

    iput v0, p0, Lcom/yf/gattlib/client/b/p;->l:I

    .line 52
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/yf/gattlib/client/b/p;->m:B

    .line 53
    const/16 v0, 0xa

    iput v0, p0, Lcom/yf/gattlib/client/b/p;->b:I

    .line 54
    iput-boolean v1, p0, Lcom/yf/gattlib/client/b/p;->r:Z

    .line 55
    return-void

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/yf/gattlib/client/b/p;->j:Lcom/yf/gattlib/client/b/p$a;

    goto :goto_0
.end method

.method private a(J)V
    .locals 1

    .prologue
    .line 273
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private u()V
    .locals 0

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->r()V

    .line 178
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->i()V

    .line 179
    return-void
.end method

.method private v()V
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/p;->u()V

    .line 281
    iget-object v0, p0, Lcom/yf/gattlib/client/b/p;->j:Lcom/yf/gattlib/client/b/p$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/p$a;->c()V

    .line 282
    const-string v0, "GetExerciseDataTransaction returnFail\u4e2d\u7684onReadDataFail"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 283
    return-void
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 363
    const/4 v0, 0x2

    if-eq v0, p1, :cond_0

    .line 364
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yf/gattlib/client/b/e;->a(III[Ljava/lang/Object;)V

    .line 392
    :goto_0
    return-void

    .line 367
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 385
    :pswitch_0
    iget-object v0, p0, Lcom/yf/gattlib/client/b/p;->j:Lcom/yf/gattlib/client/b/p$a;

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/yf/gattlib/client/b/p;->j:Lcom/yf/gattlib/client/b/p$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/p$a;->c()V

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetExerciseDataTransaction onTransactionEvent\u4e2d\u7684onReadDataFail param1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 391
    :cond_1
    :goto_1
    :pswitch_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yf/gattlib/client/b/e;->a(III[Ljava/lang/Object;)V

    goto :goto_0

    .line 371
    :pswitch_2
    iget-object v0, p0, Lcom/yf/gattlib/client/b/p;->j:Lcom/yf/gattlib/client/b/p$a;

    if-eqz v0, :cond_1

    .line 372
    const-string v0, "EVT_TIMEOUT"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lcom/yf/gattlib/client/b/p;->j:Lcom/yf/gattlib/client/b/p$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/p$a;->a()V

    goto :goto_1

    .line 377
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetExerciseDataTransaction isSelfCancel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yf/gattlib/client/b/p;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 378
    iget-boolean v0, p0, Lcom/yf/gattlib/client/b/p;->s:Z

    if-nez v0, :cond_1

    .line 382
    :pswitch_4
    iget-object v0, p0, Lcom/yf/gattlib/client/b/p;->j:Lcom/yf/gattlib/client/b/p$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/p$a;->e()V

    goto :goto_1

    .line 367
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected a(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/gattlib/client/b/p;->s:Z

    .line 229
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/p;->a(I)V

    .line 230
    iget-object v0, p0, Lcom/yf/gattlib/client/b/p;->j:Lcom/yf/gattlib/client/b/p$a;

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "OnTimeoutListener"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/yf/gattlib/client/b/p;->j:Lcom/yf/gattlib/client/b/p$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/p$a;->a()V

    .line 234
    :cond_0
    return-void
.end method

.method public varargs a([B[Ljava/lang/Object;)V
    .locals 8

    .prologue
    const-wide/16 v0, 0x64

    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->r()V

    .line 92
    iget v3, p0, Lcom/yf/gattlib/client/b/p;->a:I

    packed-switch v3, :pswitch_data_0

    .line 173
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/p;->v()V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 94
    :pswitch_0
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 95
    iget v1, p0, Lcom/yf/gattlib/client/b/p;->l:I

    if-ne v0, v1, :cond_1

    .line 96
    const/4 v0, 0x6

    iput v0, p0, Lcom/yf/gattlib/client/b/p;->a:I

    .line 97
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->q()V

    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/client/b/p;->b([B)[B

    goto :goto_0

    .line 100
    :cond_1
    iget v1, p0, Lcom/yf/gattlib/client/b/p;->k:I

    if-ne v0, v1, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->q()V

    goto :goto_0

    .line 104
    :cond_2
    iput v4, p0, Lcom/yf/gattlib/client/b/p;->a:I

    .line 105
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/p;->v()V

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/yf/gattlib/client/b/p;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 109
    iput v4, p0, Lcom/yf/gattlib/client/b/p;->a:I

    .line 110
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/p;->v()V

    goto :goto_0

    .line 113
    :cond_3
    const-string v0, "GetExerciseDataTransaction"

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/yf/gattlib/p/c;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "step meta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/yf/gattlib/p/c;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/yf/gattlib/client/b/p;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 118
    iget-object v0, p0, Lcom/yf/gattlib/client/b/p;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 119
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/p;->u()V

    goto :goto_0

    .line 124
    :pswitch_2
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->s()V

    .line 125
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/client/b/p;->c([B)V

    .line 126
    invoke-direct {p0, v0, v1}, Lcom/yf/gattlib/client/b/p;->a(J)V

    .line 127
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->p()V

    .line 128
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/client/b/p;->b([B)[B

    goto :goto_0

    .line 131
    :pswitch_3
    aget-object v3, p2, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/yf/gattlib/client/b/p;->q:Ljava/lang/String;

    .line 133
    iget v3, p0, Lcom/yf/gattlib/client/b/p;->p:I

    array-length v4, p1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/yf/gattlib/client/b/p;->p:I

    .line 134
    iget-object v3, p0, Lcom/yf/gattlib/client/b/p;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yf/gattlib/client/b/p;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/yf/gattlib/client/b/p;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-static {v3}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetExerciseDataTransaction mTotalFrameBuf "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/yf/gattlib/client/b/p;->j:Lcom/yf/gattlib/client/b/p$a;

    iget-wide v4, p0, Lcom/yf/gattlib/client/b/p;->e:J

    iget-object v6, p0, Lcom/yf/gattlib/client/b/p;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    int-to-long v6, v6

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/yf/gattlib/client/b/p$a;->a(JJ)V

    .line 142
    iget-object v3, p0, Lcom/yf/gattlib/client/b/p;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    int-to-long v4, v3

    iget-wide v6, p0, Lcom/yf/gattlib/client/b/p;->e:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_7

    .line 143
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->q()V

    .line 144
    iget v3, p0, Lcom/yf/gattlib/client/b/p;->p:I

    iget v4, p0, Lcom/yf/gattlib/client/b/p;->o:I

    if-lt v3, v4, :cond_0

    .line 145
    iput v2, p0, Lcom/yf/gattlib/client/b/p;->p:I

    .line 146
    iget-boolean v3, p0, Lcom/yf/gattlib/client/b/p;->r:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/yf/gattlib/client/b/p;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    rem-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_5

    const/4 v2, 0x1

    .line 147
    :cond_5
    if-eqz v2, :cond_6

    const-wide/16 v0, 0x1f4

    :cond_6
    invoke-direct {p0, v0, v1}, Lcom/yf/gattlib/client/b/p;->a(J)V

    .line 148
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->p()V

    .line 149
    iget-object v0, p0, Lcom/yf/gattlib/client/b/p;->h:[B

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/p;->b([B)[B

    goto/16 :goto_0

    .line 153
    :cond_7
    iput v2, p0, Lcom/yf/gattlib/client/b/p;->p:I

    .line 154
    const/4 v0, 0x3

    iput v0, p0, Lcom/yf/gattlib/client/b/p;->a:I

    .line 155
    iget-object v0, p0, Lcom/yf/gattlib/client/b/p;->h:[B

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/p;->b([B)[B

    .line 156
    iget-boolean v0, p0, Lcom/yf/gattlib/client/b/p;->n:Z

    if-eqz v0, :cond_8

    .line 157
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->q()V

    goto/16 :goto_0

    .line 160
    :cond_8
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/p;->u()V

    .line 161
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->e()V

    goto/16 :goto_0

    .line 166
    :pswitch_4
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/p;->u()V

    .line 167
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->e()V

    goto/16 :goto_0

    .line 170
    :pswitch_5
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/p;->u()V

    goto/16 :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b()V
    .locals 4

    .prologue
    .line 287
    const-string v0, "H2DR"

    iget v1, p0, Lcom/yf/gattlib/client/b/p;->k:I

    const/4 v2, 0x0

    iget-byte v3, p0, Lcom/yf/gattlib/client/b/p;->m:B

    invoke-static {v0, v1, v2, v3}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetExerciseDataTransaction Syncdata channelIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/yf/gattlib/client/b/p;->m:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 291
    iget v1, p0, Lcom/yf/gattlib/client/b/p;->b:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/gattlib/client/b/p;->c:Ljava/nio/ByteBuffer;

    .line 292
    iget-object v1, p0, Lcom/yf/gattlib/client/b/p;->c:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 293
    iget-object v1, p0, Lcom/yf/gattlib/client/b/p;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 294
    iget-object v1, p0, Lcom/yf/gattlib/client/b/p;->j:Lcom/yf/gattlib/client/b/p$a;

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/yf/gattlib/client/b/p;->j:Lcom/yf/gattlib/client/b/p$a;

    invoke-interface {v1}, Lcom/yf/gattlib/client/b/p$a;->b()V

    .line 298
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/yf/gattlib/client/b/p;->a:I

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start sync :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 300
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/p;->a([B)V

    .line 301
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->q()V

    .line 302
    const/4 v0, 0x5

    iput v0, p0, Lcom/yf/gattlib/client/b/p;->a:I

    .line 303
    return-void
.end method

.method protected b(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/yf/gattlib/client/b/p;->o:I

    .line 59
    return-void
.end method

.method protected c([B)V
    .locals 1

    .prologue
    .line 256
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/p;->h:[B

    .line 257
    return-void
.end method

.method protected c()Z
    .locals 9

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 62
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Lcom/yf/gattlib/client/b/p;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iget-object v2, p0, Lcom/yf/gattlib/client/b/p;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/yf/gattlib/client/b/p;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iget-object v4, p0, Lcom/yf/gattlib/client/b/p;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iget-object v5, p0, Lcom/yf/gattlib/client/b/p;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/yf/gattlib/client/b/p;->d:Ljava/util/Calendar;

    .line 66
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/yf/gattlib/client/b/p;->d:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetExerciseDataTransaction time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/yf/gattlib/client/b/p;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/yf/gattlib/client/b/p;->e:J

    .line 70
    iget-wide v0, p0, Lcom/yf/gattlib/client/b/p;->e:J

    iput-wide v0, p0, Lcom/yf/gattlib/client/b/p;->f:J

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetExerciseDataTransactioncount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/yf/gattlib/client/b/p;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/yf/gattlib/client/b/p;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/yf/gattlib/client/b/p;->i:S

    .line 73
    iput v8, p0, Lcom/yf/gattlib/client/b/p;->a:I

    .line 75
    const/16 v0, 0x8

    new-array v0, v0, [B

    aput-byte v6, v0, v6

    aput-byte v6, v0, v7

    const/4 v1, 0x2

    aput-byte v6, v0, v1

    const/4 v1, 0x3

    aput-byte v6, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/yf/gattlib/client/b/p;->l:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    aput-byte v6, v0, v1

    const/4 v1, 0x6

    aput-byte v6, v0, v1

    const/16 v1, 0x46

    aput-byte v1, v0, v8

    .line 76
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->q()V

    .line 77
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/p;->b([B)[B

    .line 78
    return v7
.end method

.method public d()J
    .locals 2

    .prologue
    .line 83
    const-wide/32 v0, 0x124f80

    return-wide v0
.end method

.method protected e()V
    .locals 6

    .prologue
    .line 182
    invoke-static {}, Lcom/yf/gattlib/p/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/yf/gattlib/client/b/p;->d:Ljava/util/Calendar;

    if-nez v1, :cond_1

    const-string v0, "null"

    .line 186
    :goto_0
    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encodeData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/b/p;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yf/gattlib/client/b/p;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/yf/gattlib/p/c;->a([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 192
    :cond_0
    iget-wide v0, p0, Lcom/yf/gattlib/client/b/p;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/yf/gattlib/client/b/p;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_2

    .line 194
    :try_start_0
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->t()[B

    move-result-object v1

    .line 195
    iget-object v0, p0, Lcom/yf/gattlib/client/b/p;->j:Lcom/yf/gattlib/client/b/p$a;

    array-length v2, v1

    int-to-long v2, v2

    iget-object v4, p0, Lcom/yf/gattlib/client/b/p;->d:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/yf/gattlib/client/b/p;->q:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/yf/gattlib/client/b/p$a;->a([BJLjava/util/Calendar;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_1
    return-void

    .line 184
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/gattlib/client/b/p;->d:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size, position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/yf/gattlib/client/b/p;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/b/p;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    .line 200
    iget-object v0, p0, Lcom/yf/gattlib/client/b/p;->j:Lcom/yf/gattlib/client/b/p$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/p$a;->c()V

    .line 201
    const-string v0, "GetExerciseDataTransaction doFinish\u4e2d\u7684onReadDataFail"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/yf/gattlib/client/b/p;->j:Lcom/yf/gattlib/client/b/p$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/p$a;->d()V

    goto :goto_1
.end method

.method protected final p()V
    .locals 1

    .prologue
    .line 209
    const/16 v0, 0x8

    iput v0, p0, Lcom/yf/gattlib/client/b/p;->a:I

    .line 210
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->q()V

    .line 211
    return-void
.end method

.method protected q()V
    .locals 0

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->r()V

    .line 238
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->j()V

    .line 239
    return-void
.end method

.method protected r()V
    .locals 0

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->o()V

    .line 245
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->n()V

    .line 246
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/p;->m()V

    .line 247
    return-void
.end method

.method protected s()V
    .locals 2

    .prologue
    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/gattlib/client/b/p;->p:I

    .line 251
    iget-wide v0, p0, Lcom/yf/gattlib/client/b/p;->e:J

    long-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/p;->g:Ljava/nio/ByteBuffer;

    .line 252
    iget-object v0, p0, Lcom/yf/gattlib/client/b/p;->g:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 253
    return-void
.end method

.method protected t()[B
    .locals 6

    .prologue
    .line 260
    iget-object v0, p0, Lcom/yf/gattlib/client/b/p;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 261
    array-length v1, v0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/yf/gattlib/client/j;->a([BIS)S

    move-result v1

    .line 262
    const-string v2, "error crc: need %04x, return %04x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-short v5, p0, Lcom/yf/gattlib/client/b/p;->i:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 263
    const-string v3, "GetExerciseDataTransaction"

    invoke-static {v3, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-short v3, p0, Lcom/yf/gattlib/client/b/p;->i:S

    if-eq v1, v3, :cond_0

    .line 265
    invoke-static {v2}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 266
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "crc error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    return-object v0
.end method
