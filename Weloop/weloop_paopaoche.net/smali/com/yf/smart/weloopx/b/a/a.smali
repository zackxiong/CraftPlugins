.class public Lcom/yf/smart/weloopx/b/a/a;
.super Lcom/yf/smart/weloopx/b/a;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private b:I

.field private c:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/a;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/b/a/a;->a:Landroid/content/ContentResolver;

    .line 71
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 171
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 260
    :goto_0
    return-object v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/a;->a:Landroid/content/ContentResolver;

    .line 176
    const-string v1, "content://com.yf.smart.weloopx.data.WeLoopProvider/activity"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 180
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "happen_date=? and account=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const-string v5, "start_time desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 183
    if-nez v1, :cond_2

    .line 256
    if-eqz v1, :cond_1

    .line 257
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    goto :goto_0

    .line 187
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    new-instance v0, Lcom/yf/smart/weloopx/data/models/Activity;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/models/Activity;-><init>()V

    .line 189
    const-string v2, "calorie"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 190
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yf/smart/weloopx/data/models/Activity;->setCalorie(D)V

    .line 193
    const-string v2, "distance"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 194
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yf/smart/weloopx/data/models/Activity;->setDistance(D)V

    .line 196
    const-string v2, "step_count"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 197
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/Activity;->setStepCount(I)V

    .line 199
    const-string v2, "type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 200
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/Activity;->setType(I)V

    .line 203
    const-string v2, "sub_type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 204
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/Activity;->setSubType(I)V

    .line 207
    const-string v2, "start_time"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 208
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/Activity;->setStartTime(Ljava/lang/String;)V

    .line 211
    const-string v2, "end_time"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 212
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/Activity;->setEndTime(Ljava/lang/String;)V

    .line 214
    const-string v2, "activity_time"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 215
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/Activity;->setActiveSeconds(I)V

    .line 217
    const-string v2, "deep_sleep_time"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 218
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/Activity;->setDeepSleepMinutes(I)V

    .line 220
    const-string v2, "shallow_sleep_time"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 221
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/Activity;->setShallowSleepMinutes(I)V

    .line 223
    const-string v2, "wake_time"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 224
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/Activity;->setWakeMinutes(I)V

    .line 226
    const-string v2, "happen_date"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 227
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/Activity;->setHappenDate(Ljava/lang/String;)V

    .line 229
    const-string v2, "non_activity_time"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 230
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/Activity;->setNonActiveSeconds(I)V

    .line 232
    const-string v2, "speed"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 233
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yf/smart/weloopx/data/models/Activity;->setSpeed(D)V

    .line 236
    const-string v2, "sleep_score"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 237
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yf/smart/weloopx/data/models/Activity;->setSleepScore(D)V

    .line 239
    const-string v2, "wake_count"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 240
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/Activity;->setWakeCount(I)V

    .line 242
    const-string v2, "bong_value"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 243
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/Activity;->setBongValue(Ljava/lang/String;)V

    .line 245
    const-string v2, "JZ_RATIO"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 246
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/Activity;->setJzRatio(Ljava/lang/String;)V

    .line 248
    const-string v2, "HD_RATIO"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 249
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/Activity;->setHdRatio(Ljava/lang/String;)V

    .line 251
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    .line 253
    :catch_0
    move-exception v0

    .line 254
    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 256
    if-eqz v1, :cond_3

    .line 257
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_3
    move-object v0, v6

    .line 260
    goto/16 :goto_0

    .line 256
    :cond_4
    if-eqz v1, :cond_3

    .line 257
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 256
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_4
    if-eqz v1, :cond_5

    .line 257
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 256
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 253
    :catch_1
    move-exception v0

    move-object v1, v7

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/SleepItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 513
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 567
    :goto_0
    return-object v0

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/a;->a:Landroid/content/ContentResolver;

    .line 518
    const-string v1, "content://com.yf.smart.weloopx.data.WeLoopProvider/sleep_item"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 519
    const/4 v7, 0x0

    .line 521
    const/4 v2, 0x6

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "happen_date"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "sleep_score"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "deep_sleep_time"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "shallow_sleep_time"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "sleep_goal"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "wake_time"

    aput-object v4, v2, v3

    const-string v3, "datetime(happen_date) between datetime(?) and datetime(?) and account=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const-string v5, "happen_date asc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 534
    if-nez v1, :cond_2

    .line 562
    if-eqz v1, :cond_1

    .line 563
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    goto :goto_0

    .line 538
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 539
    new-instance v0, Lcom/yf/smart/weloopx/data/models/SleepItem;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/models/SleepItem;-><init>()V

    .line 540
    const-string v2, "happen_date"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 541
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/SleepItem;->setHappenDate(Ljava/lang/String;)V

    .line 543
    const-string v2, "sleep_score"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 544
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yf/smart/weloopx/data/models/SleepItem;->setScore(D)V

    .line 546
    const-string v2, "deep_sleep_time"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 547
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/SleepItem;->setDeepSleepMinutes(I)V

    .line 549
    const-string v2, "shallow_sleep_time"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 550
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/SleepItem;->setShallowSleepMinutes(I)V

    .line 552
    const-string v2, "sleep_goal"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 553
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/SleepItem;->setSleepGoalMinutes(I)V

    .line 555
    const-string v2, "wake_time"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 556
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/SleepItem;->setWakeMinutes(I)V

    .line 557
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 559
    :catch_0
    move-exception v0

    .line 560
    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 562
    if-eqz v1, :cond_3

    .line 563
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_3
    move-object v0, v6

    .line 567
    goto/16 :goto_0

    .line 562
    :cond_4
    if-eqz v1, :cond_3

    .line 563
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 562
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_4
    if-eqz v1, :cond_5

    .line 563
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 562
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 559
    :catch_1
    move-exception v0

    move-object v1, v7

    goto :goto_2
