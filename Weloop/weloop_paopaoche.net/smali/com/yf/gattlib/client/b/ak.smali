.class public Lcom/yf/gattlib/client/b/ak;
.super Lcom/yf/gattlib/client/b/e;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/client/b/ak$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/yf/gattlib/client/b/ak$a;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/yf/gattlib/client/b/ak;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/client/b/ak;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/yf/gattlib/client/b/ak$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/e;-><init>()V

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lcom/yf/gattlib/client/b/ak;->e:I

    .line 76
    iput-object p1, p0, Lcom/yf/gattlib/client/b/ak;->b:Lcom/yf/gattlib/client/b/ak$a;

    .line 77
    iput-object p2, p0, Lcom/yf/gattlib/client/b/ak;->c:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/yf/gattlib/client/b/ak;->d:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 84
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 85
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 87
    if-eqz v2, :cond_0

    array-length v4, v2

    if-ne v4, v8, :cond_0

    .line 89
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    aput-byte v5, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_1
    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v0, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    if-eqz v3, :cond_1

    array-length v2, v3

    if-ne v2, v8, :cond_1

    .line 107
    const/4 v2, 0x2

    const/4 v4, 0x0

    :try_start_2
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v0, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 114
    const/4 v2, 0x3

    const/4 v4, 0x1

    :try_start_3
    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v0, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 122
    const/4 v1, 0x4

    aget-byte v2, v0, v6

    aget-byte v3, v0, v7

    add-int/2addr v2, v3

    aget-byte v3, v0, v8

    add-int/2addr v2, v3

    aget-byte v3, v0, v9

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 126
    :goto_0
    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 92
    goto :goto_0

    .line 97
    :catch_1
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 99
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 102
    goto :goto_0

    .line 108
    :catch_2
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 110
    goto :goto_0

    .line 115
    :catch_3
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 117
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 120
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 124
    goto :goto_0
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x2

    if-eq v0, p1, :cond_1

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yf/gattlib/client/b/e;->a(III[Ljava/lang/Object;)V

    .line 158
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 135
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 154
    :pswitch_1
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ak;->b:Lcom/yf/gattlib/client/b/ak$a;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ak;->b:Lcom/yf/gattlib/client/b/ak$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/ak$a;->d()V

    goto :goto_0

    .line 139
    :pswitch_2
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ak;->b:Lcom/yf/gattlib/client/b/ak$a;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ak;->b:Lcom/yf/gattlib/client/b/ak$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/ak$a;->d()V

    goto :goto_0

    .line 144
    :pswitch_3
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ak;->b:Lcom/yf/gattlib/client/b/ak$a;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ak;->b:Lcom/yf/gattlib/client/b/ak$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/ak$a;->b()V

    goto :goto_0

    .line 149
    :pswitch_4
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ak;->b:Lcom/yf/gattlib/client/b/ak$a;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ak;->b:Lcom/yf/gattlib/client/b/ak$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/ak$a;->d()V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public varargs a([B[Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/16 v4, 0xad

    .line 32
    iget v0, p0, Lcom/yf/gattlib/client/b/ak;->e:I

    packed-switch v0, :pswitch_data_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ak;->b:Lcom/yf/gattlib/client/b/ak$a;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ak;->b:Lcom/yf/gattlib/client/b/ak$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/ak$a;->d()V

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/ak;->i()V

    .line 71
    :goto_0
    return-void

    .line 34
    :pswitch_0
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 35
    sget-object v1, Lcom/yf/gattlib/client/b/ak;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE_WAITING_CMD,code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",beginTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/gattlib/client/b/ak;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",endTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/gattlib/client/b/ak;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    if-ne v0, v4, :cond_0

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lcom/yf/gattlib/client/b/ak;->e:I

    .line 39
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ak;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/yf/gattlib/client/b/ak;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yf/gattlib/client/b/ak;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 40
    if-nez v0, :cond_3

    .line 41
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ak;->b:Lcom/yf/gattlib/client/b/ak$a;

    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ak;->b:Lcom/yf/gattlib/client/b/ak$a;

    iget-object v1, p0, Lcom/yf/gattlib/client/b/ak;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/yf/gattlib/client/b/ak;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/yf/gattlib/client/b/ak$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_2
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/ak;->i()V

    goto :goto_0

    .line 48
    :cond_3
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    .line 49
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/ak;->a([B)V

    goto :goto_0

    .line 55
    :pswitch_1
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 56
    sget-object v1, Lcom/yf/gattlib/client/b/ak;->a:Ljava/lang/String;

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

    .line 57
    if-ne v0, v4, :cond_0

    .line 58
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ak;->b:Lcom/yf/gattlib/client/b/ak$a;

    if-eqz v0, :cond_4

    .line 59
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ak;->b:Lcom/yf/gattlib/client/b/ak$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/ak$a;->c()V

    .line 61
    :cond_4
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/ak;->i()V

    goto/16 :goto_0

    .line 32
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
    .line 162
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ak;->b:Lcom/yf/gattlib/client/b/ak$a;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ak;->b:Lcom/yf/gattlib/client/b/ak$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/ak$a;->a()V

    .line 165
    :cond_0
    const-string v0, "H2DR"

    const/16 v1, 0xad

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    .line 167
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/ak;->a([B)V

    .line 168
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/ak;->e:I

    .line 169
    return-void
.end method
