.class public Lcom/yf/gattlib/client/b/aq;
.super Lcom/yf/gattlib/client/b/e;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/client/b/aq$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/yf/gattlib/client/b/aq$a;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/yf/gattlib/client/b/aq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/client/b/aq;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/yf/gattlib/client/b/aq$a;III)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/e;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/aq;->e:I

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lcom/yf/gattlib/client/b/aq;->f:I

    .line 38
    iput-object p1, p0, Lcom/yf/gattlib/client/b/aq;->b:Lcom/yf/gattlib/client/b/aq$a;

    .line 39
    iput p2, p0, Lcom/yf/gattlib/client/b/aq;->c:I

    .line 40
    iput p3, p0, Lcom/yf/gattlib/client/b/aq;->d:I

    .line 41
    iput p4, p0, Lcom/yf/gattlib/client/b/aq;->e:I

    .line 42
    return-void
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 106
    invoke-static {p1}, Lcom/yf/gattlib/client/b/a/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yf/gattlib/client/b/e;->a(III[Ljava/lang/Object;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-static {p1, p2}, Lcom/yf/gattlib/client/b/a/d;->b(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    sparse-switch p2, :sswitch_data_0

    .line 126
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aq;->b:Lcom/yf/gattlib/client/b/aq$a;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aq;->b:Lcom/yf/gattlib/client/b/aq$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/aq$a;->b()V

    goto :goto_0

    .line 116
    :sswitch_0
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aq;->b:Lcom/yf/gattlib/client/b/aq$a;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aq;->b:Lcom/yf/gattlib/client/b/aq$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/aq$a;->d()V

    goto :goto_0

    .line 121
    :sswitch_1
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aq;->b:Lcom/yf/gattlib/client/b/aq$a;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aq;->b:Lcom/yf/gattlib/client/b/aq$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/aq$a;->b()V

    goto :goto_0

    .line 114
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public varargs a([B[Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/16 v8, 0xb4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 47
    iget v0, p0, Lcom/yf/gattlib/client/b/aq;->f:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aq;->b:Lcom/yf/gattlib/client/b/aq$a;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aq;->b:Lcom/yf/gattlib/client/b/aq$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/aq$a;->d()V

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/aq;->i()V

    .line 84
    :goto_0
    return-void

    .line 49
    :pswitch_0
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 50
    sget-object v1, Lcom/yf/gattlib/client/b/aq;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE_WAITING_CMD,code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yf/gattlib/client/b/aq;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",weight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yf/gattlib/client/b/aq;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    if-ne v0, v8, :cond_0

    .line 53
    iput v5, p0, Lcom/yf/gattlib/client/b/aq;->f:I

    .line 55
    iget v0, p0, Lcom/yf/gattlib/client/b/aq;->e:I

    if-gez v0, :cond_2

    .line 56
    new-array v0, v7, [B

    iget v1, p0, Lcom/yf/gattlib/client/b/aq;->d:I

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget v1, p0, Lcom/yf/gattlib/client/b/aq;->c:I

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    aput-byte v4, v0, v5

    .line 60
    :goto_1
    invoke-static {v0}, Lcom/yf/gattlib/p/n;->a([B)V

    .line 61
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/aq;->a([B)V

    goto :goto_0

    .line 58
    :cond_2
    const/4 v0, 0x5

    new-array v0, v0, [B

    iget v1, p0, Lcom/yf/gattlib/client/b/aq;->d:I

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget v1, p0, Lcom/yf/gattlib/client/b/aq;->c:I

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    iget v1, p0, Lcom/yf/gattlib/client/b/aq;->e:I

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    iget v1, p0, Lcom/yf/gattlib/client/b/aq;->e:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    const/4 v1, 0x4

    aput-byte v4, v0, v1

    goto :goto_1

    .line 68
    :pswitch_1
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 69
    sget-object v1, Lcom/yf/gattlib/client/b/aq;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE_WRITE_CMD,code2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    if-ne v0, v8, :cond_0

    .line 71
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aq;->b:Lcom/yf/gattlib/client/b/aq$a;

    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aq;->b:Lcom/yf/gattlib/client/b/aq$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/aq$a;->c()V

    .line 74
    :cond_3
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/aq;->i()V

    goto/16 :goto_0

    .line 47
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
    .line 89
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aq;->b:Lcom/yf/gattlib/client/b/aq$a;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/yf/gattlib/client/b/aq;->b:Lcom/yf/gattlib/client/b/aq$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/aq$a;->a()V

    .line 93
    :cond_0
    const/4 v0, 0x3

    .line 94
    iget v1, p0, Lcom/yf/gattlib/client/b/aq;->e:I

    if-lez v1, :cond_1

    .line 95
    const/4 v0, 0x5

    .line 97
    :cond_1
    const-string v1, "H2DR"

    const/16 v2, 0xb4

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    .line 100
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/aq;->a([B)V

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/aq;->f:I

    .line 102
    return-void
.end method
