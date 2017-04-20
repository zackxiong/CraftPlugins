.class public Lcom/roscopeco/ormdroid/ORMDroidApplication;
.super Landroid/app/Application;
.source "ProGuard"


# static fields
.field private static singleton:Lcom/roscopeco/ormdroid/ORMDroidApplication;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mContext:Landroid/content/Context;

.field private mDBName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getDefaultDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/roscopeco/ormdroid/ORMDroidApplication;->getSingleton()Lcom/roscopeco/ormdroid/ORMDroidApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roscopeco/ormdroid/ORMDroidApplication;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleton()Lcom/roscopeco/ormdroid/ORMDroidApplication;
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/roscopeco/ormdroid/ORMDroidApplication;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const-string v0, "ORMDroidApplication"

    const-string v1, "ORMDroid is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Lcom/roscopeco/ormdroid/ORMDroidException;

    const-string v1, "ORMDroid is not initialized - You must call ORMDroidApplication.initialize"

    invoke-direct {v0, v1}, Lcom/roscopeco/ormdroid/ORMDroidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    sget-object v0, Lcom/roscopeco/ormdroid/ORMDroidApplication;->singleton:Lcom/roscopeco/ormdroid/ORMDroidApplication;

    return-object v0
.end method

.method private initDatabaseConfig()V
    .locals 3

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/roscopeco/ormdroid/ORMDroidApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/roscopeco/ormdroid/ORMDroidApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 107
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "ormdroid.database.name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roscopeco/ormdroid/ORMDroidApplication;->mDBName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    new-instance v1, Lcom/roscopeco/ormdroid/ORMDroidException;

    const-string v2, "ORMDroid database configuration not found; Did you set properties in your app manifest?"

    invoke-direct {v1, v2, v0}, Lcom/roscopeco/ormdroid/ORMDroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static initInstance(Lcom/roscopeco/ormdroid/ORMDroidApplication;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/roscopeco/ormdroid/ORMDroidApplication;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/roscopeco/ormdroid/ORMDroidApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/roscopeco/ormdroid/ORMDroidApplication;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/roscopeco/ormdroid/ORMDroidApplication;

    invoke-direct {v0}, Lcom/roscopeco/ormdroid/ORMDroidApplication;-><init>()V

    sput-object v0, Lcom/roscopeco/ormdroid/ORMDroidApplication;->singleton:Lcom/roscopeco/ormdroid/ORMDroidApplication;

    invoke-static {v0, p0}, Lcom/roscopeco/ormdroid/ORMDroidApplication;->initInstance(Lcom/roscopeco/ormdroid/ORMDroidApplication;Landroid/content/Context;)V

    .line 67
    :cond_0
    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/roscopeco/ormdroid/ORMDroidApplication;->singleton:Lcom/roscopeco/ormdroid/ORMDroidApplication;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/roscopeco/ormdroid/ORMDroidApplication;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/roscopeco/ormdroid/ORMDroidApplication;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/roscopeco/ormdroid/ORMDroidApplication;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/roscopeco/ormdroid/ORMDroidApplication;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/roscopeco/ormdroid/ORMDroidApplication;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/roscopeco/ormdroid/ORMDroidApplication;->mDBName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/roscopeco/ormdroid/ORMDroidApplication;->initDatabaseConfig()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/roscopeco/ormdroid/ORMDroidApplication;->mDBName:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/roscopeco/ormdroid/ORMDroidApplication;->singleton:Lcom/roscopeco/ormdroid/ORMDroidApplication;

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ORMDroidApplication already initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    sput-object p0, Lcom/roscopeco/ormdroid/ORMDroidApplication;->singleton:Lcom/roscopeco/ormdroid/ORMDroidApplication;

    .line 100
    invoke-virtual {p0}, Lcom/roscopeco/ormdroid/ORMDroidApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/roscopeco/ormdroid/ORMDroidApplication;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method
