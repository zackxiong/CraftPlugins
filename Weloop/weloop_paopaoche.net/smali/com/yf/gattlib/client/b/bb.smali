.class public Lcom/yf/gattlib/client/b/bb;
.super Lcom/yf/gattlib/client/b/aw;
.source "ProGuard"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/aw;-><init>()V

    .line 14
    const-string v0, "SyncTimeTrancation"

    iput-object v0, p0, Lcom/yf/gattlib/client/b/bb;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs a([B[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/yf/gattlib/p/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 59
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yf/gattlib/client/b/aw;->a([B[Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/yf/gattlib/p/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "sync time"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 51
    :cond_0
    invoke-super {p0}, Lcom/yf/gattlib/client/b/aw;->b()V

    .line 52
    return-void
.end method

.method protected c()[B
    .locals 4

    .prologue
    .line 18
    const-string v0, "H2DR"

    const/16 v1, 0x90

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    return-object v0
.end method

.method protected q()[B
    .locals 11

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x1

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 24
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 26
    const/16 v1, 0xb

    new-array v1, v1, [B

    .line 28
    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 29
    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v6

    .line 30
    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v9

    .line 31
    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 32
    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 33
    const/4 v2, 0x3

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 34
    const/4 v2, 0x4

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 35
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    .line 36
    const/4 v2, 0x6

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 37
    invoke-virtual {v0, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v10

    .line 38
    const/16 v2, 0x8

    aput-byte v6, v1, v2

    .line 39
    const/16 v2, 0x9

    aput-byte v6, v1, v2

    .line 40
    invoke-static {v1}, Lcom/yf/gattlib/p/n;->a([B)V

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yf/gattlib/client/b/bb;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u540c\u6b65\u65f6\u95f4\uff0c getData time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yf/gattlib/client/b/bb;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u5c06\u8981\u540c\u6b65\u7684\u65e5\u671f  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u6708\u4efd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 43
    return-object v1
.end method
