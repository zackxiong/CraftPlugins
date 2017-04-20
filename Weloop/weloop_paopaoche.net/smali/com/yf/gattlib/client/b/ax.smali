.class public Lcom/yf/gattlib/client/b/ax;
.super Lcom/yf/gattlib/client/b/aw;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/aw;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 19
    const-string v0, "charxx"

    const-string v1, "start music sync"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-super {p0}, Lcom/yf/gattlib/client/b/aw;->b()V

    .line 21
    const-string v0, "charxx"

    const-string v1, "start music sync end"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method protected c()[B
    .locals 4

    .prologue
    .line 26
    const-string v0, "H2DR"

    const/16 v1, 0x93

    const/16 v2, 0x3c

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    return-object v0
.end method

.method protected q()[B
    .locals 8

    .prologue
    const/16 v7, 0xe

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 33
    const/16 v0, 0x3c

    new-array v2, v0, [B

    .line 34
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->h()Lcom/yf/gattlib/h/h;

    move-result-object v3

    .line 36
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3}, Lcom/yf/gattlib/h/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, v2, v4
    :try_end_0
    .catch Lcom/yf/gattlib/e/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_1
    invoke-virtual {v3}, Lcom/yf/gattlib/h/h;->a()Lcom/yf/gattlib/h/g;

    move-result-object v0

    .line 43
    iget-object v3, v0, Lcom/yf/gattlib/h/g;->c:Ljava/lang/String;

    const/16 v4, 0x1c

    sget-object v5, Lcom/yf/gattlib/n/a;->a:Ljava/nio/charset/Charset;

    invoke-static {v3, v4, v5}, Lcom/yf/gattlib/p/f;->a(Ljava/lang/String;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    .line 44
    sget-object v4, Lcom/yf/gattlib/n/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 45
    array-length v4, v3

    invoke-static {v3, v6, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    const/16 v1, 0x1d

    aput-byte v6, v2, v1

    .line 48
    iget-object v1, v0, Lcom/yf/gattlib/h/g;->a:Ljava/lang/String;

    sget-object v3, Lcom/yf/gattlib/n/a;->a:Ljava/nio/charset/Charset;

    invoke-static {v1, v7, v3}, Lcom/yf/gattlib/p/f;->a(Ljava/lang/String;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 49
    sget-object v3, Lcom/yf/gattlib/n/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 50
    const/16 v3, 0x1e

    array-length v4, v1

    invoke-static {v1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    const/16 v1, 0x2c

    aput-byte v6, v2, v1

    .line 53
    iget-object v0, v0, Lcom/yf/gattlib/h/g;->b:Ljava/lang/String;

    sget-object v1, Lcom/yf/gattlib/n/a;->a:Ljava/nio/charset/Charset;

    invoke-static {v0, v7, v1}, Lcom/yf/gattlib/p/f;->a(Ljava/lang/String;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/yf/gattlib/n/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 55
    const/16 v1, 0x2d

    array-length v3, v0

    invoke-static {v0, v6, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    invoke-static {v2}, Lcom/yf/gattlib/p/n;->a([B)V

    .line 59
    return-object v2

    .line 36
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    aput-byte v1, v2, v6

    .line 39
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
