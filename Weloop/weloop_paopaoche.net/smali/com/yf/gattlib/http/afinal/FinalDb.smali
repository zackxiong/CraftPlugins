.class public Lcom/yf/gattlib/http/afinal/FinalDb;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/http/afinal/FinalDb$DbUpdateListener;,
        Lcom/yf/gattlib/http/afinal/FinalDb$SqliteDbHelper;,
        Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FinalDb"

.field private static daoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yf/gattlib/http/afinal/FinalDb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private config:Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;

.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yf/gattlib/http/afinal/FinalDb;->daoMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;)V
    .locals 6

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Lcom/yf/gattlib/http/afinal/exception/DbException;

    const-string v1, "daoConfig is null"

    invoke-direct {v0, v1}, Lcom/yf/gattlib/http/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Lcom/yf/gattlib/http/afinal/exception/DbException;

    const-string v1, "android context is null"

    invoke-direct {v0, v1}, Lcom/yf/gattlib/http/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->getTargetDirectory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->getTargetDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 60
    invoke-virtual {p1}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->getTargetDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yf/gattlib/http/afinal/FinalDb;->createDbFileOnSDCard(Ljava/lang/String;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 68
    :goto_0
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/FinalDb;->config:Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;

    .line 69
    return-void

    .line 63
    :cond_2
    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalDb$SqliteDbHelper;

    invoke-virtual {p1}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->getDbVersion()I

    move-result v4

    invoke-virtual {p1}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->getDbUpdateListener()Lcom/yf/gattlib/http/afinal/FinalDb$DbUpdateListener;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/yf/gattlib/http/afinal/FinalDb$SqliteDbHelper;-><init>(Lcom/yf/gattlib/http/afinal/FinalDb;Landroid/content/Context;Ljava/lang/String;ILcom/yf/gattlib/http/afinal/FinalDb$DbUpdateListener;)V

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/FinalDb$SqliteDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method private checkTableExist(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 742
    invoke-static {p1}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->tableIsExist(Lcom/yf/gattlib/http/afinal/db/table/TableInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    invoke-static {p1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getCreatTableSQL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 744
    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 745
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 747
    :cond_0
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/yf/gattlib/http/afinal/FinalDb;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;-><init>()V

    .line 87
    invoke-virtual {v0, p0}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 88
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->create(Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;)Lcom/yf/gattlib/http/afinal/FinalDb;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/yf/gattlib/http/afinal/FinalDb;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;-><init>()V

    .line 115
    invoke-virtual {v0, p0}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 116
    invoke-virtual {v0, p1}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 117
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->create(Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;)Lcom/yf/gattlib/http/afinal/FinalDb;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/yf/gattlib/http/afinal/FinalDb;
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;-><init>()V

    .line 147
    invoke-virtual {v0, p0}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v0, p2}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, p1}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setTargetDirectory(Ljava/lang/String;)V

    .line 150
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->create(Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;)Lcom/yf/gattlib/http/afinal/FinalDb;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/yf/gattlib/http/afinal/FinalDb;
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;-><init>()V

    .line 165
    invoke-virtual {v0, p0}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 166
    invoke-virtual {v0, p1}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setTargetDirectory(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, p2}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, p3}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setDebug(Z)V

    .line 169
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->create(Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;)Lcom/yf/gattlib/http/afinal/FinalDb;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILcom/yf/gattlib/http/afinal/FinalDb$DbUpdateListener;)Lcom/yf/gattlib/http/afinal/FinalDb;
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;-><init>()V

    .line 218
    invoke-virtual {v0, p0}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 219
    invoke-virtual {v0, p1}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setTargetDirectory(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, p2}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, p3}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setDebug(Z)V

    .line 222
    invoke-virtual {v0, p4}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setDbVersion(I)V

    .line 223
    invoke-virtual {v0, p5}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setDbUpdateListener(Lcom/yf/gattlib/http/afinal/FinalDb$DbUpdateListener;)V

    .line 224
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->create(Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;)Lcom/yf/gattlib/http/afinal/FinalDb;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Z)Lcom/yf/gattlib/http/afinal/FinalDb;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;-><init>()V

    .line 131
    invoke-virtual {v0, p0}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 132
    invoke-virtual {v0, p1}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p2}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setDebug(Z)V

    .line 134
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->create(Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;)Lcom/yf/gattlib/http/afinal/FinalDb;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;ZILcom/yf/gattlib/http/afinal/FinalDb$DbUpdateListener;)Lcom/yf/gattlib/http/afinal/FinalDb;
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;-><init>()V

    .line 190
    invoke-virtual {v0, p0}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 191
    invoke-virtual {v0, p1}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, p2}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setDebug(Z)V

    .line 193
    invoke-virtual {v0, p3}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setDbVersion(I)V

    .line 194
    invoke-virtual {v0, p4}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setDbUpdateListener(Lcom/yf/gattlib/http/afinal/FinalDb$DbUpdateListener;)V

    .line 195
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->create(Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;)Lcom/yf/gattlib/http/afinal/FinalDb;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Z)Lcom/yf/gattlib/http/afinal/FinalDb;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;-><init>()V

    .line 100
    invoke-virtual {v0, p0}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 101
    invoke-virtual {v0, p1}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->setDebug(Z)V

    .line 102
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->create(Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;)Lcom/yf/gattlib/http/afinal/FinalDb;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;)Lcom/yf/gattlib/http/afinal/FinalDb;
    .locals 1

    .prologue
    .line 234
    invoke-static {p0}, Lcom/yf/gattlib/http/afinal/FinalDb;->getInstance(Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;)Lcom/yf/gattlib/http/afinal/FinalDb;

    move-result-object v0

    return-object v0