.end method

.method public a(D)V
    .locals 1

    .prologue
    .line 798
    iput-wide p1, p0, Lcom/yf/smart/weloopx/b/a/a;->c:D

    .line 799
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 793
    iput p1, p0, Lcom/yf/smart/weloopx/b/a/a;->b:I

    .line 794
    return-void
.end method

.method public a(ILcom/yf/smart/weloopx/b/b/n;)V
    .locals 5

    .prologue
    .line 829
    new-instance v0, Lcom/b/a/b;

    invoke-direct {v0}, Lcom/b/a/b;-><init>()V

    .line 830
    new-instance v1, Lcom/b/a/d/d;

    invoke-direct {v1}, Lcom/b/a/d/d;-><init>()V

    .line 831
    const-string v2, "accessToken"

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v2, "weekFlag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v2, "pageNum"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v2, "pageSize"

    const-string v3, "100"

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-virtual {p2, p1}, Lcom/yf/smart/weloopx/b/b/n;->a(I)V

    .line 836
    const-string v2, "BongActivityController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accessToken="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", weekFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pageNum=1, pageSize=100"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/f/m;->g()Ljava/lang/String;

    move-result-object v2

    .line 841
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download ranking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 842
    sget-object v3, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-virtual {v0, v3, v2, v1, p2}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 844
    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/RankingUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 906
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 930
    :cond_0
    return-void

    .line 909
    :cond_1
    iget-object v2, p0, Lcom/yf/smart/weloopx/b/a/a;->a:Landroid/content/ContentResolver;

    .line 910
    const-string v1, "content://com.yf.smart.weloopx.data.WeLoopProvider/ranking"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 912
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v4

    .line 913
    const-string v1, "account=? and type=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v0

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v1, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 917
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/RankingUser;

    .line 918
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 919
    const-string v7, "account"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    const-string v7, "_index"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 921
    const-string v7, "user_id"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/RankingUser;->getUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 922
    const-string v7, "active_point"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/RankingUser;->getActivePoint()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 923
    const-string v7, "calorie"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/RankingUser;->getCalorie()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 924
    const-string v7, "head_pic_url"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/RankingUser;->getHeadPicUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v7, "nick_name"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/RankingUser;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string v0, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 927
    invoke-virtual {v2, v3, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 928
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 929
    goto :goto_0
.end method

.method public a(Lcom/yf/smart/weloopx/data/models/BongDownloadParams;Lcom/yf/smart/weloopx/b/b/l;)V
    .locals 5

    .prologue
    .line 110
    new-instance v0, Lcom/b/a/b;

    invoke-direct {v0}, Lcom/b/a/b;-><init>()V

    .line 111
    new-instance v1, Lcom/b/a/d/d;

    invoke-direct {v1}, Lcom/b/a/d/d;-><init>()V

    .line 112
    const-string v2, "accessToken"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "mac"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v2, "happenDate"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->getHappenDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v2, "indexcount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->getAdditionalDays()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v2, "version"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download multiple bong "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->getHappenDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 120
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 122
    return-void
.end method

.method public a(Lcom/yf/smart/weloopx/data/models/BongUploadParams;Lcom/yf/smart/weloopx/b/b/b;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 75
    new-instance v0, Lcom/b/a/b;

    invoke-direct {v0}, Lcom/b/a/b;-><init>()V

    .line 76
    new-instance v1, Lcom/b/a/d/d;

    invoke-direct {v1}, Lcom/b/a/d/d;-><init>()V

    .line 77
    const-string v2, "accessToken"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v2, "deviceId"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "mac"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->getDeviceData()[B

    move-result-object v2

    invoke-static {v2}, Lcom/yf/smart/weloopx/g/c;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 81
    const-string v3, "devicedata"

    invoke-virtual {v1, v3, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v3, "timeZone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->getTimeZone()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v3, "version"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v3, "runinfo"

    iget-object v4, p1, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->runinfo:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v3

    sget-object v4, Lcom/yf/smart/weloopx/d/c;->e:Lcom/yf/smart/weloopx/d/c;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v6, v5}, Lcom/yf/smart/weloopx/d/a;->a(Lcom/yf/smart/weloopx/d/c;I[Ljava/lang/Object;)Z

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upload original len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 90
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 92
    return-void
.end method

.method public a(Lcom/yf/smart/weloopx/data/models/DailyGain;)V
    .locals 6

    .prologue
    .line 265
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/DailyGain;->getHappenDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    :cond_0
    const-string v0, "BongActivityController"

    const-string v1, "Empty dailyGain"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/a;->a:Landroid/content/ContentResolver;

    .line 271
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/DailyGain;->getHappenDate()Ljava/lang/String;

    move-result-object v1

    .line 272
    const-string v2, "content://com.yf.smart.weloopx.data.WeLoopProvider/daily_gain"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 273
    const-string v3, "happen_date=? and account=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 276
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 277
    const-string v3, "account"

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v3, "calorie"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/DailyGain;->getCalorie()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 279
    const-string v3, "distance"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/DailyGain;->getDistance()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 280
    const-string v3, "step_count"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/DailyGain;->getStepCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    const-string v3, "still_time"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/DailyGain;->getStillSeconds()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    const-string v3, "deep_sleep_time"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/DailyGain;->getDeepSleepMinutes()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    const-string v3, "sleep_time"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/DailyGain;->getSleepMinutes()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    const-string v3, "sleep_count"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/DailyGain;->getSleepCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    const-string v3, "calorie_goal"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/DailyGain;->getCalorieGoal()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 286
    const-string v3, "active_point"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/DailyGain;->getActivePoint()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    const-string v3, "happen_date"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/DailyGain;->getHappenDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;ILcom/yf/smart/weloopx/b/b/c;)V
    .locals 5

    .prologue
    .line 803
    new-instance v0, Lcom/b/a/b;

    invoke-direct {v0}, Lcom/b/a/b;-><init>()V

    .line 804
    new-instance v1, Lcom/b/a/d/d;

    invoke-direct {v1}, Lcom/b/a/d/d;-><init>()V

    .line 805
    const-string v2, "accessToken"

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-string v2, "startdate"

    invoke-virtual {v1, v2, p1}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string v2, "indexcount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download calories statistics "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 810
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1, p3}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 812
    return-void
.end method

.method public a(Ljava/lang/String;ILcom/yf/smart/weloopx/b/b/s;)V
    .locals 5

    .prologue
    .line 816
    new-instance v0, Lcom/b/a/b;

    invoke-direct {v0}, Lcom/b/a/b;-><init>()V

    .line 817
    new-instance v1, Lcom/b/a/d/d;

    invoke-direct {v1}, Lcom/b/a/d/d;-><init>()V

    .line 818
    const-string v2, "accessToken"

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string v2, "startdate"

    invoke-virtual {v1, v2, p1}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v2, "indexcount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download sleep statistics "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 823
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1, p3}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 825
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/yf/smart/weloopx/b/b/i;)V
    .locals 5

    .prologue
    .line 934
    new-instance v0, Lcom/b/a/b;

    invoke-direct {v0}, Lcom/b/a/b;-><init>()V

    .line 935
    new-instance v1, Lcom/b/a/d/d;

    invoke-direct {v1}, Lcom/b/a/d/d;-><init>()V

    .line 936
    const-string v2, "accessToken"

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const-string v2, "cityName"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v2, "BongActivityController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accessToken="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cityName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/f/m;->K()Ljava/lang/String;

    move-result-object v2

    .line 944
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download weather "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 945
    sget-object v3, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-virtual {v0, v3, v2, v1, p2}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 947
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 126
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 167
    :cond_0
    return-void

    .line 130
    :cond_1
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/yf/smart/weloopx/b/a/a;->a:Landroid/content/ContentResolver;

    .line 132
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/Activity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getHappenDate()Ljava/lang/String;

    move-result-object v0

    .line 133
    const-string v3, "content://com.yf.smart.weloopx.data.WeLoopProvider/activity"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 134
    const-string v4, "happen_date=? and account=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/Activity;

    .line 138
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 139
    const-string v6, "account"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v6, "calorie"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getCalorie()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 141
    const-string v6, "distance"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getDistance()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 142
    const-string v6, "step_count"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getStepCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    const-string v6, "type"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    const-string v6, "sub_type"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getSubType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    const-string v6, "start_time"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getStartTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v6, "end_time"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getEndTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v6, "activity_time"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getActiveSeconds()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    const-string v6, "deep_sleep_time"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getDeepSleepMinutes()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    const-string v6, "shallow_sleep_time"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getShallowSleepMinutes()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string v6, "wake_time"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getWakeMinutes()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    const-string v6, "happen_date"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getHappenDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v6, "non_activity_time"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getNonActiveSeconds()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v6, "speed"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getSpeedKph()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 155
    const-string v6, "wake_count"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getWakeCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    const-string v6, "sleep_score"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getSleepScore()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 157
    const-string v6, "bong_value"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getBongValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v6, "JZ_RATIO"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getJzRatio()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v6, "HD_RATIO"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getHdRatio()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getSubType()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_2

    .line 162
    const-string v6, "calorie"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getAllmileage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 163
    const-string v6, "distance"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getDistance()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 165
    :cond_2
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 356
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/c;->e()I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/DailyGain;
    .locals 9

    .prologue
    const/4 v1, -0x1

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/4 v7, 0x0

    .line 293
    new-instance v6, Lcom/yf/smart/weloopx/data/models/DailyGain;

    invoke-direct {v6}, Lcom/yf/smart/weloopx/data/models/DailyGain;-><init>()V

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v6, v1}, Lcom/yf/smart/weloopx/data/models/DailyGain;->setStepCount(I)V

    .line 296
    invoke-virtual {v6, v2, v3}, Lcom/yf/smart/weloopx/data/models/DailyGain;->setCalorie(D)V

    .line 297
    invoke-virtual {v6, v2, v3}, Lcom/yf/smart/weloopx/data/models/DailyGain;->setDistance(D)V

    .line 298
    invoke-virtual {v6, v1}, Lcom/yf/smart/weloopx/data/models/DailyGain;->setSleepCount(I)V

    move-object v0, v6

    .line 351
    :goto_0
    return-object v0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/a;->a:Landroid/content/ContentResolver;

    .line 303
    const-string v1, "content://com.yf.smart.weloopx.data.WeLoopProvider/daily_gain"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 306
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "happen_date=? and account=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 310
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 347
    :cond_1
    if-eqz v1, :cond_2

    .line 348
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    goto :goto_0

    .line 314
    :cond_3
    :try_start_2
    const-string v0, "calorie"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 315
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/yf/smart/weloopx/data/models/DailyGain;->setCalorie(D)V

    .line 318
    const-string v0, "sleep_count"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 319
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/yf/smart/weloopx/data/models/DailyGain;->setSleepCount(I)V

    .line 321
    const-string v0, "step_count"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 322
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/yf/smart/weloopx/data/models/DailyGain;->setStepCount(I)V

    .line 324
    const-string v0, "happen_date"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 325
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yf/smart/weloopx/data/models/DailyGain;->setHappenDate(Ljava/lang/String;)V

    .line 327
    const-string v0, "deep_sleep_time"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 328
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/yf/smart/weloopx/data/models/DailyGain;->setDeepSleepMinutes(I)V

    .line 330
    const-string v0, "distance"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 331
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/yf/smart/weloopx/data/models/DailyGain;->setDistance(D)V

    .line 333
    const-string v0, "still_time"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 334
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/yf/smart/weloopx/data/models/DailyGain;->setStillSeconds(I)V

    .line 336
    const-string v0, "sleep_time"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 337
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/yf/smart/weloopx/data/models/DailyGain;->setSleepMinutes(I)V

    .line 339
    const-string v0, "active_point"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 340
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/yf/smart/weloopx/data/models/DailyGain;->setActivePoint(I)V

    .line 342
    const-string v0, "calorie_goal"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 343
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/yf/smart/weloopx/data/models/DailyGain;->setCalorieGoal(D)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 347
    if-eqz v1, :cond_4

    .line 348
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move-object v0, v6

    .line 351
    goto/16 :goto_0

    .line 344
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 345
    :goto_2
    :try_start_3
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 347
    if-eqz v1, :cond_4

    .line 348
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 347
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_5

    .line 348
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 347
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 344
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public b(I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/RankingUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 848
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 850
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 901
    :goto_0
    return-object v0

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/a;->a:Landroid/content/ContentResolver;

    .line 855
    const-string v1, "content://com.yf.smart.weloopx.data.WeLoopProvider/ranking"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 856
    const/4 v7, 0x0

    .line 858
    const/4 v2, 0x6

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "user_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "active_point"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "calorie"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "head_pic_url"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "nick_name"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "_index"

    aput-object v4, v2, v3

    const-string v3, "account=? and type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const-string v5, "_index asc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 871
    if-nez v1, :cond_2

    .line 896
    if-eqz v1, :cond_1

    .line 897
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    goto :goto_0

    .line 875
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 876
    new-instance v0, Lcom/yf/smart/weloopx/data/models/RankingUser;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/models/RankingUser;-><init>()V

    .line 877
    const-string v2, "user_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 878
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/RankingUser;->setUserId(I)V

    .line 880
    const-string v2, "active_point"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 881
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/RankingUser;->setActivePoint(I)V

    .line 883
    const-string v2, "calorie"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 884
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yf/smart/weloopx/data/models/RankingUser;->setCalorie(D)V

    .line 886
    const-string v2, "head_pic_url"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 887
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/RankingUser;->setHeadPicUrl(Ljava/lang/String;)V

    .line 889
    const-string v2, "nick_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 890
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/RankingUser;->setNickname(Ljava/lang/String;)V

    .line 891
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 893
    :catch_0
    move-exception v0

    .line 894
    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 896
    if-eqz v1, :cond_3

    .line 897
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_3
    move-object v0, v6

    .line 901
    goto/16 :goto_0

    .line 896
    :cond_4
    if-eqz v1, :cond_3

    .line 897
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 896
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v7, :cond_5

    .line 897
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 896
    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_4

    .line 893
    :catch_1
    move-exception v0

    move-object v1, v7

    goto :goto_2
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/CalorieItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 588
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 642
    :goto_0
    return-object v0

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/a;->a:Landroid/content/ContentResolver;

    .line 593
    const-string v1, "content://com.yf.smart.weloopx.data.WeLoopProvider/calorie_item"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 594
    const/4 v7, 0x0

    .line 596
    const/4 v2, 0x6

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "happen_date"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "active_point"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "calorie"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "step_count"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "distance"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "calorie_goal"

    aput-object v4, v2, v3

    const-string v3, "datetime(happen_date) between datetime(?) and datetime(?) and account=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const-string v5, "happen_date asc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 609
    if-nez v1, :cond_2

    .line 637
    if-eqz v1, :cond_1

    .line 638
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    goto :goto_0

    .line 613
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 614
    new-instance v0, Lcom/yf/smart/weloopx/data/models/CalorieItem;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/models/CalorieItem;-><init>()V

    .line 615
    const-string v2, "happen_date"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 616
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->setHappenDate(Ljava/lang/String;)V

    .line 618
    const-string v2, "active_point"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 619
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->setActivePoint(I)V

    .line 621
    const-string v2, "calorie"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 622
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->setCalorie(D)V

    .line 624
    const-string v2, "step_count"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 625
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->setStepCount(I)V

    .line 627
    const-string v2, "distance"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 628
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->setDistance(D)V

    .line 630
    const-string v2, "calorie_goal"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 631
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->setCalorieGoal(D)V

    .line 632
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 634
    :catch_0
    move-exception v0

    .line 635
    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 637
    if-eqz v1, :cond_3

    .line 638
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_3
    move-object v0, v6

    .line 642
    goto/16 :goto_0

    .line 637
    :cond_4
    if-eqz v1, :cond_3

    .line 638
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 637
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_4
    if-eqz v1, :cond_5

    .line 638
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 637
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 634
    :catch_1
    move-exception v0

    move-object v1, v7

    goto :goto_2
.end method

.method public b(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/SleepItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 472
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Landroid/content/ContentValues;

    .line 473
    iget-object v3, p0, Lcom/yf/smart/weloopx/b/a/a;->a:Landroid/content/ContentResolver;

    .line 474
    const-string v0, "content://com.yf.smart.weloopx.data.WeLoopProvider/sleep_item"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 476
    new-instance v0, Lcom/yf/smart/weloopx/b/a/c;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/b/a/c;-><init>(Lcom/yf/smart/weloopx/b/a/a;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 483
    const-string v5, "datetime(happen_date) between datetime(?) and datetime(?) and account=?"

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/SleepItem;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getHappenDate()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v7, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/SleepItem;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getHappenDate()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x2

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 490
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v5

    .line 492
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/SleepItem;

    .line 493
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 494
    const-string v8, "account"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v8, "happen_date"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getHappenDate()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v8, "deep_sleep_time"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getDeepSleepMinutes()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 497
    const-string v8, "shallow_sleep_time"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getShallowSleepMinutes()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 498
    const-string v8, "sleep_goal"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getSleepGoalMinutes()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    const-string v8, "sleep_score"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getScore()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 500
    const-string v8, "wake_time"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getWakeMinutes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    aput-object v7, v2, v1

    .line 502
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 503
    goto :goto_0

    .line 505
    :cond_0
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 507
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/CalorieStatistics;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 647
    new-instance v6, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;

    invoke-direct {v6}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;-><init>()V

    .line 649
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 707
    :goto_0
    return-object v0

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/a;->a:Landroid/content/ContentResolver;

    .line 654
    const-string v1, "content://com.yf.smart.weloopx.data.WeLoopProvider/calorie_statistics"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 657
    const/16 v2, 0x9

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "active_point_average"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "active_point_sum"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "calorie_average"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "calorie_sum"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "distance_average"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "distance_sum"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "step_count_average"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "step_count_sum"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "calorie_goal_sum"

    aput-object v4, v2, v3

    const-string v3, "datetime(happen_date) between datetime(?) and datetime(?) and account=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 672
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    const-string v0, "active_point_average"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 674
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->setActivePointAvg(I)V

    .line 676
    const-string v0, "calorie_average"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 677
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->setCalorieAvg(D)V

    .line 679
    const-string v0, "step_count_average"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 680
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->setStepCountAvg(I)V

    .line 682
    const-string v0, "distance_average"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 683
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->setDistanceAvg(D)V

    .line 685
    const-string v0, "active_point_sum"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 686
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->setActivePointSum(I)V

    .line 688
    const-string v0, "calorie_sum"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 689
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->setCalorieSum(D)V

    .line 691
    const-string v0, "step_count_sum"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 692
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->setStepCountSum(I)V

    .line 694
    const-string v0, "distance_sum"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 695
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->setDistanceSum(D)V

    .line 697
    const-string v0, "calorie_goal_sum"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 698
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->setCalorieGoalSum(D)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 703
    :cond_1
    if-eqz v1, :cond_2

    .line 704
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v6

    .line 707
    goto/16 :goto_0

    .line 700
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 701
    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 703
    if-eqz v1, :cond_2

    .line 704
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 703
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_3

    .line 704
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 703
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 700
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public c(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/CalorieItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 432
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Landroid/content/ContentValues;

    .line 433
    iget-object v3, p0, Lcom/yf/smart/weloopx/b/a/a;->a:Landroid/content/ContentResolver;

    .line 434
    const-string v0, "content://com.yf.smart.weloopx.data.WeLoopProvider/calorie_item"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 436
    new-instance v0, Lcom/yf/smart/weloopx/b/a/b;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/b/a/b;-><init>(Lcom/yf/smart/weloopx/b/a/a;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 443
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v5

    .line 444
    const-string v6, "datetime(happen_date) between datetime(?) and datetime(?) and account=?"

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/CalorieItem;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->getHappenDate()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    const/4 v8, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/CalorieItem;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->getHappenDate()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x2

    aput-object v5, v7, v0

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 452
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/CalorieItem;

    .line 453
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 454
    const-string v8, "account"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v8, "happen_date"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->getHappenDate()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v8, "calorie"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->getCalorie()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 457
    const-string v8, "calorie_goal"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->getCalorieGoal()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 458
    const-string v8, "distance"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->getDistance()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 459
    const-string v8, "active_point"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->getActivePoint()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    const-string v8, "step_count"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->getStepCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    aput-object v7, v2, v1

    .line 462
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 463
    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 467
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/SleepStatistics;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 712
    new-instance v6, Lcom/yf/smart/weloopx/data/models/SleepStatistics;

    invoke-direct {v6}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;-><init>()V

    .line 714
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 772
    :goto_0
    return-object v0

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/a;->a:Landroid/content/ContentResolver;

    .line 719
    const-string v1, "content://com.yf.smart.weloopx.data.WeLoopProvider/sleep_statistics"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 722
    :try_start_0
    const-string v3, "datetime(happen_date) between datetime(?) and datetime(?) and account=? and (deep_sleep_time + shallow_sleep_time + wake_time) > 0"

    .line 726
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "sleep_score_average"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "shallow_sleep_average"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "deep_sleep_average"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "wake_average"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "deep_sleep_sum"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "shallow_sleep_sum"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "wake_sum"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "sleep_goal_sum"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 740
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    const-string v0, "sleep_score_average"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 742
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->setSleepScoreAvg(D)V

    .line 744
    const-string v0, "shallow_sleep_average"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 745
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->setShallowSleepAvg(I)V

    .line 747
    const-string v0, "deep_sleep_average"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 748
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->setDeepSleepAvg(I)V

    .line 750
    const-string v0, "wake_average"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 751
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->setWakeAvg(I)V

    .line 753
    const-string v0, "deep_sleep_sum"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 754
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->setDeepSleepSum(I)V

    .line 756
    const-string v0, "shallow_sleep_sum"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 757
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->setShallowSleepSum(I)V

    .line 759
    const-string v0, "wake_sum"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 760
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->setWakeSum(I)V

    .line 762
    const-string v0, "sleep_goal_sum"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 763
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->setSleepGoalSum(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 768
    :cond_1
    if-eqz v1, :cond_2

    .line 769
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v6

    .line 772
    goto/16 :goto_0

    .line 765
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 766
    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 768
    if-eqz v1, :cond_2

    .line 769
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 768
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_3

    .line 769
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 768
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 765
    :catch_1
    move-exception v0

    goto :goto_2
.end method
