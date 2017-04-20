.class public final Lcom/yf/gattlib/p/f;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Ljava/lang/String;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v3

    .line 17
    :cond_0
    :goto_0
    add-int v1, v2, v0

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    .line 18
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 19
    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_3

    .line 20
    :cond_1
    array-length v0, v4

    if-le v0, p1, :cond_2

    .line 21
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 27
    :goto_1
    return-object v0

    .line 23
    :cond_2
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 26
    :cond_3
    array-length v5, v4

    if-ne v5, p1, :cond_4

    .line 27
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 28
    :cond_4
    array-length v5, v4

    if-le v5, p1, :cond_5

    move v0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_5
    array-length v4, v4

    if-ge v4, p1, :cond_0

    move v2, v1

    .line 31
    goto :goto_0
.end method

.method public static a([BII)Ljava/lang/String;
    .locals 5

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 154
    :goto_0
    if-ge p1, p2, :cond_0

    .line 155
    const-string v1, "%02x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-byte v4, p0, p1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BI)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 55
    array-length v1, p0

    div-int v3, v1, p1

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    move v2, v0

    .line 58
    :goto_0
    if-ge v0, v3, :cond_0

    .line 59
    add-int/2addr v1, p1

    .line 60
    invoke-static {p0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    .line 64
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_1

    .line 66
    array-length v0, p0

    .line 67
    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_1
    return-object v4
.end method

.method public static a(Ljava/lang/String;II)[B
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 161
    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v1, v0, 0x2

    .line 163
    div-int/lit8 v0, v1, 0x2

    new-array v2, v0, [B

    .line 164
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 165
    div-int/lit8 v3, v0, 0x2

    add-int v4, p1, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 164
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 168
    :cond_0
    return-object v2
.end method
