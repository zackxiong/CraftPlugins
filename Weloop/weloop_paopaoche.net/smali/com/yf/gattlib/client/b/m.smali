.class public Lcom/yf/gattlib/client/b/m;
.super Lcom/yf/gattlib/client/b/ab;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/client/b/m$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/nio/ByteBuffer;

.field private f:Lcom/yf/gattlib/client/b/m$a;


# direct methods
.method public constructor <init>(IIILcom/yf/gattlib/client/b/m$a;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/ab;-><init>()V

    .line 37
    iput p1, p0, Lcom/yf/gattlib/client/b/m;->b:I

    .line 38
    iput p2, p0, Lcom/yf/gattlib/client/b/m;->c:I

    .line 39
    iput p3, p0, Lcom/yf/gattlib/client/b/m;->d:I

    .line 40
    iput-object p4, p0, Lcom/yf/gattlib/client/b/m;->f:Lcom/yf/gattlib/client/b/m$a;

    .line 41
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/gattlib/client/b/m;->a:I

    .line 109
    iget-object v0, p0, Lcom/yf/gattlib/client/b/m;->f:Lcom/yf/gattlib/client/b/m$a;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/yf/gattlib/client/b/m;->f:Lcom/yf/gattlib/client/b/m$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/m$a;->a()V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/m;->i()V

    .line 113
    return-void
.end method

.method public varargs a([B[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetDeviceStateNewTransaction mState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/gattlib/client/b/m;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 46
    iget v0, p0, Lcom/yf/gattlib/client/b/m;->a:I

    packed-switch v0, :pswitch_data_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 48
    :pswitch_0
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/m;->e()V

    .line 49
    iget-object v0, p0, Lcom/yf/gattlib/client/b/m;->e:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    .line 50
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetDeviceStateNewTransaction mData len = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 52
    add-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/m;->e:Ljava/nio/ByteBuffer;

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/client/b/m;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 55
    iget-object v0, p0, Lcom/yf/gattlib/client/b/m;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const-string v0, "GetDeviceStateNewTransaction onReceiveFinish() "

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/yf/gattlib/client/b/m;->f:Lcom/yf/gattlib/client/b/m$a;

    if-eqz v0, :cond_2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetDeviceStateNewTransaction mData len = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/b/m;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/yf/gattlib/client/b/m;->f:Lcom/yf/gattlib/client/b/m$a;

    iget-object v1, p0, Lcom/yf/gattlib/client/b/m;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yf/gattlib/client/b/m$a;->a([B)V

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/m;->p()V

    .line 64
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/m;->i()V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected c()[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 75
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 76
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 77
    const/16 v0, -0x5b

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 78
    const/16 v0, 0x50

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 79
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 80
    invoke-static {}, Lcom/yf/gattlib/p/b;->h()[B

    move-result-object v3

    .line 81
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-byte v5, v3, v0

    .line 82
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    iget v0, p0, Lcom/yf/gattlib/client/b/m;->b:I

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 85
    iget v0, p0, Lcom/yf/gattlib/client/b/m;->c:I

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 86
    iget v0, p0, Lcom/yf/gattlib/client/b/m;->d:I

    int-to-short v0, v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 88
    iput v1, p0, Lcom/yf/gattlib/client/b/m;->a:I

    .line 89
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/m;->e()V

    .line 90
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 95
    const-string v0, "GetDeviceStateNewTransaction getCommand() addTimeout"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/m;->p()V

    .line 97
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/m;->l()V

    .line 98
    return-void
.end method

.method protected p()V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/m;->o()V

    .line 102
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/m;->n()V

    .line 103
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/m;->m()V

    .line 104
    return-void
.end method
