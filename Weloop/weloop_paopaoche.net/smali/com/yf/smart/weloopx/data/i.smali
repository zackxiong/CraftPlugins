.class public Lcom/yf/smart/weloopx/data/i;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/net/Uri;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "RemindersDBUtil"

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/i;->a:Ljava/lang/String;

    .line 19
    const-string v0, "content://com.yf.smart.weloopx.data.WeLoopProvider/RemindersTable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/i;->b:Landroid/net/Uri;

    .line 23
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/i;->c:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/RemindersModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 27
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/i;->b:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    new-instance v1, Lcom/yf/smart/weloopx/data/models/RemindersModel;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;-><init>()V

    .line 31
    const-string v2, "REMINDER_ID"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 32
    const-string v3, "REMINDER_YEAR"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 33
    const-string v4, "REMINDER_MONTH"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 34
    const-string v5, "REMINDER_DAY"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 35
    const-string v7, "REMINDER_HOUR"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 36
    const-string v8, "REMINDER_MIN"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 37
    const-string v9, "REMINDER_MSG"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 38
    const-string v10, "REMINDER_TIME"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 39
    const-string v11, "REMINDER_DATE_TIME"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 43
    invoke-virtual {v1, v9}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setMsg(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, v3}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setYear(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, v4}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setMonth(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1, v5}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setDay(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v7}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setHour(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, v8}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setMin(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, v10}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setTime(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setId(I)V

    .line 51
    invoke-virtual {v1, v11}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setDateAndTime(Ljava/lang/String;)V

    .line 53
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 56
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 57
    return-object v6
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/i;->b:Landroid/net/Uri;

    const-string v2, "REMINDER_MSG = ? AND REMINDER_DATE_TIME = ? "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemindersDBUtil delReminder\u5220\u9664\u4e8b\u9879\u7684\u7ed3\u679c = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dateAndTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public a(Lcom/yf/smart/weloopx/data/models/RemindersModel;)Z
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 71
    const-string v1, "REMINDER_YEAR"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getYear()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "REMINDER_MONTH"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getMonth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "REMINDER_DAY"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "REMINDER_HOUR"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getHour()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "REMINDER_MIN"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getMin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "REMINDER_MSG"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "REMINDER_TIME"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "REMINDER_DATE_TIME"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getDateAndTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/yf/smart/weloopx/data/i;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/data/i;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 163
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/i;->b:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "REMINDER_TIME"

    aput-object v3, v2, v7

    const-string v3, "REMINDER_MSG=?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v7

    const-string v5, "REMINDER_TIME limit 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 168
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 169
    if-lez v1, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    move v0, v7

    goto :goto_0
.end method

.method public b()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/i;->b:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "count(*) AS count"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 64
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 65
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 66
    return v1
.end method

.method public b(Lcom/yf/smart/weloopx/data/models/RemindersModel;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 85
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 86
    const-string v4, "REMINDER_YEAR"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getYear()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v4, "REMINDER_MONTH"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getMonth()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v4, "REMINDER_DAY"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getDay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v4, "REMINDER_HOUR"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getHour()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v4, "REMINDER_MIN"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getMin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v4, "REMINDER_MSG"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v4, "REMINDER_TIME"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v4, "REMINDER_DATE_TIME"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getDateAndTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v4, p0, Lcom/yf/smart/weloopx/data/i;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/yf/smart/weloopx/data/i;->b:Landroid/net/Uri;

    const-string v6, "REMINDER_ID=?"

    new-array v7, v0, [Ljava/lang/String;

    aput-object v2, v7, v1

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 96
    if-lez v2, :cond_0

    .line 98
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 173
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/i;->b:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "REMINDER_TIME"

    aput-object v3, v2, v7

    const-string v3, "REMINDER_MSG=? and REMINDER_DATE_TIME=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v7

    aput-object p2, v4, v6

    const-string v5, "REMINDER_TIME limit 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 179
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 180
    if-lez v1, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    move v0, v7

    goto :goto_0
.end method

.method public c()Lcom/yf/smart/weloopx/data/models/RemindersModel;
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 122
    new-instance v6, Lcom/yf/smart/weloopx/data/models/RemindersModel;

    invoke-direct {v6}, Lcom/yf/smart/weloopx/data/models/RemindersModel;-><init>()V

    .line 123
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/i;->b:Landroid/net/Uri;

    const-string v5, "REMINDER_DATE_TIME"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 125
    if-nez v0, :cond_0

    move-object v0, v6

    .line 159
    :goto_0
    return-object v0

    .line 129
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 130
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 131
    goto :goto_0

    .line 134
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    const-string v1, "REMINDER_YEAR"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    const-string v2, "REMINDER_MONTH"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    const-string v3, "REMINDER_DAY"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 138
    const-string v4, "REMINDER_HOUR"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 139
    const-string v5, "REMINDER_MIN"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 140
    const-string v7, "REMINDER_MSG"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 141
    const-string v8, "REMINDER_TIME"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 142
    const-string v9, "REMINDER_DATE_TIME"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 144
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RemindersDBUtil \u6570\u636e\u5e93\u4e2d\u7684\u67e5\u8be2\u5230\u6700\u8fd1\u7684\u65e5\u671f\u548c\u65f6\u95f4 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v6, v7}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setMsg(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v6, v1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setYear(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v6, v2}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setMonth(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v6, v3}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setDay(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v6, v4}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setHour(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v6, v5}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setMin(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v6, v8}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setTime(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v6, v9}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setDateAndTime(Ljava/lang/String;)V

    .line 157
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 159
    goto/16 :goto_0
.end method

.method public c(Lcom/yf/smart/weloopx/data/models/RemindersModel;)V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getDateAndTime()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/data/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method
