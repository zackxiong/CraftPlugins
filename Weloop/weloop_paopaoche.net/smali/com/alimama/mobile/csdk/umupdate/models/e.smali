.class public Lcom/alimama/mobile/csdk/umupdate/models/e;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "PROMOTERS_FIRST_PAGE_"

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->d:Ljava/lang/String;

    .line 37
    const-string v0, "PROMOTERS_NEXT_PAGE_"

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->e:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->f:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->g:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->b:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(ZJZ)Lorg/json/JSONObject;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 121
    :try_start_0
    invoke-static {}, Lcom/alimama/mobile/b;->a()Lcom/alimama/mobile/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alimama/mobile/b;->c()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 124
    if-eqz p1, :cond_4

    .line 125
    const-string v3, "Request data from first-cache.."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/alimama/mobile/csdk/umupdate/a/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->g:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/32 v6, 0x15180

    mul-long/2addr v6, p2

    const-wide/16 v8, 0xe10

    sub-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 131
    :cond_0
    if-eqz v1, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/alimama/mobile/csdk/umupdate/models/e;->a()V

    .line 134
    const-string v1, "Cache data is inactivation..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/j;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :cond_1
    :goto_0
    return-object v0

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->f:Ljava/lang/String;

    .line 142
    :goto_1
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    if-eqz v3, :cond_1

    .line 146
    if-eqz p4, :cond_3

    .line 147
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :try_start_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 149
    invoke-interface {v4, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    const-string v1, "destroy the used cache data."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/alimama/mobile/csdk/umupdate/a/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :cond_3
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 157
    goto :goto_0

    .line 139
    :cond_4
    const-string v1, "Request data from second-cache.."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/alimama/mobile/csdk/umupdate/a/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->b:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 152
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 158
    :catch_0
    move-exception v1

    .line 159
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove cache....["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-static {}, Lcom/alimama/mobile/b;->a()Lcom/alimama/mobile/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/b;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 97
    monitor-enter v1

    .line 98
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->f:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->g:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    monitor-exit v1

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-static {}, Lcom/alimama/mobile/b;->a()Lcom/alimama/mobile/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/b;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Save the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method protected a(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;)V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EXCHANGE_PRELOAD_ADS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->a:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    iget-object v0, p1, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p1, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->A:Ljava/lang/String;

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    const-string v0, "No found Slot_id or Appkey!!!!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRELOAD_KEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->c:Ljava/lang/String;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROMOTERS_FIRST_PAGE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->f:Ljava/lang/String;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROMOTERS_NEXT_PAGE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->b:Ljava/lang/String;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRELOAD_UPDATE_DATE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->g:Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_3
    iget-object v0, p1, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->z:Ljava/lang/String;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRELOAD_KEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->c:Ljava/lang/String;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROMOTERS_FIRST_PAGE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->f:Ljava/lang/String;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROMOTERS_NEXT_PAGE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->b:Ljava/lang/String;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRELOAD_UPDATE_DATE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->g:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public a(ZLorg/json/JSONObject;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-static {}, Lcom/alimama/mobile/b;->a()Lcom/alimama/mobile/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alimama/mobile/b;->c()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 178
    if-eqz p2, :cond_0

    .line 179
    const-string v2, "save json to cache...."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/alimama/mobile/csdk/umupdate/a/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    monitor-enter v1

    .line 181
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 183
    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->g:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 184
    if-eqz p1, :cond_1

    .line 185
    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->f:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    monitor-exit v1

    .line 191
    const/4 v0, 0x1

    .line 193
    :cond_0
    return v0

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-static {}, Lcom/alimama/mobile/b;->a()Lcom/alimama/mobile/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/b;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/e;->b:Ljava/lang/String;

    return-object v0
.end method
