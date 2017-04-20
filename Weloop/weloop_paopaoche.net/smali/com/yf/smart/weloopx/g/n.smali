.class public Lcom/yf/smart/weloopx/g/n;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(I)I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x7

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 22
    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {p0, v0}, Lcom/yf/smart/weloopx/g/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 28
    :try_start_0
    const-string v0, "yyyy-MM-dd"

    invoke-static {p0, v0}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 29
    const-string v1, "yyyy-MM-dd"

    invoke-static {p1, v1}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 32
    const/4 v2, 0x7

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 33
    const/4 v2, 0x7

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 35
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    .line 36
    const-wide/32 v2, 0x240c8400

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 39
    :goto_0
    return v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x7

    const/4 v8, 0x5

    const/4 v7, 0x2

    .line 86
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 88
    mul-int/lit8 v1, p1, 0x7

    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->add(II)V

    .line 90
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 91
    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 92
    add-int/lit8 v2, p1, 0x1

    mul-int/lit8 v2, v2, 0x7

    invoke-virtual {v1, v8, v2}, Ljava/util/Calendar;->add(II)V

    .line 94
    const v2, 0x7f070077

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 96
    const v4, 0x7f070076

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(I)Lcom/yf/smart/weloopx/data/models/CalorieStatistics;
    .locals 3

    .prologue
    .line 48
    invoke-static {p0}, Lcom/yf/smart/weloopx/g/n;->g(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {p0}, Lcom/yf/smart/weloopx/g/n;->f(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/yf/smart/weloopx/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/CalorieStatistics;

    move-result-object v0

    return-object v0
.end method

.method public static c(I)Lcom/yf/smart/weloopx/data/models/SleepStatistics;
    .locals 3

    .prologue
    .line 54
    invoke-static {p0}, Lcom/yf/smart/weloopx/g/n;->g(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {p0}, Lcom/yf/smart/weloopx/g/n;->f(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/yf/smart/weloopx/b/a;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/SleepStatistics;

    move-result-object v0

    return-object v0
.end method

.method public static d(I)Ljava/util/List;
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
    .line 60
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/n;->f(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    add-int/lit8 v1, p0, 0x1

    invoke-static {v1}, Lcom/yf/smart/weloopx/g/n;->g(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/yf/smart/weloopx/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static e(I)Ljava/util/List;
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
    .line 66
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/n;->f(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    add-int/lit8 v1, p0, 0x1

    invoke-static {v1}, Lcom/yf/smart/weloopx/g/n;->g(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/yf/smart/weloopx/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static f(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 73
    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 74
    const/4 v1, 0x5

    add-int/lit8 v2, p0, 0x1

    mul-int/lit8 v2, v2, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 75
    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 80
    const/4 v1, 0x7

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 81
    const/4 v1, 0x5

    mul-int/lit8 v2, p0, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 82
    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    .line 125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 126
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 127
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 128
    add-int/lit8 v2, p0, -0x1

    sub-int/2addr v0, v2

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    return-object v0
.end method
