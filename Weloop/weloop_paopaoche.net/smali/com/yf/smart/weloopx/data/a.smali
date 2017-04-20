.class public Lcom/yf/smart/weloopx/data/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/ContentResolver;

.field private c:Landroid/net/Uri;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "AlarmDBUtil"

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/a;->a:Ljava/lang/String;

    .line 21
    const-string v0, "content://com.yf.smart.weloopx.data.WeLoopProvider/AlarmTable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/a;->c:Landroid/net/Uri;

    .line 22
    const-string v0, "1001"

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/a;->d:Ljava/lang/String;

    .line 23
    const-string v0, "1002"

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/a;->e:Ljava/lang/String;

    .line 24
    const-string v0, "1003"

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/a;->f:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/a;->b:Landroid/content/ContentResolver;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/yf/gattlib/db/daliy/modes/AlarmModel;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 31
    new-instance v6, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-direct {v6}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;-><init>()V

    .line 34
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/a;->b:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/a;->c:Landroid/net/Uri;

    const-string v3, "ALARM_ID = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 35
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "ALARM_HOUR"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    const-string v2, "ALARM_ID"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 38
    const-string v3, "ALARM_MIN"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 39
    const-string v4, "ALARM_MSG"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 40
    const-string v5, "ALARM_STATE"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 41
    const-string v7, "ALARM_TIME"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 42
    const-string v8, "ALARM_REPEAT"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 43
    invoke-virtual {v6, v1}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->e(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v6, v2}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->c(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v6, v5}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->g(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v6, v7}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->d(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v6, v3}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->f(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v6, v4}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->b(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v6, v8}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 52
    return-object v6
.end method

.method public a()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/db/daliy/modes/AlarmModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 56
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/a;->b:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/a;->c:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 60
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-direct {v1}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;-><init>()V

    .line 62
    const-string v2, "ALARM_HOUR"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    const-string v3, "ALARM_ID"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 64
    const-string v4, "ALARM_MIN"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 65
    const-string v5, "ALARM_MSG"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 66
    const-string v7, "ALARM_STATE"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 67
    const-string v8, "ALARM_TIME"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 68
    const-string v9, "ALARM_REPEAT"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 70
    invoke-virtual {v1, v2}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->e(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1, v3}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->c(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1, v7}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->g(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1, v8}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->d(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, v4}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->f(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1, v5}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->b(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v9}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->a(Ljava/lang/String;)V

    .line 77
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 81
    return-object v6
.end method

