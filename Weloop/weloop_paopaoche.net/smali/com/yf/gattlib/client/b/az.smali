.class public Lcom/yf/gattlib/client/b/az;
.super Lcom/yf/gattlib/client/b/aw;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/aw;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()[B
    .locals 4

    .prologue
    .line 15
    const-string v0, "H2DR"

    const/16 v1, 0x92

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    return-object v0
.end method

.method protected q()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 21
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 22
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 23
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yf/gattlib/n/a;->a:Ljava/nio/charset/Charset;

    invoke-static {v2, v0, v3}, Lcom/yf/gattlib/p/f;->a(Ljava/lang/String;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    .line 25
    sget-object v3, Lcom/yf/gattlib/n/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 26
    array-length v3, v2

    if-ge v3, v0, :cond_0

    .line 27
    array-length v0, v2

    .line 29
    :cond_0
    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    invoke-static {v1}, Lcom/yf/gattlib/p/n;->a([B)V

    .line 31
    return-object v1
.end method
