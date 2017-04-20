.class public Lcom/yf/gattlib/client/b/o;
.super Lcom/yf/gattlib/client/b/e;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/client/b/o$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/yf/gattlib/client/b/o$a;

.field private c:I

.field private d:[B

.field private e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/yf/gattlib/client/b/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/client/b/o;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/yf/gattlib/client/b/o$a;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/e;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/o;->c:I

    .line 28
    iput-object p1, p0, Lcom/yf/gattlib/client/b/o;->b:Lcom/yf/gattlib/client/b/o$a;

    .line 29
    return-void
.end method

.method private c([B)[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 93
    const-string v1, "%02x%02x"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x7

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x6

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 94
    const-string v1, "%02x%02x"

    new-array v2, v6, [Ljava/lang/Object;

    const/16 v3, 0x9

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0x8

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 95
    const-string v1, "%02x%02x"

    new-array v2, v6, [Ljava/lang/Object;

    const/16 v3, 0xb

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0xa

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 96
    return-object v0
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x2

    if-eq v0, p1, :cond_1

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yf/gattlib/client/b/e;->a(III[Ljava/lang/Object;)V

    .line 138
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 119
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 135
    :pswitch_1
    iget-object v0, p0, Lcom/yf/gattlib/client/b/o;->b:Lcom/yf/gattlib/client/b/o$a;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/yf/gattlib/client/b/o;->b:Lcom/yf/gattlib/client/b/o$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/o$a;->b()V

    goto :goto_0

    .line 124
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/client/b/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u83b7\u5f97\u8868\u76d8\u4e8b\u52a1\u8d85\u65f6 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/yf/gattlib/client/b/o;->b:Lcom/yf/gattlib/client/b/o$a;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/yf/gattlib/client/b/o;->b:Lcom/yf/gattlib/client/b/o$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/o$a;->d()V

    goto :goto_0

    .line 130
    :pswitch_3
    iget-object v0, p0, Lcom/yf/gattlib/client/b/o;->b:Lcom/yf/gattlib/client/b/o$a;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/yf/gattlib/client/b/o;->b:Lcom/yf/gattlib/client/b/o$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/o$a;->c()V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs a([B[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/client/b/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onGetValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 41
    iget v0, p0, Lcom/yf/gattlib/client/b/o;->c:I

    packed-switch v0, :pswitch_data_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/client/b/o;->b:Lcom/yf/gattlib/client/b/o$a;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/yf/gattlib/client/b/o;->b:Lcom/yf/gattlib/client/b/o$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/o$a;->b()V

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/o;->i()V

    .line 88
    :goto_0
    return-void

    .line 43
    :pswitch_0
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 44
    const/16 v1, 0x9a

    if-ne v0, v1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1. STATE_WAITING_RESPONSE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/yf/gattlib/client/b/o;->c:I

    goto :goto_0

    .line 54
    :pswitch_1
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2. STATE_RECEIVER_DATA = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 57
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    .line 59
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/o;->d:[B

    .line 60
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/client/b/o;->b([B)[B

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Lcom/yf/gattlib/client/b/o;->c:I

    goto :goto_0

    .line 66
    :pswitch_2
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3. STATE_WARTING_SEND_DATA = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/yf/gattlib/client/b/o;->d:[B

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/o;->b([B)[B

    .line 70
    const/4 v0, 0x4

    iput v0, p0, Lcom/yf/gattlib/client/b/o;->c:I

    .line 71
    iput-object p1, p0, Lcom/yf/gattlib/client/b/o;->e:[B

    goto/16 :goto_0

    .line 74
    :pswitch_3
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4. STATE_SEND_DATA_RESPONSE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/yf/gattlib/client/b/o;->b:Lcom/yf/gattlib/client/b/o$a;

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/yf/gattlib/client/b/o;->b:Lcom/yf/gattlib/client/b/o$a;

    iget-object v1, p0, Lcom/yf/gattlib/client/b/o;->e:[B

    invoke-direct {p0, v1}, Lcom/yf/gattlib/client/b/o;->c([B)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yf/gattlib/client/b/o$a;->a([Ljava/lang/String;)V

    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/o;->i()V

    goto/16 :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b()V
    .locals 4

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/client/b/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u83b7\u5f97\u8868\u76d8\u4fe1\u606fonStart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 102
    const-string v0, "H2DR"

    const/16 v1, 0x9a

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/yf/gattlib/client/b/o;->b:Lcom/yf/gattlib/client/b/o$a;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/yf/gattlib/client/b/o;->b:Lcom/yf/gattlib/client/b/o$a;

    invoke-interface {v1}, Lcom/yf/gattlib/client/b/o$a;->a()V

    .line 109
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/o;->a([B)V

    .line 110
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/o;->c:I

    .line 111
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 33
    const-wide/16 v0, 0x2710

    return-wide v0
.end method