.method public a(Lcom/yf/gattlib/db/daliy/modes/AlarmModel;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->c(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/data/a;->d(Lcom/yf/gattlib/db/daliy/modes/AlarmModel;)V

    .line 87
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 115
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/data/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 116
    if-le v0, v3, :cond_0

    .line 117
    iget-object v1, p0, Lcom/yf/smart/weloopx/data/a;->b:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/yf/smart/weloopx/data/a;->c:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 119
    :cond_0
    if-ne v0, v3, :cond_1

    .line 157
    :goto_0
    return-void

    .line 122
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 124
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 126
    :pswitch_1
    const-string v0, "ALARM_ID"

    iget-object v2, p0, Lcom/yf/smart/weloopx/data/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "ALARM_HOUR"

    const-string v2, "8"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "ALARM_MIN"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "ALARM_MSG"

    const-string v2, "\u95f9\u949f"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "ALARM_STATE"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "ALARM_TIME"

    const-string v2, "08:00"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "ALARM_REPEAT"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/a;->b:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/yf/smart/weloopx/data/a;->c:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 135
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 136
    const-string v0, "ALARM_ID"

    iget-object v2, p0, Lcom/yf/smart/weloopx/data/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "ALARM_HOUR"

    const-string v2, "14"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "ALARM_MIN"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "ALARM_MSG"

    const-string v2, "\u95f9\u949f"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "ALARM_STATE"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v0, "ALARM_TIME"

    const-string v2, "14:00"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "ALARM_REPEAT"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/a;->b:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/yf/smart/weloopx/data/a;->c:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 145
    :pswitch_2
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 146
    const-string v0, "ALARM_ID"

    iget-object v2, p0, Lcom/yf/smart/weloopx/data/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "ALARM_HOUR"

    const-string v2, "21"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "ALARM_MIN"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "ALARM_MSG"

    const-string v2, "\u95f9\u949f"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "ALARM_STATE"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "ALARM_TIME"

    const-string v2, "21:00"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "ALARM_REPEAT"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/a;->b:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/yf/smart/weloopx/data/a;->c:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public b(Lcom/yf/gattlib/db/daliy/modes/AlarmModel;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->c(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/data/a;->d(Lcom/yf/gattlib/db/daliy/modes/AlarmModel;)V

    .line 92
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/a;->b:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/a;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/data/a;->b()V

    .line 164
    return-void
.end method

.method public c(Lcom/yf/gattlib/db/daliy/modes/AlarmModel;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->c(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/data/a;->d(Lcom/yf/gattlib/db/daliy/modes/AlarmModel;)V

    .line 97
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/data/a;->g()V

    .line 169
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/data/a;->i()V

    .line 170
    return-void
.end method

.method public d(Lcom/yf/gattlib/db/daliy/modes/AlarmModel;)V
    .locals 7

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->c()Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 102
    const-string v2, "ALARM_HOUR"

    invoke-virtual {p1}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "ALARM_MIN"

    invoke-virtual {p1}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, "ALARM_MSG"

    invoke-virtual {p1}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v2, "ALARM_STATE"

    invoke-virtual {p1}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v2, "ALARM_TIME"

    invoke-virtual {p1}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v2, "ALARM_REPEAT"

    invoke-virtual {p1}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/yf/smart/weloopx/data/a;->b:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/yf/smart/weloopx/data/a;->c:Landroid/net/Uri;

    const-string v4, "ALARM_ID = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/data/a;->i()V

    .line 175
    return-void
.end method

.method public f()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/data/a;->a()Ljava/util/List;

    move-result-object v0

    .line 191
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    .line 197
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 198
    const-string v2, "ALARM_HOUR"

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v2, "ALARM_MIN"

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v2, "ALARM_MSG"

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v2, "ALARM_STATE"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v2, "ALARM_TIME"

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v2, "ALARM_REPEAT"

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/a;->b:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/yf/smart/weloopx/data/a;->c:Landroid/net/Uri;

    const-string v3, "ALARM_ID = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/yf/smart/weloopx/data/a;->d:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public g()V
    .locals 7

    .prologue
    .line 209
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 211
    const-string v1, "ALARM_HOUR"

    const-string v2, "14"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "ALARM_MIN"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v1, "ALARM_MSG"

    const-string v2, "\u95f9\u949f"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "ALARM_STATE"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v1, "ALARM_TIME"

    const-string v2, "14:00"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v1, "ALARM_REPEAT"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/yf/smart/weloopx/data/a;->b:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/yf/smart/weloopx/data/a;->c:Landroid/net/Uri;

    const-string v3, "ALARM_ID = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/yf/smart/weloopx/data/a;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method public h()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 221
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/data/a;->a()Ljava/util/List;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 234
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    .line 226
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 227
    const-string v2, "ALARM_HOUR"

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v2, "ALARM_MIN"

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v2, "ALARM_MSG"

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v2, "ALARM_STATE"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v2, "ALARM_TIME"

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v2, "ALARM_REPEAT"

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/a;->b:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/yf/smart/weloopx/data/a;->c:Landroid/net/Uri;

    const-string v3, "ALARM_ID = ? "

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/yf/smart/weloopx/data/a;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public i()V
    .locals 7

    .prologue
    .line 237
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 238
    const-string v1, "ALARM_HOUR"

    const-string v2, "21"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v1, "ALARM_MIN"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v1, "ALARM_MSG"

    const-string v2, "\u95f9\u949f"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, "ALARM_STATE"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "ALARM_TIME"

    const-string v2, "21:00"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "ALARM_REPEAT"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/yf/smart/weloopx/data/a;->b:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/yf/smart/weloopx/data/a;->c:Landroid/net/Uri;

    const-string v3, "ALARM_ID = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/yf/smart/weloopx/data/a;->f:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method public j()V
    .locals 7

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/data/a;->a()Ljava/util/List;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 261
    :goto_0
    return-void

    .line 252
    :cond_0
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    .line 253
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 254
    const-string v2, "ALARM_HOUR"

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v2, "ALARM_MIN"

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v2, "ALARM_MSG"

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v2, "ALARM_STATE"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v2, "ALARM_TIME"

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v2, "ALARM_REPEAT"

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/a;->b:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/yf/smart/weloopx/data/a;->c:Landroid/net/Uri;

    const-string v3, "ALARM_ID = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/yf/smart/weloopx/data/a;->f:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
