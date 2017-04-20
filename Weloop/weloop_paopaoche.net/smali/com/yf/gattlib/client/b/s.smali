.class public Lcom/yf/gattlib/client/b/s;
.super Lcom/yf/gattlib/client/b/e;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/yf/gattlib/client/b/a/b;

.field private c:I

.field private d:Ljava/nio/ByteBuffer;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:[B

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/yf/gattlib/client/b/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/client/b/s;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/yf/gattlib/client/b/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/yf/gattlib/client/b/a/b;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/e;-><init>()V

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lcom/yf/gattlib/client/b/s;->c:I

    .line 33
    iput v1, p0, Lcom/yf/gattlib/client/b/s;->f:I

    iput v1, p0, Lcom/yf/gattlib/client/b/s;->g:I

    .line 41
    iput-object p1, p0, Lcom/yf/gattlib/client/b/s;->i:Ljava/util/List;

    .line 42
    if-eqz p2, :cond_0

    .line 43
    iput-object p2, p0, Lcom/yf/gattlib/client/b/s;->b:Lcom/yf/gattlib/client/b/a/b;

    .line 72
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v0, Lcom/yf/gattlib/client/b/t;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/client/b/t;-><init>(Lcom/yf/gattlib/client/b/s;)V

    iput-object v0, p0, Lcom/yf/gattlib/client/b/s;->b:Lcom/yf/gattlib/client/b/a/b;

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/client/b/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u83b7\u5f97\u603b\u5f97\u6b65\u6570\u548c\u5361\u8def\u91cc\u6570\u636e startRead()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 185
    const-string v0, "H2DR"

    const/16 v1, 0x9f

    invoke-static {v0, v1, v2, v2}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    .line 187
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/s;->k()V

    .line 188
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/s;->a([B)V

    .line 189
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/s;->c:I

    .line 190
    return-void
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/client/b/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onTransactionEvent\u91cc\u9762\u7684 event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x2

    if-eq v0, p1, :cond_0

    .line 202
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yf/gattlib/client/b/e;->a(III[Ljava/lang/Object;)V

    .line 217
    :goto_0
    return-void

    .line 205
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 212
    :pswitch_0
    iget-object v0, p0, Lcom/yf/gattlib/client/b/s;->b:Lcom/yf/gattlib/client/b/a/b;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/a/b;->d()V

    .line 216
    :goto_1
    :pswitch_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yf/gattlib/client/b/e;->a(III[Ljava/lang/Object;)V

    goto :goto_0

    .line 209
    :pswitch_2
    iget-object v0, p0, Lcom/yf/gattlib/client/b/s;->b:Lcom/yf/gattlib/client/b/a/b;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/a/b;->a()V

    goto :goto_1

    .line 205
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/s;->n()V

    .line 195
    iget-object v0, p0, Lcom/yf/gattlib/client/b/s;->b:Lcom/yf/gattlib/client/b/a/b;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/a/b;->a()V

    .line 196
    return-void
.end method

.method public varargs a([B[Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 83
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/s;->n()V

    .line 84
    iget v0, p0, Lcom/yf/gattlib/client/b/s;->c:I

    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/s;->i()V

    .line 169
    :goto_1
    return-void

    .line 86
    :pswitch_0
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/yf/gattlib/client/b/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 1. GetTotalExerciseDataTransaction STATE_WAITING_CMD, code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 89
    const/16 v1, 0x5f

    if-ne v0, v1, :cond_0

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lcom/yf/gattlib/client/b/s;->c:I

    .line 91
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->b([B)B

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/s;->d:Ljava/nio/ByteBuffer;

    .line 92
    iget-object v0, p0, Lcom/yf/gattlib/client/b/s;->d:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 93
    iput-object p1, p0, Lcom/yf/gattlib/client/b/s;->h:[B

    .line 94
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/s;->k()V

    .line 95
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/client/b/s;->b([B)[B

    goto :goto_1

    .line 97
    :cond_0
    const/16 v1, 0x9f

    if-ne v0, v1, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/s;->k()V

    goto :goto_1

    .line 101
    :cond_1
    iput v3, p0, Lcom/yf/gattlib/client/b/s;->c:I

    goto :goto_0

    .line 105
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/client/b/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 2. STATE_RECEIVING_DATA,value.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",dataBuff.remaining()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/b/s;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/s;->e:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/yf/gattlib/client/b/s;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 110
    iput v3, p0, Lcom/yf/gattlib/client/b/s;->c:I

    .line 111
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/s;->i()V

    goto/16 :goto_1

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/yf/gattlib/client/b/s;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 115
    iget-object v0, p0, Lcom/yf/gattlib/client/b/s;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/client/b/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 2.1 value =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/yf/gattlib/client/b/b/a;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/b/a;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/yf/gattlib/client/b/s;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/yf/gattlib/client/b/b/a;->a:I

    .line 121
    iget-object v1, p0, Lcom/yf/gattlib/client/b/s;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/yf/gattlib/client/b/b/a;->c:I

    .line 122
    iget-object v1, p0, Lcom/yf/gattlib/client/b/s;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/yf/gattlib/client/b/b/a;->b:I

    .line 123
    iget-object v1, p0, Lcom/yf/gattlib/client/b/s;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, v0, Lcom/yf/gattlib/client/b/b/a;->d:I

    .line 124
    iget v1, p0, Lcom/yf/gattlib/client/b/s;->f:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/yf/gattlib/client/b/b/a;->e:I

    .line 125
    iget-object v1, p0, Lcom/yf/gattlib/client/b/s;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/yf/gattlib/client/b/b/a;->f:Ljava/lang/String;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " 2.2 stepCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/yf/gattlib/client/b/b/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",distance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/yf/gattlib/client/b/b/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",calories="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/yf/gattlib/client/b/b/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/yf/gattlib/client/b/b/a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/client/b/s;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dayIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yf/gattlib/client/b/s;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/yf/gattlib/client/b/s;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/yf/gattlib/p/c;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calories: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/yf/gattlib/p/c;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 133
    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 136
    :cond_3
    iget-object v1, p0, Lcom/yf/gattlib/client/b/s;->b:Lcom/yf/gattlib/client/b/a/b;

    invoke-interface {v1, v0}, Lcom/yf/gattlib/client/b/a/b;->a(Lcom/yf/gattlib/client/b/b/a;)V

    .line 139
    iget-object v0, p0, Lcom/yf/gattlib/client/b/s;->h:[B

    if-eqz v0, :cond_4

    .line 140
    iget-object v0, p0, Lcom/yf/gattlib/client/b/s;->h:[B

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/s;->b([B)[B

    .line 142
    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/yf/gattlib/client/b/s;->c:I

    .line 154
    iget-object v0, p0, Lcom/yf/gattlib/client/b/s;->b:Lcom/yf/gattlib/client/b/a/b;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/a/b;->c()V

    .line 155
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/s;->i()V

    goto/16 :goto_0

    .line 159
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/client/b/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " STATE_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 162
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/client/b/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " STATE_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/yf/gattlib/client/b/s;->b:Lcom/yf/gattlib/client/b/a/b;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/a/b;->d()V

    goto/16 :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/yf/gattlib/client/b/s;->b:Lcom/yf/gattlib/client/b/a/b;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/a/b;->b()V

    .line 175
    iput v1, p0, Lcom/yf/gattlib/client/b/s;->f:I

    .line 176
    iput v1, p0, Lcom/yf/gattlib/client/b/s;->g:I

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/client/b/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 0. GetTotalExerciseDataTransaction onStart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/s;->c()V

    .line 179
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 76
    const-wide/16 v0, 0x5dc0

    return-wide v0
.end method
