.class Lcom/baidu/location/G;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/G$d;,
        Lcom/baidu/location/G$c;,
        Lcom/baidu/location/G$a;,
        Lcom/baidu/location/G$b;
    }
.end annotation


# static fields
.field private static ab:Lcom/baidu/location/G; = null

.field public static final iS:I = 0xa


# instance fields
.field private Y:Lcom/baidu/location/G$a;

.field private Z:Landroid/os/HandlerThread;

.field private a:Landroid/content/Context;

.field private aa:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/G;->aa:Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized a(Lcom/baidu/location/C;Ljava/lang/String;)I
    .locals 11

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/location/G;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/location/W;->a(Landroid/content/Context;)Lcom/baidu/location/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/W;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    :try_start_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/location/C;->getGeofenceId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "geofence_id"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "longitude"

    invoke-virtual {p1}, Lcom/baidu/location/C;->a()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v7, "latitude"

    invoke-virtual {p1}, Lcom/baidu/location/C;->case()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v7, "radius"

    invoke-virtual {p1}, Lcom/baidu/location/C;->do()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v7, "radius_type"

    invoke-virtual {p1}, Lcom/baidu/location/C;->new()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "valid_date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "duration_millis"

    invoke-virtual {p1}, Lcom/baidu/location/C;->goto()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "coord_type"

    invoke-virtual {p1}, Lcom/baidu/location/C;->int()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "is_lac"

    invoke-virtual {p1}, Lcom/baidu/location/C;->byte()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "is_cell"

    invoke-virtual {p1}, Lcom/baidu/location/C;->if()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "is_wifi"

    invoke-virtual {p1}, Lcom/baidu/location/C;->for()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "next_active_time"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "next_exit_active_time"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "geofence"

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v2, ";"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    move v3, v0

    :goto_3
    if-ge v3, v7, :cond_4

    aget-object v2, v5, v3

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "geofence_id"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "ap_backup"

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "|"

    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v9, "ap"

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "geofence_detail"

    const/4 v9, 0x0

    invoke-virtual {v4, v2, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/baidu/location/G;Lcom/baidu/location/C;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/G;->a(Lcom/baidu/location/C;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/baidu/location/G;Ljava/util/List;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/location/G;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method private declared-synchronized a(Ljava/util/List;)I
    .locals 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/G;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/location/W;->a(Landroid/content/Context;)Lcom/baidu/location/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/W;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const-string v0, "geofence"

    const-string v6, "%s=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "geofence_id"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "geofence_detail"

    const-string v6, "%s=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "geofence_id"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v2

    :goto_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    monitor-exit p0

    return v0

    :cond_0
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_2
.end method

.method private declared-synchronized a()J
    .locals 4

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/location/G;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/location/W;->a(Landroid/content/Context;)Lcom/baidu/location/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/W;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "geofence"

    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Lcom/baidu/location/GeofenceClient$OnAddBDGeofencesResultListener;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :cond_0
    invoke-interface {p3, p1, p2}, Lcom/baidu/location/GeofenceClient$OnAddBDGeofencesResultListener;->onAddBDGeofencesResult(ILjava/lang/String;)V

    return-void
.end method

.method private a(I[Ljava/lang/String;Lcom/baidu/location/GeofenceClient$OnRemoveBDGeofencesResultListener;)V
    .locals 0

    invoke-interface {p3, p1, p2}, Lcom/baidu/location/GeofenceClient$OnRemoveBDGeofencesResultListener;->onRemoveBDGeofencesByRequestIdsResult(I[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/G;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/G;->d()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/G;ILjava/lang/String;Lcom/baidu/location/GeofenceClient$OnAddBDGeofencesResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/location/G;->a(ILjava/lang/String;Lcom/baidu/location/GeofenceClient$OnAddBDGeofencesResultListener;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/G;I[Ljava/lang/String;Lcom/baidu/location/GeofenceClient$OnRemoveBDGeofencesResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/location/G;->a(I[Ljava/lang/String;Lcom/baidu/location/GeofenceClient$OnRemoveBDGeofencesResultListener;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/G;Lcom/baidu/location/GeofenceClient$OnAddBDGeofencesResultListener;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/location/G;->a(Lcom/baidu/location/GeofenceClient$OnAddBDGeofencesResultListener;ILjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/baidu/location/GeofenceClient$OnAddBDGeofencesResultListener;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/G;->Y:Lcom/baidu/location/G$a;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "status_code"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "geofence_id"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/baidu/location/G;->Y:Lcom/baidu/location/G$a;

    invoke-virtual {v1, v0}, Lcom/baidu/location/G$a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/G;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/G;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/G;->Y:Lcom/baidu/location/G$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/baidu/location/G$a;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic c(Lcom/baidu/location/G;)Lcom/baidu/location/G$a;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/G;->Y:Lcom/baidu/location/G$a;

    return-object v0
.end method

.method private final c()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/G;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/location/ac;->if(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not net connection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private declared-synchronized d()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/G;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/location/W;->a(Landroid/content/Context;)Lcom/baidu/location/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/W;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "DELETE FROM %s WHERE EXISTS (SELECT * FROM %s WHERE (%s + %s) < %d)"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "geofence_detail"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "geofence"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "valid_date"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "duration_millis"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE FROM %s WHERE (%s + %s) < %d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "geofence"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "valid_date"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "duration_millis"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static do(Landroid/content/Context;)I
    .locals 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private e()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GeofenceMan"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/baidu/location/G;->Z:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/baidu/location/G;->Z:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/baidu/location/G$a;

    iget-object v1, p0, Lcom/baidu/location/G;->Z:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/G$a;-><init>(Lcom/baidu/location/G;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/location/G;->Y:Lcom/baidu/location/G$a;

    return-void
.end method

.method public static for(Landroid/content/Context;)Lcom/baidu/location/G;
    .locals 1

    sget-object v0, Lcom/baidu/location/G;->ab:Lcom/baidu/location/G;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/G;

    invoke-direct {v0}, Lcom/baidu/location/G;-><init>()V

    sput-object v0, Lcom/baidu/location/G;->ab:Lcom/baidu/location/G;

    sget-object v0, Lcom/baidu/location/G;->ab:Lcom/baidu/location/G;

    invoke-direct {v0}, Lcom/baidu/location/G;->e()V

    sget-object v0, Lcom/baidu/location/G;->ab:Lcom/baidu/location/G;

    iput-object p0, v0, Lcom/baidu/location/G;->a:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/baidu/location/G;->ab:Lcom/baidu/location/G;

    return-object v0
.end method

.method public static int(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/baidu/location/j;->de()Lcom/baidu/location/j;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/j;->try(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public cJ()V
    .locals 3

    iget-object v1, p0, Lcom/baidu/location/G;->aa:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/G;->Y:Lcom/baidu/location/G$a;

    new-instance v2, Lcom/baidu/location/J;

    invoke-direct {v2, p0}, Lcom/baidu/location/J;-><init>(Lcom/baidu/location/G;)V

    invoke-virtual {v0, v2}, Lcom/baidu/location/G$a;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public do(Lcom/baidu/location/C;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/G;->Y:Lcom/baidu/location/G$a;

    new-instance v1, Lcom/baidu/location/H;

    invoke-direct {v1, p0, p1}, Lcom/baidu/location/H;-><init>(Lcom/baidu/location/G;Lcom/baidu/location/C;)V

    invoke-virtual {v0, v1}, Lcom/baidu/location/G$a;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized do(Ljava/lang/String;Z)V
    .locals 12

    const-wide/16 v10, 0x0

    const-wide/32 v0, 0x1b7740

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/baidu/location/G;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/location/W;->a(Landroid/content/Context;)Lcom/baidu/location/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/W;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_3

    const-string v4, "next_active_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/baidu/location/GeofenceClient;->e()J

    move-result-wide v8

    cmp-long v5, v8, v10

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/baidu/location/GeofenceClient;->e()J

    move-result-wide v8

    cmp-long v5, v8, v0

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/baidu/location/GeofenceClient;->e()J

    move-result-wide v0

    :cond_2
    add-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_1
    const-string v0, "geofence"

    const-string v1, "geofence_id= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_4
    const-string v4, "next_exit_active_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/baidu/location/GeofenceClient;->e()J

    move-result-wide v8

    cmp-long v5, v8, v10

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/baidu/location/GeofenceClient;->e()J

    move-result-wide v8

    cmp-long v5, v8, v0

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/baidu/location/GeofenceClient;->e()J

    move-result-wide v0

    :cond_4
    add-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public if(Lcom/baidu/location/C;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/G;->Y:Lcom/baidu/location/G$a;

    new-instance v1, Lcom/baidu/location/I;

    invoke-direct {v1, p0, p1}, Lcom/baidu/location/I;-><init>(Lcom/baidu/location/G;Lcom/baidu/location/C;)V

    invoke-virtual {v0, v1}, Lcom/baidu/location/G$a;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public if(Lcom/baidu/location/C;Lcom/baidu/location/GeofenceClient$OnAddBDGeofencesResultListener;)V
    .locals 4

    invoke-direct {p0}, Lcom/baidu/location/G;->c()V

    const-string v0, "OnAddBDGeofenceRecesResultListener not provided."

    invoke-static {p2, v0}, Lcom/baidu/location/A;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/baidu/location/G;->a()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/16 v0, 0x3e9

    invoke-virtual {p1}, Lcom/baidu/location/C;->getGeofenceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/baidu/location/GeofenceClient$OnAddBDGeofencesResultListener;->onAddBDGeofencesResult(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/baidu/location/G$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/location/G$b;-><init>(Lcom/baidu/location/G;Lcom/baidu/location/C;Lcom/baidu/location/GeofenceClient$OnAddBDGeofencesResultListener;)V

    invoke-virtual {v0}, Lcom/baidu/location/G$b;->al()V

    invoke-direct {p0}, Lcom/baidu/location/G;->b()V

    goto :goto_0
.end method

.method public if(Ljava/util/List;Lcom/baidu/location/GeofenceClient$OnRemoveBDGeofencesResultListener;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "geofenceRequestIds can\'t be null nor empty."

    invoke-static {v0, v1}, Lcom/baidu/location/A;->if(ZLjava/lang/Object;)V

    const-string v0, "onRemoveBDGeofencesResultListener not provided."

    invoke-static {p2, v0}, Lcom/baidu/location/A;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/location/G;->Y:Lcom/baidu/location/G$a;

    new-instance v1, Lcom/baidu/location/G$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/location/G$d;-><init>(Lcom/baidu/location/G;Ljava/util/List;Lcom/baidu/location/GeofenceClient$OnRemoveBDGeofencesResultListener;)V

    invoke-virtual {v0, v1}, Lcom/baidu/location/G$a;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
