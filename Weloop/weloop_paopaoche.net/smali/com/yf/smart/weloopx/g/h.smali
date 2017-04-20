.class public final Lcom/yf/smart/weloopx/g/h;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(DD)Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 12
    const-string v0, ""

    .line 13
    cmpl-double v0, p2, v4

    if-nez v0, :cond_0

    .line 14
    const-string v0, "\u2014"

    .line 24
    :goto_0
    return-object v0

    .line 17
    :cond_0
    sub-double v0, p0, p2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    div-double/2addr v0, p2

    .line 19
    cmpl-double v2, v0, v4

    if-lez v2, :cond_2

    .line 20
    const-wide v2, 0x408f380000000000L    # 999.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    const-string v0, "+999%"

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    double-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 22
    :cond_2
    const-wide v2, -0x3f70c80000000000L    # -999.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_3

    const-string v0, "-999%"

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(ILandroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const v5, 0x7f07018d

    const/4 v4, 0x7

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 43
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    if-nez p0, :cond_1

    .line 45
    const v0, 0x7f070132

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :cond_1
    const/4 v1, 0x1

    if-lt p0, v1, :cond_2

    if-gt p0, v2, :cond_2

    .line 47
    const v0, 0x7f0701b9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_2
    if-le p0, v2, :cond_3

    if-gt p0, v3, :cond_3

    .line 49
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_3
    if-le p0, v3, :cond_4

    if-gt p0, v4, :cond_4

    .line 51
    const v0, 0x7f070117

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_4
    if-le p0, v4, :cond_0

    .line 53
    const v0, 0x7f0700f4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(DD)Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2, p3}, Lcom/yf/smart/weloopx/g/h;->c(DD)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(DD)I
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 32
    const-string v0, ""

    .line 33
    cmpl-double v0, p2, v2

    if-eqz v0, :cond_0

    cmpl-double v0, p0, v2

    if-nez v0, :cond_1

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    .line 36
    :cond_1
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p0

    div-double/2addr v0, p2

    .line 37
    double-to-int v0, v0

    goto :goto_0
.end method
