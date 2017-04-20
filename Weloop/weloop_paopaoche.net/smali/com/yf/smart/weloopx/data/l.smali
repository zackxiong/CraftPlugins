.class public Lcom/yf/smart/weloopx/data/l;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/ContentResolver;

.field private c:Landroid/net/Uri;

.field private d:Landroid/content/Context;

.field private e:Lcom/yf/smart/weloopx/g/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "StatisticalInfoDBUtil"

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/l;->a:Ljava/lang/String;

    .line 26
    const-string v0, "content://com.yf.smart.weloopx.data.WeLoopProvider/StatisticsTable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/l;->c:Landroid/net/Uri;

    .line 31
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/l;->d:Landroid/content/Context;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/l;->b:Landroid/content/ContentResolver;

    .line 33
    new-instance v0, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/l;->e:Lcom/yf/smart/weloopx/g/d;

    .line 34
    return-void
.end method

.method private a(Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getHAPPEN_DATE()Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 125
    const-string v2, "APP_VERSION"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getAPP_VERSION()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v2, "DEVICE_CONNCTED_TIMES"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getDEVICE_CONNCTED_TIMES()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v2, "DEVICE_DISCONNECTED_TIMES"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getDEVICE_DISCONNECTED_TIMES()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v2, "DEVICE_FIRME_VERSION"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getDEVICE_FIRME_VERSION()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "DEVICE_ID"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getDEVICE_ID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v2, "HAPPEN_DATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v2, "PHONE_MODEL"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getPHONE_MODEL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v2, "PHONE_NUM"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getPHONE_NUM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "PHONE_SYSTEM_VERSION"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getPHONE_SYSTEM_VERSION()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v2, "PUSH_MSG_NUM"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getPUSH_MSG_NUM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v2, "SYNC_DATA_NUM"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getSYNC_DATA_NUM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v2, "IS_SUBMIT"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/data/l;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/yf/smart/weloopx/data/l;->b:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/yf/smart/weloopx/data/l;->c:Landroid/net/Uri;

    const-string v4, "HAPPEN_DATE = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/l;->b:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/yf/smart/weloopx/data/l;->c:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 43
    new-instance v6, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;

    invoke-direct {v6}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;-><init>()V

    .line 44
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/l;->b:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/l;->c:Landroid/net/Uri;

    const-string v3, "HAPPEN_DATE = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 51
    const-string v5, ""

    const-string v4, ""

    const-string v3, ""

    const-string v2, ""

    const-string v1, ""

    const-string v0, ""

    .line 52
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 53
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 54
    const-string v0, "DEVICE_CONNCTED_TIMES"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 55
    const-string v0, "DEVICE_DISCONNECTED_TIMES"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    const-string v0, "PUSH_MSG_NUM"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 57
    const-string v0, "SYNC_DATA_NUM"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 58
    const-string v0, "HAPPEN_DATE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v0, "IS_SUBMIT"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_0
    const-string v5, "0"

    .line 64
    const-string v4, "0"

    .line 65
    const-string v3, "0"

    .line 66
    const-string v2, "0"

    .line 68
    const-string v0, "0"

    move-object v1, p1

    .line 71
    :cond_1
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setPHONE_MODEL(Ljava/lang/String;)V

    .line 72
    iget-object v8, p0, Lcom/yf/smart/weloopx/data/l;->e:Lcom/yf/smart/weloopx/g/d;

    iget-object v9, p0, Lcom/yf/smart/weloopx/data/l;->d:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/yf/smart/weloopx/g/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setPHONE_NUM(Ljava/lang/String;)V

    .line 73
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setPHONE_SYSTEM_VERSION(Ljava/lang/String;)V

    .line 74
    iget-object v8, p0, Lcom/yf/smart/weloopx/data/l;->e:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v8}, Lcom/yf/smart/weloopx/g/d;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setDEVICE_ID(Ljava/lang/String;)V

    .line 75
    iget-object v8, p0, Lcom/yf/smart/weloopx/data/l;->e:Lcom/yf/smart/weloopx/g/d;

    iget-object v9, p0, Lcom/yf/smart/weloopx/data/l;->d:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/yf/smart/weloopx/g/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setAPP_VERSION(Ljava/lang/String;)V

    .line 76
    iget-object v8, p0, Lcom/yf/smart/weloopx/data/l;->e:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v8}, Lcom/yf/smart/weloopx/g/d;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setDEVICE_FIRME_VERSION(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v6, v5}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setDEVICE_CONNCTED_TIMES(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v6, v4}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setDEVICE_DISCONNECTED_TIMES(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v6, v3}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setPUSH_MSG_NUM(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v6, v2}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setSYNC_DATA_NUM(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v6, v1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setHAPPEN_DATE(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v6, v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setIS_SUBMIT(Ljava/lang/String;)V

    .line 84
    if-eqz v7, :cond_2

    .line 85
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_2
    return-object v6
.end method

.method private g(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 92
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/l;->b:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/l;->c:Landroid/net/Uri;

    const-string v3, "HAPPEN_DATE = ? "

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 99
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v6

    .line 102
    :goto_0
    return v0

    :cond_0
    move v0, v7

    goto :goto_0
.end method


# virtual methods
.method public a(Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 236
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HAPPEN_DATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v0, " "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/yf/gattlib/p/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "IS_SUBMIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'0\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/l;->b:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/l;->c:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 247
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    const-string v1, "DEVICE_CONNCTED_TIMES"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    const-string v2, "DEVICE_DISCONNECTED_TIMES"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 250
    const-string v3, "PUSH_MSG_NUM"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 251
    const-string v4, "SYNC_DATA_NUM"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 252
    const-string v5, "HAPPEN_DATE"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 253
    const-string v7, "IS_SUBMIT"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 255
    new-instance v8, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;

    invoke-direct {v8}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;-><init>()V

    .line 256
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setPHONE_MODEL(Ljava/lang/String;)V

    .line 257
    iget-object v9, p0, Lcom/yf/smart/weloopx/data/l;->e:Lcom/yf/smart/weloopx/g/d;

    iget-object v10, p0, Lcom/yf/smart/weloopx/data/l;->d:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/yf/smart/weloopx/g/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setPHONE_NUM(Ljava/lang/String;)V

    .line 258
    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setPHONE_SYSTEM_VERSION(Ljava/lang/String;)V

    .line 259
    iget-object v9, p0, Lcom/yf/smart/weloopx/data/l;->e:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v9}, Lcom/yf/smart/weloopx/g/d;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setDEVICE_ID(Ljava/lang/String;)V

    .line 260
    iget-object v9, p0, Lcom/yf/smart/weloopx/data/l;->e:Lcom/yf/smart/weloopx/g/d;

    iget-object v10, p0, Lcom/yf/smart/weloopx/data/l;->d:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/yf/smart/weloopx/g/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setAPP_VERSION(Ljava/lang/String;)V

    .line 261
    iget-object v9, p0, Lcom/yf/smart/weloopx/data/l;->e:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v9}, Lcom/yf/smart/weloopx/g/d;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setDEVICE_FIRME_VERSION(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v8, v1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setDEVICE_CONNCTED_TIMES(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v8, v2}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setDEVICE_DISCONNECTED_TIMES(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v8, v3}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setPUSH_MSG_NUM(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v8, v4}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setSYNC_DATA_NUM(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v8, v5}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setHAPPEN_DATE(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v8, v7}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setIS_SUBMIT(Ljava/lang/String;)V

    .line 269
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 238
    :cond_0
    const-string v0, " !"

    goto/16 :goto_0

    .line 272
    :cond_1
    return-object v6
.end method

.method public a()V
    .locals 4

    .prologue
    .line 152
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->k()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/b;->m()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {}, Lcom/yf/gattlib/p/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yf/smart/weloopx/data/l;->f(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;

    move-result-object v2

    .line 157
    invoke-virtual {v2, v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setDEVICE_ID(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v2, v1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setDEVICE_FIRME_VERSION(Ljava/lang/String;)V

    .line 159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v3, p0, Lcom/yf/smart/weloopx/data/l;->e:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v3, v0}, Lcom/yf/smart/weloopx/g/d;->c(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/l;->e:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/g/d;->d(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getIS_SUBMIT()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/yf/smart/weloopx/data/l;->a(Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    iget-object v2, p0, Lcom/yf/smart/weloopx/data/l;->b:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/yf/smart/weloopx/data/l;->c:Landroid/net/Uri;

    const-string v4, "HAPPEN_DATE = ? "

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/data/l;->f(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getDEVICE_DISCONNECTED_TIMES()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setDEVICE_DISCONNECTED_TIMES(Ljava/lang/String;)V

    .line 183
    :goto_0
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getIS_SUBMIT()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yf/smart/weloopx/data/l;->a(Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;Ljava/lang/String;)V

    .line 184
    return-void

    .line 181
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setDEVICE_DISCONNECTED_TIMES(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/data/l;->f(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getDEVICE_CONNCTED_TIMES()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setDEVICE_CONNCTED_TIMES(Ljava/lang/String;)V

    .line 200
    :goto_0
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getIS_SUBMIT()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yf/smart/weloopx/data/l;->a(Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;Ljava/lang/String;)V

    .line 201
    return-void

    .line 198
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setDEVICE_CONNCTED_TIMES(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/data/l;->f(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getPUSH_MSG_NUM()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setPUSH_MSG_NUM(Ljava/lang/String;)V

    .line 213
    :goto_0
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getIS_SUBMIT()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yf/smart/weloopx/data/l;->a(Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;Ljava/lang/String;)V

    .line 214
    return-void

    .line 211
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setPUSH_MSG_NUM(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/data/l;->f(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getSYNC_DATA_NUM()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setSYNC_DATA_NUM(Ljava/lang/String;)V

    .line 226
    :goto_0
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getIS_SUBMIT()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yf/smart/weloopx/data/l;->a(Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;Ljava/lang/String;)V

    .line 227
    return-void

    .line 224
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->setSYNC_DATA_NUM(Ljava/lang/String;)V

    goto :goto_0
.end method
