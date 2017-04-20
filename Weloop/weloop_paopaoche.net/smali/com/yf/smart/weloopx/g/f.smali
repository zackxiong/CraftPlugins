.class public final Lcom/yf/smart/weloopx/g/f;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(I)I
    .locals 2

    .prologue
    .line 40
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/f;->f(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {p0}, Lcom/yf/smart/weloopx/g/f;->f(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/g/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x5a0

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 23
    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {p0, v0}, Lcom/yf/smart/weloopx/g/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 29
    :try_start_0
    const-string v0, "yyyy-MM-dd"

    invoke-static {p0, v0}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 30
    const-string v1, "yyyy-MM-dd"

    invoke-static {p1, v1}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 31
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 32
    mul-int/lit8 v2, v2, 0xc

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 35
    :goto_0
    return v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 85
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 87
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f070079

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f070078

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/CalorieItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/f;->f(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    add-int/lit8 v1, p0, 0x1

    invoke-static {v1}, Lcom/yf/smart/weloopx/g/f;->g(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/yf/smart/weloopx/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static c(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/SleepItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/f;->f(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    add-int/lit8 v1, p0, 0x1

    invoke-static {v1}, Lcom/yf/smart/weloopx/g/f;->g(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/yf/smart/weloopx/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static d(I)Lcom/yf/smart/weloopx/data/models/CalorieStatistics;
    .locals 3

    .prologue
    .line 59
    invoke-static {p0}, Lcom/yf/smart/weloopx/g/f;->g(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {p0}, Lcom/yf/smart/weloopx/g/f;->f(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/yf/smart/weloopx/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/CalorieStatistics;

    move-result-object v0

    return-object v0
.end method

.method public static e(I)Lcom/yf/smart/weloopx/data/models/SleepStatistics;
    .locals 3

    .prologue
    .line 65
    invoke-static {p0}, Lcom/yf/smart/weloopx/g/f;->g(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {p0}, Lcom/yf/smart/weloopx/g/f;->f(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/yf/smart/weloopx/b/a;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/SleepStatistics;

    move-result-object v0

    return-object v0
.end method

.method public static f(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 71
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 72
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 73
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 74
    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 78
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 79
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 80
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 81
    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
