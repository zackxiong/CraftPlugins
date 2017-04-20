.class public final Lcom/yf/gattlib/client/j;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:[I

.field private static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 86
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yf/gattlib/client/j;->a:[I

    .line 87
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/yf/gattlib/client/j;->b:[I

    return-void

    .line 86
    nop

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    .line 87
    :array_1
    .array-data 4
        0x1f
        0x1d
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method public static a([B)I
    .locals 2

    .prologue
    .line 16
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 17
    :cond_0
    const/4 v0, -0x1

    .line 19
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x4

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public static a([BIS)S
    .locals 4

    .prologue
    const v3, 0xffff

    .line 58
    and-int v1, v3, p2

    .line 59
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 61
    const v2, 0xff00

    and-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    .line 62
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    .line 63
    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v2, v2, 0x4

    xor-int/2addr v1, v2

    .line 64
    shl-int/lit8 v2, v1, 0x8

    shl-int/lit8 v2, v2, 0x4

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    .line 65
    and-int/lit16 v2, v1, 0xff

    shl-int/lit8 v2, v2, 0x4

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr v1, v2

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    and-int v0, v3, v1

    int-to-short v0, v0

    return v0
.end method

.method public static a([BI)V
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x4

    int-to-byte v1, p1

    aput-byte v1, p0, v0

    .line 35
    return-void
.end method

.method public static a([BLjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    sget-object v0, Lcom/yf/gattlib/n/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 39
    const/4 v1, 0x4

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    return-void
.end method

.method public static a(Ljava/lang/String;III)[B
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 25
    invoke-static {v0, p0}, Lcom/yf/gattlib/client/j;->a([BLjava/lang/String;)V

    .line 26
    invoke-static {v0, p1}, Lcom/yf/gattlib/client/j;->a([BI)V

    .line 27
    invoke-static {v0, p2}, Lcom/yf/gattlib/client/j;->b([BI)V

    .line 28
    invoke-static {v0, p3}, Lcom/yf/gattlib/client/j;->c([BI)V

    .line 29
    invoke-static {v0}, Lcom/yf/gattlib/p/n;->a([B)V

    .line 30
    return-object v0
.end method

.method public static b([B)B
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public static b([BI)V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x5

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 44
    return-void
.end method

.method public static c([B)B
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x6

    aget-byte v0, p0, v0

    return v0
.end method

.method public static c([BI)V
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x6

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 51
    return-void
.end method

.method public static d([B)I
    .locals 2

    .prologue
    .line 155
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 156
    :cond_0
    const/4 v0, -0x1

    .line 158
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    aget-byte v0, p0, v0

    goto :goto_0
.end method
