.class public final Lcom/yf/smart/weloopx/data/c;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/data/c$x;,
        Lcom/yf/smart/weloopx/data/c$f;,
        Lcom/yf/smart/weloopx/data/c$g;,
        Lcom/yf/smart/weloopx/data/c$u;,
        Lcom/yf/smart/weloopx/data/c$t;,
        Lcom/yf/smart/weloopx/data/c$w;,
        Lcom/yf/smart/weloopx/data/c$d;,
        Lcom/yf/smart/weloopx/data/c$j;,
        Lcom/yf/smart/weloopx/data/c$p;,
        Lcom/yf/smart/weloopx/data/c$l;,
        Lcom/yf/smart/weloopx/data/c$m;,
        Lcom/yf/smart/weloopx/data/c$s;,
        Lcom/yf/smart/weloopx/data/c$c;,
        Lcom/yf/smart/weloopx/data/c$r;,
        Lcom/yf/smart/weloopx/data/c$e;,
        Lcom/yf/smart/weloopx/data/c$v;,
        Lcom/yf/smart/weloopx/data/c$z;,
        Lcom/yf/smart/weloopx/data/c$o;,
        Lcom/yf/smart/weloopx/data/c$i;,
        Lcom/yf/smart/weloopx/data/c$aa;,
        Lcom/yf/smart/weloopx/data/c$h;,
        Lcom/yf/smart/weloopx/data/c$b;,
        Lcom/yf/smart/weloopx/data/c$k;,
        Lcom/yf/smart/weloopx/data/c$a;,
        Lcom/yf/smart/weloopx/data/c$y;,
        Lcom/yf/smart/weloopx/data/c$q;,
        Lcom/yf/smart/weloopx/data/c$n;
    }
.end annotation


# direct methods
.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 634
    const/4 v0, 0x0

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select DISTINCT tbl_name from sqlite_master where tbl_name = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 636
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DBKeys Have this table = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 638
    const/4 v0, 0x1

    .line 640
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 641
    return v0
.end method

.method static synthetic a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 11
    invoke-static {p0, p1, p2}, Lcom/yf/smart/weloopx/data/c;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 646
    const-string v1, "name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND sql LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    :try_start_0
    const-string v1, "sqlite_master"

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 650
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 654
    :goto_0
    if-eqz v1, :cond_0

    .line 655
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 658
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v8

    .line 650
    goto :goto_0

    .line 651
    :catch_0
    move-exception v0

    move-object v1, v9

    .line 652
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 654
    if-eqz v1, :cond_2

    .line 655
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 658
    goto :goto_1

    .line 654
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v9, :cond_3

    .line 655
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 654
    :catchall_1
    move-exception v0

    move-object v9, v1

    goto :goto_3

    .line 651
    :catch_1
    move-exception v0

    goto :goto_2
.end method
