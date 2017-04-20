.class public Lcom/yf/gattlib/client/d;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/client/d$1;,
        Lcom/yf/gattlib/client/d$a;
    }
.end annotation


# instance fields
.field private A:B

.field private B:B

.field private C:B

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/client/e;",
            ">;"
        }
    .end annotation
.end field

.field private a:[B

.field private b:B

.field private c:B

.field private d:B

.field private e:B

.field private f:[B

.field private g:[B

.field private h:[B

.field private i:I

.field private j:I

.field private k:[B

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:B

.field private p:I

.field private q:I

.field private r:I

.field private s:[B

.field private t:[B

.field private u:[B

.field private v:[B

.field private w:B

.field private x:B

.field private y:B

.field private z:B


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xf

    const/4 v1, 0x3

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x7

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/yf/gattlib/client/d;->a:[B

    .line 58
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/yf/gattlib/client/d;->f:[B

    .line 59
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/yf/gattlib/client/d;->g:[B

    .line 60
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/yf/gattlib/client/d;->h:[B

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/yf/gattlib/client/d;->k:[B

    .line 71
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/yf/gattlib/client/d;->s:[B

    .line 72
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/yf/gattlib/client/d;->t:[B

    .line 73
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/yf/gattlib/client/d;->u:[B

    .line 74
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/yf/gattlib/client/d;->v:[B

    .line 695
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/client/d;->D:Ljava/util/List;

    .line 506
    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/gattlib/client/d$1;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yf/gattlib/client/d;-><init>()V

    return-void
.end method

.method public static a()Lcom/yf/gattlib/client/d;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/yf/gattlib/client/d$a;->a:Lcom/yf/gattlib/client/d;

    return-object v0
.end method

.method public static a([BZ)Lcom/yf/gattlib/client/d;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceState The length of parse  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceState test, The length of parse  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 110
    array-length v0, p0

    .line 111
    sparse-switch v0, :sswitch_data_0

    .line 131
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v0

    :goto_0
    return-object v0

    .line 113
    :sswitch_0
    invoke-static {p0}, Lcom/yf/gattlib/client/d;->g([B)Lcom/yf/gattlib/client/d;

    move-result-object v0

    goto :goto_0

    .line 115
    :sswitch_1
    if-eqz p1, :cond_0

    .line 116
    invoke-static {p0}, Lcom/yf/gattlib/client/d;->h([B)Lcom/yf/gattlib/client/d;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {p0}, Lcom/yf/gattlib/client/d;->i([B)Lcom/yf/gattlib/client/d;

    move-result-object v0

    goto :goto_0

    .line 121
    :sswitch_2
    invoke-static {p0}, Lcom/yf/gattlib/client/d;->j([B)Lcom/yf/gattlib/client/d;

    move-result-object v0

    goto :goto_0

    .line 123
    :sswitch_3
    invoke-static {p0}, Lcom/yf/gattlib/client/d;->k([B)Lcom/yf/gattlib/client/d;

    move-result-object v0

    goto :goto_0

    .line 125
    :sswitch_4
    invoke-static {p0}, Lcom/yf/gattlib/client/d;->e([B)Lcom/yf/gattlib/client/d;

    move-result-object v0

    goto :goto_0

    .line 127
    :sswitch_5
    invoke-static {p0}, Lcom/yf/gattlib/client/d;->f([B)Lcom/yf/gattlib/client/d;

    move-result-object v0

    goto :goto_0

    .line 129
    :sswitch_6
    invoke-static {p0}, Lcom/yf/gattlib/client/d;->f([B)Lcom/yf/gattlib/client/d;

    move-result-object v0

    goto :goto_0

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x23 -> :sswitch_1
        0x24 -> :sswitch_2
        0x2f -> :sswitch_3
        0x3d -> :sswitch_4
        0x40 -> :sswitch_5
        0x41 -> :sswitch_6
    .end sparse-switch
.end method

.method public static a(B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 418
    const-string v0, ""

    .line 419
    const-string v0, "%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    and-int/lit16 v3, p0, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 420
    return-object v0
.end method

.method public static a([BI)Ljava/lang/String;
    .locals 4

    .prologue
    .line 518
    const-string v0, "%02d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-byte v3, p0, p1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 509
    aget-byte v2, p0, v1

    aget-byte v3, p0, v4

    if-ne v2, v3, :cond_0

    aget-byte v2, p0, v0

    aget-byte v3, p0, v5

    if-ne v2, v3, :cond_0

    .line 512
    :goto_0
    return v1

    :cond_0
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/yf/gattlib/client/d;->e(B)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-byte v2, p0, v0

    invoke-static {v2}, Lcom/yf/gattlib/client/d;->f(B)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-byte v2, p0, v4

    invoke-static {v2}, Lcom/yf/gattlib/client/d;->e(B)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-byte v2, p0, v5

    invoke-static {v2}, Lcom/yf/gattlib/client/d;->f(B)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static b([BI)V
    .locals 8

    .prologue
    const/16 v2, 0xff

    .line 761
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v3

    .line 762
    const/16 v0, 0xf

    new-array v4, v0, [B

    .line 763
    new-instance v5, Lcom/yf/gattlib/p/h;

    invoke-direct {v5, p0}, Lcom/yf/gattlib/p/h;-><init>([B)V

    .line 765
    invoke-virtual {v5}, Lcom/yf/gattlib/p/h;->c()[Z

    move-result-object v6

    .line 766
    const/4 v0, 0x0

    :goto_0
    array-length v1, v6

    if-ge v0, v1, :cond_2

    .line 767
    mul-int/lit8 v7, v0, 0x2

    aget-boolean v1, v6, v0

    if-eqz v1, :cond_0

    invoke-virtual {v5}, Lcom/yf/gattlib/p/h;->a()I

    move-result v1

    :goto_1
    int-to-byte v1, v1

    aput-byte v1, v4, v7

    .line 768
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v7, v1, 0x1

    aget-boolean v1, v6, v0

    if-eqz v1, :cond_1

    invoke-virtual {v5}, Lcom/yf/gattlib/p/h;->b()I

    move-result v1

    :goto_2
    int-to-byte v1, v1

    aput-byte v1, v4, v7

    .line 766
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 767
    goto :goto_1

    :cond_1
    move v1, v2

    .line 768
    goto :goto_2

    .line 770
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 771
    packed-switch p1, :pswitch_data_0

    .line 783
    :goto_3
    return-void

    .line 773
    :pswitch_0
    invoke-virtual {v3, v4}, Lcom/yf/gattlib/client/d;->b([B)V

    goto :goto_3

    .line 776
    :pswitch_1
    invoke-virtual {v3, v4}, Lcom/yf/gattlib/client/d;->c([B)V

    goto :goto_3

    .line 779
    :pswitch_2
    invoke-virtual {v3, v4}, Lcom/yf/gattlib/client/d;->d([B)V

    goto :goto_3

    .line 771
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static e([B)Lcom/yf/gattlib/client/d;
    .locals 8

    .prologue
    const/16 v7, 0x2b

    const/16 v6, 0x18

    const/4 v0, 0x0

    const/4 v5, 0x7

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceState Parse61 and the device info buffer  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Parse61 and the device info buffer  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 140
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v1

    .line 141
    new-array v2, v5, [B

    iput-object v2, v1, Lcom/yf/gattlib/client/d;->a:[B

    .line 142
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    .line 143
    :goto_0
    if-ge v0, v5, :cond_0

    .line 144
    shr-int v4, v3, v0

    and-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    const/4 v0, 0x4

    aget-byte v0, p0, v0

    iput-byte v0, v1, Lcom/yf/gattlib/client/d;->b:B

    .line 147
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    iput-byte v0, v1, Lcom/yf/gattlib/client/d;->e:B

    .line 148
    const/4 v0, 0x6

    aget-byte v0, p0, v0

    iput-byte v0, v1, Lcom/yf/gattlib/client/d;->w:B

    .line 149
    aget-byte v0, p0, v5

    iput-byte v0, v1, Lcom/yf/gattlib/client/d;->x:B

    .line 150
    const/16 v0, 0x8

    aget-byte v0, p0, v0

    iput-byte v0, v1, Lcom/yf/gattlib/client/d;->y:B

    .line 151
    const/16 v0, 0x9

    aget-byte v0, p0, v0

    iput-byte v0, v1, Lcom/yf/gattlib/client/d;->z:B

    .line 153
    const/16 v0, 0x27

    invoke-static {p0, v0, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/yf/gattlib/client/d;->l([B)V

    .line 160
    aget-byte v0, p0, v7

    invoke-static {v0}, Lcom/yf/gattlib/client/d;->a(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/yf/gattlib/client/d;->p:I

    .line 161
    const/16 v0, 0x2c

    aget-byte v0, p0, v0

    invoke-static {v0}, Lcom/yf/gattlib/client/d;->a(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/yf/gattlib/client/d;->q:I

    .line 162
    const/16 v0, 0x2d

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x2e

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iput v0, v1, Lcom/yf/gattlib/client/d;->r:I

    .line 164
    const/16 v0, 0xa

    invoke-static {p0, v0, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, v1, Lcom/yf/gattlib/client/d;->f:[B

    .line 165
    const/16 v0, 0x26

    invoke-static {p0, v6, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, v1, Lcom/yf/gattlib/client/d;->g:[B

    .line 166
    const/16 v0, 0x2f

    const/16 v2, 0x3d

    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, v1, Lcom/yf/gattlib/client/d;->h:[B

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceState, \u6643\u52a8\u663e\u793a\u3001\u7ffb\u8155\u4eae\u5c4f = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/yf/gattlib/client/d;->c()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", \u591c\u95f4\u52ff\u6270 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/yf/gattlib/client/d;->b()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", \u624b\u673a\u9632\u4e22 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/yf/gattlib/client/d;->h()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", \u80cc\u5149\u663e\u793a = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, v1, Lcom/yf/gattlib/client/d;->w:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/yf/gattlib/client/d;->b()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Alarm1 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/yf/gattlib/client/d;->f:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", alarm2 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/yf/gattlib/client/d;->g:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", alarm3 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/yf/gattlib/client/d;->h:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", \u767d\u540d\u5355 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/yf/gattlib/client/d;->a:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceState test, \u624b\u673a\u7c7b\u578b = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, v1, Lcom/yf/gattlib/client/d;->b:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u8bed\u8a00 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, v1, Lcom/yf/gattlib/client/d;->e:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u80cc\u5149\u663e\u793a = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, v1, Lcom/yf/gattlib/client/d;->w:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u7ffb\u8155\u4eae\u5c4f = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, v1, Lcom/yf/gattlib/client/d;->x:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u9632\u4e22\u5931 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, v1, Lcom/yf/gattlib/client/d;->y:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u52ff\u6270\u65f6\u95f4 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/yf/gattlib/client/d;->q()[B

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u65b0\u95f9\u949f1 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/yf/gattlib/client/d;->f:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u65b0\u95f9\u949f2 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/yf/gattlib/client/d;->g:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u65b0\u95f9\u949f3 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/yf/gattlib/client/d;->h:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mac\u5730\u5740 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/yf/gattlib/client/d;->v:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 190
    return-object v1
.end method

.method static e(B)Z
    .locals 1

    .prologue
    .line 523
    if-ltz p0, :cond_0

    const/16 v0, 0x17

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f([B)Lcom/yf/gattlib/client/d;
    .locals 10

    .prologue
    const/16 v9, 0x32

    const/16 v8, 0x40

    const/16 v7, 0xc

    const/4 v6, 0x7

    const/4 v0, 0x0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceState Parse64 and the device info buffer  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Parse64 and the device info buffer  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 197
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v2

    .line 198
    new-array v3, v6, [B

    iput-object v3, v2, Lcom/yf/gattlib/client/d;->a:[B

    .line 199
    aget-byte v1, p0, v0

    and-int/lit16 v4, v1, 0xff

    move v1, v0

    .line 200
    :goto_0
    if-ge v1, v6, :cond_0

    .line 201
    shr-int v5, v4, v1

    and-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_0
    const/4 v1, 0x4

    aget-byte v1, p0, v1

    iput-byte v1, v2, Lcom/yf/gattlib/client/d;->b:B

    .line 204
    const/4 v1, 0x5

    aget-byte v1, p0, v1

    iput-byte v1, v2, Lcom/yf/gattlib/client/d;->c:B

    .line 205
    const/4 v1, 0x6

    aget-byte v1, p0, v1

    iput-byte v1, v2, Lcom/yf/gattlib/client/d;->d:B

    .line 206
    aget-byte v1, p0, v6

    iput-byte v1, v2, Lcom/yf/gattlib/client/d;->e:B

    .line 207
    const/16 v1, 0x8

    invoke-static {p0, v1, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/yf/gattlib/client/d;->l([B)V

    .line 208
    aget-byte v1, p0, v7

    iput-byte v1, v2, Lcom/yf/gattlib/client/d;->y:B

    .line 209
    const/16 v1, 0xd

    aget-byte v1, p0, v1

    iput-byte v1, v2, Lcom/yf/gattlib/client/d;->A:B

    .line 210
    const/16 v1, 0xe

    aget-byte v1, p0, v1

    iput-byte v1, v2, Lcom/yf/gattlib/client/d;->B:B

    .line 211
    const/16 v1, 0x20

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/yf/gattlib/client/d;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcom/yf/gattlib/client/d;->p:I

    .line 212
    const/16 v1, 0x21

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/yf/gattlib/client/d;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcom/yf/gattlib/client/d;->q:I

    .line 213
    const/16 v1, 0x22

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x23

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    iput v1, v2, Lcom/yf/gattlib/client/d;->r:I

    .line 215
    const/16 v1, 0x10

    const/16 v3, 0x1e

    invoke-static {p0, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, v2, Lcom/yf/gattlib/client/d;->f:[B

    .line 216
    const/16 v1, 0x24

    invoke-static {p0, v1, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, v2, Lcom/yf/gattlib/client/d;->g:[B

    .line 217
    invoke-static {p0, v9, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, v2, Lcom/yf/gattlib/client/d;->h:[B

    .line 218
    array-length v1, p0

    if-le v1, v8, :cond_1

    aget-byte v0, p0, v8

    :cond_1
    iput-byte v0, v2, Lcom/yf/gattlib/client/d;->C:B

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceState \u624b\u73af\u6fc0\u6d3b\u72b6\u6001: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, v2, Lcom/yf/gattlib/client/d;->C:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceState \u5524\u9192\u6a21\u5f0f = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, v2, Lcom/yf/gattlib/client/d;->c:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \u591c\u95f4\u52ff\u6270 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/yf/gattlib/client/d;->b()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \u624b\u673a\u9632\u4e22 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/yf/gattlib/client/d;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \u624b\u673a\u9632\u4e22\u7684\u539f\u59cb\u6570\u636e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, p0, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \u80cc\u5149\u663e\u793a = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, v2, Lcom/yf/gattlib/client/d;->w:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/yf/gattlib/client/d;->b()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Alarm1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/yf/gattlib/client/d;->f:[B

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alarm2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/yf/gattlib/client/d;->g:[B

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alarm3 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/yf/gattlib/client/d;->h:[B

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceState test, \u624b\u673a\u7c7b\u578b = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, v2, Lcom/yf/gattlib/client/d;->b:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u8bed\u8a00 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, v2, Lcom/yf/gattlib/client/d;->e:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5373\u65f6\u663e\u793a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, v2, Lcom/yf/gattlib/client/d;->c:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u80cc\u5149\u663e\u793a = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, v2, Lcom/yf/gattlib/client/d;->w:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u7ffb\u8155\u4eae\u5c4f = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, v2, Lcom/yf/gattlib/client/d;->x:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u9632\u4e22\u5931 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, v2, Lcom/yf/gattlib/client/d;->y:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u52ff\u6270\u65f6\u95f4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/yf/gattlib/client/d;->q()[B

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u65b0\u95f9\u949f1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/yf/gattlib/client/d;->f:[B

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u65b0\u95f9\u949f2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/yf/gattlib/client/d;->g:[B

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u65b0\u95f9\u949f3 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/yf/gattlib/client/d;->h:[B

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mac\u5730\u5740 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/yf/gattlib/client/d;->v:[B

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 244
    return-object v2
.end method

.method static f(B)Z
    .locals 1

    .prologue
    .line 527
    if-ltz p0, :cond_0

    const/16 v0, 0x3c

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g([B)Lcom/yf/gattlib/client/d;
    .locals 8

    .prologue
    const/16 v7, 0x1e

    const/4 v6, 0x7

    const/4 v1, 0x0

    .line 248
    const-string v0, "DeviceState parse32"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v2

    .line 250
    new-array v3, v6, [B

    iput-object v3, v2, Lcom/yf/gattlib/client/d;->a:[B

    .line 251
    aget-byte v0, p0, v1

    and-int/lit16 v4, v0, 0xff

    move v0, v1

    .line 252
    :goto_0
    if-ge v0, v6, :cond_0

    .line 253
    shr-int v5, v4, v0

    and-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_0
    const/4 v0, 0x4

    aget-byte v0, p0, v0

    iput-byte v0, v2, Lcom/yf/gattlib/client/d;->b:B

    .line 257
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    iput-byte v0, v2, Lcom/yf/gattlib/client/d;->c:B

    .line 258
    const/4 v0, 0x6

    aget-byte v0, p0, v0

    iput-byte v0, v2, Lcom/yf/gattlib/client/d;->d:B

    .line 259
    aget-byte v0, p0, v6

    iput-byte v0, v2, Lcom/yf/gattlib/client/d;->e:B

    .line 262
    const/16 v0, 0x8

    const/16 v3, 0xc

    invoke-static {p0, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/yf/gattlib/client/d;->l([B)V

    .line 264
    const/16 v0, 0x10

    invoke-static {p0, v0, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, v2, Lcom/yf/gattlib/client/d;->f:[B

    .line 265
    iget-object v0, v2, Lcom/yf/gattlib/client/d;->f:[B

    aget-byte v0, v0, v1

    iput v0, v2, Lcom/yf/gattlib/client/d;->i:I

    .line 266
    iget-object v0, v2, Lcom/yf/gattlib/client/d;->f:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    iput v0, v2, Lcom/yf/gattlib/client/d;->j:I

    .line 267
    aget-byte v0, p0, v7

    iput-byte v0, v2, Lcom/yf/gattlib/client/d;->o:B

    .line 269
    return-object v2
.end method

.method private static h([B)Lcom/yf/gattlib/client/d;
    .locals 6

    .prologue
    const/16 v5, 0x1a

    const/16 v4, 0x17

    const/16 v3, 0x14

    const/16 v2, 0x11

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceState parse35 buffer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceState parse35ToWatch2 parse35 buffer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 280
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v0

    .line 281
    const/4 v1, 0x7

    aget-byte v1, p0, v1

    iput-byte v1, v0, Lcom/yf/gattlib/client/d;->b:B

    .line 282
    const/16 v1, 0x8

    aget-byte v1, p0, v1

    iput-byte v1, v0, Lcom/yf/gattlib/client/d;->e:B

    .line 283
    const/16 v1, 0x9

    aget-byte v1, p0, v1

    iput-byte v1, v0, Lcom/yf/gattlib/client/d;->w:B

    .line 284
    const/16 v1, 0xa

    aget-byte v1, p0, v1

    iput-byte v1, v0, Lcom/yf/gattlib/client/d;->x:B

    .line 285
    const/16 v1, 0xb

    aget-byte v1, p0, v1

    iput-byte v1, v0, Lcom/yf/gattlib/client/d;->y:B

    .line 287
    const/16 v1, 0xd

    invoke-static {p0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/gattlib/client/d;->l([B)V

    .line 288
    invoke-static {p0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 289
    const/16 v2, 0x3e9

    invoke-static {v1, v2}, Lcom/yf/gattlib/client/d;->b([BI)V

    .line 290
    invoke-static {p0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 291
    const/16 v2, 0x3ea

    invoke-static {v1, v2}, Lcom/yf/gattlib/client/d;->b([BI)V

    .line 292
    invoke-static {p0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 293
    const/16 v2, 0x3eb

    invoke-static {v1, v2}, Lcom/yf/gattlib/client/d;->b([BI)V

    .line 294
    const/16 v1, 0x20

    invoke-static {p0, v5, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, v0, Lcom/yf/gattlib/client/d;->v:[B

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceState \u624b\u673a\u7c7b\u578b = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->b:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u8bed\u8a00 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->e:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u80cc\u5149\u663e\u793a = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->w:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u7ffb\u8155\u4eae\u5c4f = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->x:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u9632\u4e22\u5931 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->y:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u52ff\u6270\u65f6\u95f4 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->q()[B

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u65b0\u95f9\u949f1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/yf/gattlib/client/d;->f:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u65b0\u95f9\u949f2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/yf/gattlib/client/d;->g:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u65b0\u95f9\u949f3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/yf/gattlib/client/d;->h:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mac\u5730\u5740 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/yf/gattlib/client/d;->v:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceState test, \u624b\u673a\u7c7b\u578b = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->b:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u8bed\u8a00 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->e:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u80cc\u5149\u663e\u793a = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->w:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u7ffb\u8155\u4eae\u5c4f = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->x:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u9632\u4e22\u5931 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->y:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u52ff\u6270\u65f6\u95f4 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->q()[B

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u65b0\u95f9\u949f1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/yf/gattlib/client/d;->f:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u65b0\u95f9\u949f2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/yf/gattlib/client/d;->g:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u65b0\u95f9\u949f3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/yf/gattlib/client/d;->h:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mac\u5730\u5740 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/yf/gattlib/client/d;->v:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 320
    return-object v0
.end method

.method private static i([B)Lcom/yf/gattlib/client/d;
    .locals 7

    .prologue
    const/16 v6, 0x1f

    const/16 v5, 0x19

    const/16 v4, 0x16

    const/16 v3, 0x13

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceState parse35 buffer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceState parse35ToNow parse35 buffer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 331
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v0

    .line 332
    const/4 v1, 0x7

    aget-byte v1, p0, v1

    iput-byte v1, v0, Lcom/yf/gattlib/client/d;->b:B

    .line 333
    const/16 v1, 0x8

    aget-byte v1, p0, v1

    iput-byte v1, v0, Lcom/yf/gattlib/client/d;->c:B

    .line 334
    const/16 v1, 0x9

    aget-byte v1, p0, v1

    iput-byte v1, v0, Lcom/yf/gattlib/client/d;->d:B

    .line 335
    const/16 v1, 0xa

    aget-byte v1, p0, v1

    iput-byte v1, v0, Lcom/yf/gattlib/client/d;->e:B

    .line 336
    const/16 v1, 0xb

    aget-byte v1, p0, v1

    iput-byte v1, v0, Lcom/yf/gattlib/client/d;->y:B

    .line 337
    const/16 v1, 0xc

    aget-byte v1, p0, v1

    iput-byte v1, v0, Lcom/yf/gattlib/client/d;->A:B

    .line 338
    const/16 v1, 0xd

    aget-byte v1, p0, v1

    iput-byte v1, v0, Lcom/yf/gattlib/client/d;->B:B

    .line 340
    const/16 v1, 0xf

    aget-byte v1, p0, v1

    iput-byte v1, v0, Lcom/yf/gattlib/client/d;->C:B

    .line 342
    const/16 v1, 0x10

    invoke-static {p0, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 343
    const/16 v2, 0x3e9

    invoke-static {v1, v2}, Lcom/yf/gattlib/client/d;->b([BI)V

    .line 344
    invoke-static {p0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 345
    const/16 v2, 0x3ea

    invoke-static {v1, v2}, Lcom/yf/gattlib/client/d;->b([BI)V

    .line 346
    invoke-static {p0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 347
    const/16 v2, 0x3eb

    invoke-static {v1, v2}, Lcom/yf/gattlib/client/d;->b([BI)V

    .line 348
    invoke-static {p0, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, v0, Lcom/yf/gattlib/client/d;->v:[B

    .line 349
    const/16 v1, 0x23

    invoke-static {p0, v6, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/gattlib/client/d;->l([B)V

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceState \u624b\u673a\u7c7b\u578b = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->b:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u8bed\u8a00 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->e:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u5373\u65f6\u663e\u793a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->c:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u80cc\u5149\u663e\u793a = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->w:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u7ffb\u8155\u4eae\u5c4f = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->x:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u9632\u4e22\u5931 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->y:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u52ff\u6270\u65f6\u95f4 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->q()[B

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u65b0\u95f9\u949f1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/yf/gattlib/client/d;->f:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u65b0\u95f9\u949f2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/yf/gattlib/client/d;->g:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u65b0\u95f9\u949f3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/yf/gattlib/client/d;->h:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mac\u5730\u5740 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/yf/gattlib/client/d;->v:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceState test, \u624b\u673a\u7c7b\u578b = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->b:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u8bed\u8a00 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->e:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u5373\u65f6\u663e\u793a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->c:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u80cc\u5149\u663e\u793a = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->w:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u7ffb\u8155\u4eae\u5c4f = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->x:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u9632\u4e22\u5931 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/yf/gattlib/client/d;->y:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u52ff\u6270\u65f6\u95f4 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->q()[B

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u65b0\u95f9\u949f1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/yf/gattlib/client/d;->f:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u65b0\u95f9\u949f2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/yf/gattlib/client/d;->g:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u65b0\u95f9\u949f3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/yf/gattlib/client/d;->h:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mac\u5730\u5740 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/yf/gattlib/client/d;->v:[B

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 377
    return-object v0
.end method

.method private static j([B)Lcom/yf/gattlib/client/d;
    .locals 3

    .prologue
    .line 381
    const-string v0, "DeviceState parse36"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 382
    invoke-static {p0}, Lcom/yf/gattlib/client/d;->g([B)Lcom/yf/gattlib/client/d;

    move-result-object v0

    .line 383
    const/16 v1, 0x20

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/yf/gattlib/client/d;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/yf/gattlib/client/d;->p:I

    .line 384
    const/16 v1, 0x21

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/yf/gattlib/client/d;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/yf/gattlib/client/d;->q:I

    .line 385
    const/16 v1, 0x22

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x23

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iput v1, v0, Lcom/yf/gattlib/client/d;->r:I

    .line 386
    return-object v0
.end method

.method private static k([B)Lcom/yf/gattlib/client/d;
    .locals 8

    .prologue
    const/16 v7, 0x2b

    const/16 v6, 0x18

    const/4 v0, 0x0

    const/4 v5, 0x7

    .line 390
    const-string v1, "DeviceState parse47"

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v1

    .line 393
    new-array v2, v5, [B

    iput-object v2, v1, Lcom/yf/gattlib/client/d;->a:[B

    .line 394
    aget-byte v3, p0, v0

    .line 395
    :goto_0
    if-ge v0, v5, :cond_0

    .line 396
    shr-int v4, v3, v0

    and-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_0
    const/4 v0, 0x4

    aget-byte v0, p0, v0

    iput-byte v0, v1, Lcom/yf/gattlib/client/d;->b:B

    .line 400
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    iput-byte v0, v1, Lcom/yf/gattlib/client/d;->e:B

    .line 401
    const/4 v0, 0x6

    aget-byte v0, p0, v0

    iput-byte v0, v1, Lcom/yf/gattlib/client/d;->w:B

    .line 402
    aget-byte v0, p0, v5

    iput-byte v0, v1, Lcom/yf/gattlib/client/d;->x:B

    .line 403
    const/16 v0, 0x8

    aget-byte v0, p0, v0

    iput-byte v0, v1, Lcom/yf/gattlib/client/d;->y:B

    .line 404
    const/16 v0, 0x9

    aget-byte v0, p0, v0

    iput-byte v0, v1, Lcom/yf/gattlib/client/d;->z:B

    .line 406
    const/16 v0, 0xa

    invoke-static {p0, v0, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, v1, Lcom/yf/gattlib/client/d;->f:[B

    .line 407
    const/16 v0, 0x26

    invoke-static {p0, v6, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, v1, Lcom/yf/gattlib/client/d;->g:[B

    .line 408
    const/16 v0, 0x27

    invoke-static {p0, v0, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/yf/gattlib/client/d;->l([B)V

    .line 410
    aget-byte v0, p0, v7

    invoke-static {v0}, Lcom/yf/gattlib/client/d;->a(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/yf/gattlib/client/d;->p:I

    .line 411
    const/16 v0, 0x2c

    aget-byte v0, p0, v0

    invoke-static {v0}, Lcom/yf/gattlib/client/d;->a(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/yf/gattlib/client/d;->q:I

    .line 412
    const/16 v0, 0x2d

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x2e

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iput v0, v1, Lcom/yf/gattlib/client/d;->r:I

    .line 413
    return-object v1
.end method

.method private l([B)V
    .locals 6

    .prologue
    const/16 v5, 0x17

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 704
    aget-byte v0, p1, v1

    if-ltz v0, :cond_0

    aget-byte v0, p1, v2

    if-ltz v0, :cond_0

    aget-byte v0, p1, v3

    if-ltz v0, :cond_0

    aget-byte v0, p1, v4

    if-ltz v0, :cond_0

    aget-byte v0, p1, v1

    if-gt v0, v5, :cond_0

    aget-byte v0, p1, v2

    const/16 v2, 0x3b

    if-gt v0, v2, :cond_0

    aget-byte v0, p1, v3

    if-gt v0, v5, :cond_0

    aget-byte v0, p1, v4

    const/16 v2, 0x3b

    if-le v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 706
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 707
    aput-byte v1, p1, v0

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 711
    :cond_1
    iput-object p1, p0, Lcom/yf/gattlib/client/d;->k:[B

    .line 712
    iget-object v0, p0, Lcom/yf/gattlib/client/d;->k:[B

    invoke-static {v0}, Lcom/yf/gattlib/client/d;->a([B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/gattlib/client/d;->n:Z

    .line 713
    iget-object v0, p0, Lcom/yf/gattlib/client/d;->k:[B

    invoke-static {v0, v1}, Lcom/yf/gattlib/client/d;->a([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/d;->l:Ljava/lang/String;

    .line 714
    iget-object v0, p0, Lcom/yf/gattlib/client/d;->k:[B

    invoke-static {v0, v3}, Lcom/yf/gattlib/client/d;->a([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/d;->m:Ljava/lang/String;

    .line 715
    return-void
.end method


# virtual methods
.method public varargs a(I[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/yf/gattlib/client/d;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/client/e;

    .line 729
    invoke-interface {v0, p1, p2}, Lcom/yf/gattlib/client/e;->a(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 731
    :cond_0
    return-void
.end method

.method public a(Lcom/yf/gattlib/client/e;)V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/yf/gattlib/client/d;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/yf/gattlib/client/d;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 459
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-byte v0, p0, Lcom/yf/gattlib/client/d;->A:B

    .line 460
    return-void

    .line 459
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z[B)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 659
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/yf/gattlib/client/d;->k:[B

    .line 660
    if-eqz p1, :cond_0

    .line 661
    iget-object v0, p0, Lcom/yf/gattlib/client/d;->k:[B

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 665
    :goto_0
    return-void

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/client/d;->k:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_0
.end method

.method public b()B
    .locals 1

    .prologue
    .line 432
    iget-byte v0, p0, Lcom/yf/gattlib/client/d;->w:B

    return v0
.end method

.method public b(B)V
    .locals 0

    .prologue
    .line 436
    iput-byte p1, p0, Lcom/yf/gattlib/client/d;->w:B

    .line 437
    return-void
.end method

.method public b(Lcom/yf/gattlib/client/e;)V
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/yf/gattlib/client/d;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 719
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 472
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-byte v0, p0, Lcom/yf/gattlib/client/d;->B:B

    .line 473
    return-void

    .line 472
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b([B)V
    .locals 1

    .prologue
    .line 600
    const/16 v0, 0xf

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/d;->f:[B

    .line 601
    return-void
.end method

.method public c()B
    .locals 1

    .prologue
    .line 447
    iget-byte v0, p0, Lcom/yf/gattlib/client/d;->x:B

    return v0
.end method

.method public c(B)V
    .locals 0

    .prologue
    .line 451
    iput-byte p1, p0, Lcom/yf/gattlib/client/d;->x:B

    .line 452
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 497
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-byte v0, p0, Lcom/yf/gattlib/client/d;->y:B

    .line 498
    return-void

    .line 497
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c([B)V
    .locals 1

    .prologue
    .line 605
    const/16 v0, 0xf

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/d;->g:[B

    .line 606
    return-void
.end method

.method public d(B)V
    .locals 0

    .prologue
    .line 476
    iput-byte p1, p0, Lcom/yf/gattlib/client/d;->B:B

    .line 477
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 559
    if-eqz p1, :cond_0

    .line 560
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/yf/gattlib/client/d;->c:B

    .line 564
    :goto_0
    return-void

    .line 562
    :cond_0
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/yf/gattlib/client/d;->c:B

    goto :goto_0
.end method

.method public d([B)V
    .locals 1

    .prologue
    .line 618
    const/16 v0, 0xf

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/d;->h:[B

    .line 619
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 455
    iget-byte v1, p0, Lcom/yf/gattlib/client/d;->A:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 463
    iget-byte v0, p0, Lcom/yf/gattlib/client/d;->B:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()B
    .locals 1

    .prologue
    .line 467
    iget-byte v0, p0, Lcom/yf/gattlib/client/d;->B:B

    return v0
.end method

.method public g()B
    .locals 1

    .prologue
    .line 480
    iget-byte v0, p0, Lcom/yf/gattlib/client/d;->C:B

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 488
    iget-byte v1, p0, Lcom/yf/gattlib/client/d;->y:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()[B
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/yf/gattlib/client/d;->a:[B

    return-object v0
.end method

.method public j()B
    .locals 1

    .prologue
    .line 535
    iget-byte v0, p0, Lcom/yf/gattlib/client/d;->b:B

    return v0
.end method

.method public k()B
    .locals 1

    .prologue
    .line 539
    iget-byte v0, p0, Lcom/yf/gattlib/client/d;->c:B

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 567
    iget-byte v0, p0, Lcom/yf/gattlib/client/d;->c:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()B
    .locals 1

    .prologue
    .line 591
    iget-byte v0, p0, Lcom/yf/gattlib/client/d;->e:B

    return v0
.end method

.method public n()[B
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/yf/gattlib/client/d;->f:[B

    return-object v0
.end method

.method public o()[B
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/yf/gattlib/client/d;->g:[B

    return-object v0
.end method

.method public p()[B
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/yf/gattlib/client/d;->h:[B

    return-object v0
.end method

.method public q()[B
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/yf/gattlib/client/d;->k:[B

    return-object v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Lcom/yf/gattlib/client/d;->i:I

    return v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lcom/yf/gattlib/client/d;->j:I

    return v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/yf/gattlib/client/d;->k:[B

    invoke-static {v0}, Lcom/yf/gattlib/client/d;->a([B)Z

    move-result v0

    return v0
.end method

.method public u()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 668
    iget-byte v1, p0, Lcom/yf/gattlib/client/d;->o:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Lcom/yf/gattlib/client/d;->p:I

    return v0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 676
    iget v0, p0, Lcom/yf/gattlib/client/d;->q:I

    return v0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Lcom/yf/gattlib/client/d;->r:I

    return v0
.end method

.method public y()V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/yf/gattlib/client/d;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/client/e;

    .line 723
    invoke-interface {v0}, Lcom/yf/gattlib/client/e;->a()V

    goto :goto_0

    .line 725
    :cond_0
    return-void
.end method
