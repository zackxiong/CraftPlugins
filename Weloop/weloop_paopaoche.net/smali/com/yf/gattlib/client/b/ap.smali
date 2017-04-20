.class public Lcom/yf/gattlib/client/b/ap;
.super Lcom/yf/gattlib/client/b/e;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/client/b/ap$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/yf/gattlib/client/b/ap$a;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/yf/gattlib/client/b/ap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/client/b/ap;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/yf/gattlib/client/b/ap$a;IIII)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/e;-><init>()V

    .line 24
    const/4 v0, 0x3

    iput v0, p0, Lcom/yf/gattlib/client/b/ap;->c:I

    .line 29
    iput-object p1, p0, Lcom/yf/gattlib/client/b/ap;->b:Lcom/yf/gattlib/client/b/ap$a;

    .line 30
    iput p2, p0, Lcom/yf/gattlib/client/b/ap;->d:I

    .line 31
    iput p4, p0, Lcom/yf/gattlib/client/b/ap;->e:I

    .line 32
    iput p3, p0, Lcom/yf/gattlib/client/b/ap;->f:I

    .line 33
    iput p5, p0, Lcom/yf/gattlib/client/b/ap;->g:I

    .line 34
    return-void
.end method

.method private static a(IIIS)[B
    .locals 2

    .prologue
    .line 120
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 121
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 122
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 123
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 125
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 126
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 127
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 128
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/yf/gattlib/p/n;->a([B)V

    .line 130
    return-object v0
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 89
    invoke-static {p1}, Lcom/yf/gattlib/client/b/a/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    packed-switch p2, :pswitch_data_0

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ap;->b:Lcom/yf/gattlib/client/b/ap$a;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ap;->b:Lcom/yf/gattlib/client/b/ap$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/ap$a;->d()V

    .line 105
    :cond_0
    :goto_0
    :pswitch_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yf/gattlib/client/b/e;->a(III[Ljava/lang/Object;)V

    .line 106
    return-void

    .line 94
    :pswitch_2
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ap;->b:Lcom/yf/gattlib/client/b/ap$a;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ap;->b:Lcom/yf/gattlib/client/b/ap$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/ap$a;->b()V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public varargs a([B[Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/16 v3, 0xb5

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/client/b/ap;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Accept value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/yf/gattlib/client/b/ap;->c:I

    packed-switch v0, :pswitch_data_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ap;->b:Lcom/yf/gattlib/client/b/ap$a;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ap;->b:Lcom/yf/gattlib/client/b/ap$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/ap$a;->d()V

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/ap;->i()V

    .line 72
    :goto_0
    return-void

    .line 42
    :pswitch_0
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/yf/gattlib/client/b/ap;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " STATE_WAITING_CMD,code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",step="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yf/gattlib/client/b/ap;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",calories="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yf/gattlib/client/b/ap;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",distance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yf/gattlib/client/b/ap;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 45
    if-ne v0, v3, :cond_0

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/yf/gattlib/client/b/ap;->c:I

    .line 47
    iget v0, p0, Lcom/yf/gattlib/client/b/ap;->d:I

    iget v1, p0, Lcom/yf/gattlib/client/b/ap;->f:I

    iget v2, p0, Lcom/yf/gattlib/client/b/ap;->e:I

    iget v3, p0, Lcom/yf/gattlib/client/b/ap;->g:I

    int-to-short v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/yf/gattlib/client/b/ap;->a(IIIS)[B

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    .line 50
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/ap;->a([B)V

    goto :goto_0

    .line 56
    :pswitch_1
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/yf/gattlib/client/b/ap;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " STATE_WRITE_CMD,code2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 58
    if-ne v0, v3, :cond_0

    .line 59
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ap;->b:Lcom/yf/gattlib/client/b/ap$a;

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ap;->b:Lcom/yf/gattlib/client/b/ap$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/ap$a;->c()V

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/ap;->i()V

    goto/16 :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ap;->b:Lcom/yf/gattlib/client/b/ap$a;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ap;->b:Lcom/yf/gattlib/client/b/ap$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/ap$a;->a()V

    .line 81
    :cond_0
    const-string v0, "H2DR"

    const/16 v1, 0xb5

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    .line 83
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/ap;->a([B)V

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/ap;->c:I

    .line 85
    return-void
.end method
