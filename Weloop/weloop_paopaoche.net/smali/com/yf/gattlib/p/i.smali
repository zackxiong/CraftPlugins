.class public Lcom/yf/gattlib/p/i;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 34
    :cond_0
    const-string v0, "null"

    .line 36
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 43
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_0
.end method