.end method

.method private createDbFileOnSDCard(Ljava/lang/String;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 858
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 861
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 862
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 871
    :cond_0
    :goto_0
    return-object v0

    .line 864
    :catch_0
    move-exception v0

    .line 865
    new-instance v1, Lcom/yf/gattlib/http/afinal/exception/DbException;

    const-string v2, "\u6570\u636e\u5e93\u6587\u4ef6\u521b\u5efa\u5931\u8d25"

    invoke-direct {v1, v2, v0}, Lcom/yf/gattlib/http/afinal/exception/DbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 868
    :cond_1
    invoke-static {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method private debugSql(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 779
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalDb;->config:Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalDb;->config:Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    const-string v0, "Debug SQL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_0
    return-void
.end method

.method private exeSqlInfo(Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;)V
    .locals 3

    .prologue
    .line 394
    if-eqz p1, :cond_0

    .line 395
    invoke-virtual {p1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;->getBindArgsAsArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    const-string v0, "FinalDb"

    const-string v1, "sava error:sqlInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 685
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 686
    invoke-direct {p0, p2}, Lcom/yf/gattlib/http/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 689
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 690
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 691
    invoke-static {v2, p1, p0}, Lcom/yf/gattlib/http/afinal/db/sqlite/CursorUtils;->getEntity(Landroid/database/Cursor;Ljava/lang/Class;Lcom/yf/gattlib/http/afinal/FinalDb;)Ljava/lang/Object;

    move-result-object v3

    .line 692
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 695
    :catch_0
    move-exception v0

    .line 696
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 698
    if-eqz v2, :cond_0

    .line 699
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v1

    .line 702
    :cond_1
    :goto_1
    return-object v0

    .line 698
    :cond_2
    if-eqz v2, :cond_1

    .line 699
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 698
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 699
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 700
    :cond_3
    throw v0
.end method

.method private static declared-synchronized getInstance(Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;)Lcom/yf/gattlib/http/afinal/FinalDb;
    .locals 4

    .prologue
    .line 72
    const-class v1, Lcom/yf/gattlib/http/afinal/FinalDb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yf/gattlib/http/afinal/FinalDb;->daoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/FinalDb;

    .line 73
    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalDb;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/http/afinal/FinalDb;-><init>(Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;)V

    .line 75
    sget-object v2, Lcom/yf/gattlib/http/afinal/FinalDb;->daoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    monitor-exit v1

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private insertContentValues(Ljava/util/List;Landroid/content/ContentValues;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/http/afinal/db/table/KeyValue;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .prologue
    .line 280
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 281
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/table/KeyValue;

    .line 282
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_0
    const-string v0, "FinalDb"

    const-string v1, "insertContentValues: List<KeyValue> is empty or ContentValues is empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_1
    return-void
.end method

.method private tableIsExist(Lcom/yf/gattlib/http/afinal/db/table/TableInfo;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 750
    invoke-virtual {p1}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->isCheckDatabese()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 775
    :cond_0
    :goto_0
    return v0

    .line 755
    :cond_1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(*) AS c FROM sqlite_master WHERE type =\'table\' AND name =\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 757
    invoke-direct {p0, v3}, Lcom/yf/gattlib/http/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 758
    iget-object v4, p0, Lcom/yf/gattlib/http/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 759
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 760
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 761
    if-lez v3, :cond_2

    .line 762
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->setCheckDatabese(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    if-eqz v2, :cond_0

    .line 771
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 770
    :cond_2
    if-eqz v2, :cond_3

    .line 771
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move v0, v1

    .line 775
    goto :goto_0

    .line 767
    :catch_0
    move-exception v0

    .line 768
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 770
    if-eqz v2, :cond_3

    .line 771
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 770
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    .line 771
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 772
    :cond_4
    throw v0
.end method


# virtual methods
.method public delete(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 321
    invoke-static {p1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->buildDeleteSql(Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->exeSqlInfo(Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;)V

    .line 322
    return-void
.end method

.method public deleteAll(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 358
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->buildDeleteSql(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public deleteById(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 334
    invoke-static {p1, p2}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->buildDeleteSql(Ljava/lang/Class;Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->exeSqlInfo(Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;)V

    .line 335
    return-void
.end method

.method public deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 346
    invoke-static {p1, p2}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->buildDeleteSql(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public dropDb()V
    .locals 4

    .prologue
    .line 380
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT name FROM sqlite_master WHERE type =\'table\' AND name != \'sqlite_sequence\'"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_0

    .line 383
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_0
    if-eqz v0, :cond_1

    .line 388
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_1
    return-void
.end method

.method public dropTable(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 370
    invoke-static {p1}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v0

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public findAll(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 632
    invoke-static {p1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findAll(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 643
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 656
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 657
    invoke-static {p1, p2}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getSelectSQLByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findAllByWhere(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 672
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getSelectSQLByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 409
    invoke-direct {p0, p2}, Lcom/yf/gattlib/http/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 410
    invoke-static {p2, p1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getSelectSqlAsSqlInfo(Ljava/lang/Class;Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_1

    .line 412
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yf/gattlib/http/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;->getBindArgsAsStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 416
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-static {v1, p2, p0}, Lcom/yf/gattlib/http/afinal/db/sqlite/CursorUtils;->getEntity(Landroid/database/Cursor;Ljava/lang/Class;Lcom/yf/gattlib/http/afinal/FinalDb;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 422
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 425
    :goto_0
    return-object v0

    .line 422
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 425
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public findDbModelBySQL(Ljava/lang/String;)Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 711
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 712
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 714
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    invoke-static {v2}, Lcom/yf/gattlib/http/afinal/db/sqlite/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 720
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 722
    :goto_0
    return-object v0

    .line 720
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 717
    :catch_0
    move-exception v1

    .line 718
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 720
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public findDbModelListBySQL(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 726
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 728
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 730
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    invoke-static {v1}, Lcom/yf/gattlib/http/afinal/db/sqlite/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 733
    :catch_0
    move-exception v0

    .line 734
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 736
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 738
    :goto_1
    return-object v2

    .line 736
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public findWithManyToOneById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 435
    invoke-direct {p0, p2}, Lcom/yf/gattlib/http/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 436
    invoke-static {p2, p1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->findDbModelBySQL(Ljava/lang/String;)Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_0

    .line 440
    invoke-static {v0, p2}, Lcom/yf/gattlib/http/afinal/db/sqlite/CursorUtils;->dbModel2Entity(Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 441
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/yf/gattlib/http/afinal/FinalDb;->loadManyToOne(Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 444
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs findWithManyToOneById(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 457
    invoke-direct {p0, p2}, Lcom/yf/gattlib/http/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 458
    invoke-static {p2, p1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->findDbModelBySQL(Ljava/lang/String;)Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_0

    .line 462
    invoke-static {v0, p2}, Lcom/yf/gattlib/http/afinal/db/sqlite/CursorUtils;->dbModel2Entity(Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 463
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/yf/gattlib/http/afinal/FinalDb;->loadManyToOne(Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findWithOneToManyById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 544
    invoke-direct {p0, p2}, Lcom/yf/gattlib/http/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 545
    invoke-static {p2, p1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->findDbModelBySQL(Ljava/lang/String;)Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_0

    .line 549
    invoke-static {v0, p2}, Lcom/yf/gattlib/http/afinal/db/sqlite/CursorUtils;->dbModel2Entity(Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 550
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, p2, v1}, Lcom/yf/gattlib/http/afinal/FinalDb;->loadOneToMany(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 553
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs findWithOneToManyById(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 565
    invoke-direct {p0, p2}, Lcom/yf/gattlib/http/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 566
    invoke-static {p2, p1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->findDbModelBySQL(Ljava/lang/String;)Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;

    move-result-object v0

    .line 569
    if-eqz v0, :cond_0

    .line 570
    invoke-static {v0, p2}, Lcom/yf/gattlib/http/afinal/db/sqlite/CursorUtils;->dbModel2Entity(Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 571
    invoke-virtual {p0, v0, p2, p3}, Lcom/yf/gattlib/http/afinal/FinalDb;->loadOneToMany(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 574
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs loadManyToOne(Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;",
            "TT;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 478
    if-eqz p2, :cond_4

    .line 480
    :try_start_0
    invoke-static {p3}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 482
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;

    .line 484
    const/4 v1, 0x0

    .line 485
    if-eqz p1, :cond_5

    .line 486
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    .line 493
    :goto_1
    if-eqz v5, :cond_0

    .line 495
    if-eqz p4, :cond_1

    array-length v1, p4

    if-nez v1, :cond_8

    :cond_1
    move v1, v2

    .line 498
    :goto_2
    array-length v7, p4

    move v3, v4

    :goto_3
    if-ge v3, v7, :cond_2

    aget-object v8, p4, v3

    .line 499
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->getManyClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v9, v8, :cond_6

    move v1, v2

    .line 504
    :cond_2
    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->getManyClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/yf/gattlib/http/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 510
    if-eqz v1, :cond_0

    .line 511
    invoke-virtual {v0, p2}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v5, Lcom/yf/gattlib/http/afinal/db/sqlite/ManyToOneLazyLoader;

    if-ne v3, v5, :cond_7

    .line 512
    invoke-virtual {v0, p2}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 513
    new-instance v3, Lcom/yf/gattlib/http/afinal/db/sqlite/ManyToOneLazyLoader;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->getManyClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, p2, p3, v5, p0}, Lcom/yf/gattlib/http/afinal/db/sqlite/ManyToOneLazyLoader;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lcom/yf/gattlib/http/afinal/FinalDb;)V

    invoke-virtual {v0, p2, v3}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 520
    :cond_3
    invoke-virtual {v0, p2}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/sqlite/ManyToOneLazyLoader;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/db/sqlite/ManyToOneLazyLoader;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    .line 531
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 534
    :cond_4
    return-object p2

    .line 487
    :cond_5
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v5, Lcom/yf/gattlib/http/afinal/db/sqlite/ManyToOneLazyLoader;

    if-ne v3, v5, :cond_9

    invoke-virtual {v0, p2}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 489
    invoke-virtual {v0, p2}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/gattlib/http/afinal/db/sqlite/ManyToOneLazyLoader;

    invoke-virtual {v1}, Lcom/yf/gattlib/http/afinal/db/sqlite/ManyToOneLazyLoader;->getFieldValue()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    .line 498
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 523
    :cond_7
    invoke-virtual {v0, p2, v1}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_8
    move v1, v4

    goto :goto_2

    :cond_9
    move-object v5, v1

    goto :goto_1
.end method

.method public varargs loadOneToMany(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 586
    if-eqz p1, :cond_3

    .line 588
    :try_start_0
    invoke-static {p2}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->oneToManyMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 590
    invoke-static {p2}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getId()Lcom/yf/gattlib/http/afinal/db/table/Id;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yf/gattlib/http/afinal/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 591
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;

    .line 593
    if-eqz p3, :cond_1

    array-length v1, p3

    if-nez v1, :cond_6

    :cond_1
    move v1, v2

    .line 596
    :goto_1
    array-length v7, p3

    move v3, v4

    :goto_2
    if-ge v3, v7, :cond_2

    aget-object v8, p3, v3

    .line 597
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;->getOneClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v9, v8, :cond_4

    move v1, v2

    .line 603
    :cond_2
    if-eqz v1, :cond_0

    .line 604
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;->getOneClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;->getColumn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/yf/gattlib/http/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 606
    if-eqz v1, :cond_0

    .line 608
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;->getDataType()Ljava/lang/Class;

    move-result-object v3

    const-class v7, Lcom/yf/gattlib/http/afinal/db/sqlite/OneToManyLazyLoader;

    if-ne v3, v7, :cond_5

    .line 609
    invoke-virtual {v0, p1}, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/sqlite/OneToManyLazyLoader;

    .line 611
    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/db/sqlite/OneToManyLazyLoader;->setList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    .line 619
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 622
    :cond_3
    return-object p1

    .line 596
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 613
    :cond_5
    :try_start_1
    invoke-virtual {v0, p1, v1}, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_6
    move v1, v4

    goto :goto_1
.end method

.method public save(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 244
    invoke-static {p1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->buildInsertSql(Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->exeSqlInfo(Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;)V

    .line 245
    return-void
.end method

.method public saveBindId(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 257
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yf/gattlib/http/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 258
    invoke-static {p1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getSaveKeyValueListByEntity(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 261
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v2

    .line 262
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 263
    invoke-direct {p0, v1, v3}, Lcom/yf/gattlib/http/afinal/FinalDb;->insertContentValues(Ljava/util/List;Landroid/content/ContentValues;)V

    .line 264
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    invoke-virtual {v2}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getId()Lcom/yf/gattlib/http/afinal/db/table/Id;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/yf/gattlib/http/afinal/db/table/Id;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public update(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 298
    invoke-static {p1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getUpdateSqlAsSqlInfo(Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->exeSqlInfo(Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;)V

    .line 299
    return-void
.end method

.method public update(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 310
    invoke-static {p1, p2}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getUpdateSqlAsSqlInfo(Ljava/lang/Object;Ljava/lang/String;)Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->exeSqlInfo(Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;)V

    .line 311
    return-void
.end method
