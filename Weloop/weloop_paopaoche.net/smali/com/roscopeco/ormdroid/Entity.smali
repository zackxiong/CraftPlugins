.class public abstract Lcom/roscopeco/ormdroid/Entity;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roscopeco/ormdroid/Entity$EntityMapping;
    }
.end annotation


# static fields
.field private static final entityMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/roscopeco/ormdroid/Entity;",
            ">;",
            "Lcom/roscopeco/ormdroid/Entity$EntityMapping;",
            ">;"
        }
    .end annotation
.end field

.field public static final mDbLock:[B


# instance fields
.field private mMappingCache:Lcom/roscopeco/ormdroid/Entity$EntityMapping;

.field mTransient:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/roscopeco/ormdroid/Entity;->mDbLock:[B

    .line 536
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/roscopeco/ormdroid/Entity;->entityMappings:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roscopeco/ormdroid/Entity;->mTransient:Z

    .line 580
    return-void
.end method

.method private getEntityMapping()Lcom/roscopeco/ormdroid/Entity$EntityMapping;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/roscopeco/ormdroid/Entity;->mMappingCache:Lcom/roscopeco/ormdroid/Entity$EntityMapping;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/roscopeco/ormdroid/Entity;->mMappingCache:Lcom/roscopeco/ormdroid/Entity$EntityMapping;

    .line 603
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/roscopeco/ormdroid/Entity;->getEntityMapping(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Entity$EntityMapping;

    move-result-object v0

    iput-object v0, p0, Lcom/roscopeco/ormdroid/Entity;->mMappingCache:Lcom/roscopeco/ormdroid/Entity$EntityMapping;

    goto :goto_0
.end method

.method static getEntityMapping(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Entity$EntityMapping;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/roscopeco/ormdroid/Entity;",
            ">;)",
            "Lcom/roscopeco/ormdroid/Entity$EntityMapping;"
        }
    .end annotation

    .prologue
    .line 542
    sget-object v0, Lcom/roscopeco/ormdroid/Entity;->entityMappings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;

    .line 544
    if-nez v0, :cond_0

    .line 546
    sget-object v1, Lcom/roscopeco/ormdroid/Entity;->entityMappings:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->build(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Entity$EntityMapping;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    :cond_0
    return-object v0
.end method

.method private getEntityMappingEnsureSchema(Landroid/database/sqlite/SQLiteDatabase;)Lcom/roscopeco/ormdroid/Entity$EntityMapping;
    .locals 2

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/roscopeco/ormdroid/Entity;->getEntityMapping()Lcom/roscopeco/ormdroid/Entity$EntityMapping;

    move-result-object v0

    .line 609
    iget-boolean v1, v0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mSchemaCreated:Z

    if-nez v1, :cond_0

    .line 610
    invoke-virtual {v0, p1}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->createSchema(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 612
    :cond_0
    return-object v0
.end method

.method static getEntityMappingEnsureSchema(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Entity$EntityMapping;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/roscopeco/ormdroid/Entity;",
            ">;)",
            "Lcom/roscopeco/ormdroid/Entity$EntityMapping;"
        }
    .end annotation

    .prologue
    .line 554
    invoke-static {p1}, Lcom/roscopeco/ormdroid/Entity;->getEntityMapping(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Entity$EntityMapping;

    move-result-object v0

    .line 555
    iget-boolean v1, v0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mSchemaCreated:Z

    if-nez v1, :cond_0

    .line 556
    invoke-virtual {v0, p0}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->createSchema(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 558
    :cond_0
    return-object v0
.end method

.method public static query(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Query;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/roscopeco/ormdroid/Entity;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/roscopeco/ormdroid/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 572
    new-instance v0, Lcom/roscopeco/ormdroid/Query;

    invoke-direct {v0, p0}, Lcom/roscopeco/ormdroid/Query;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public delete()V
    .locals 3

    .prologue
    .line 690
    sget-object v1, Lcom/roscopeco/ormdroid/Entity;->mDbLock:[B

    monitor-enter v1

    .line 691
    :try_start_0
    iget-boolean v0, p0, Lcom/roscopeco/ormdroid/Entity;->mTransient:Z

    if-nez v0, :cond_0

    .line 692
    invoke-static {}, Lcom/roscopeco/ormdroid/ORMDroidApplication;->getDefaultDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 693
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 696
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/roscopeco/ormdroid/Entity;->delete(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 697
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 703
    :cond_0
    monitor-exit v1

    .line 704
    return-void

    .line 699
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 703
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 679
    invoke-direct {p0, p1}, Lcom/roscopeco/ormdroid/Entity;->getEntityMappingEnsureSchema(Landroid/database/sqlite/SQLiteDatabase;)Lcom/roscopeco/ormdroid/Entity$EntityMapping;

    move-result-object v0

    .line 681
    iget-boolean v1, p0, Lcom/roscopeco/ormdroid/Entity;->mTransient:Z

    if-nez v1, :cond_0

    .line 682
    invoke-virtual {v0, p1, p0}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/roscopeco/ormdroid/Entity;)V

    .line 684
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 712
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/roscopeco/ormdroid/Entity;

    invoke-virtual {p1}, Lcom/roscopeco/ormdroid/Entity;->getPrimaryKeyValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/roscopeco/ormdroid/Entity;->getPrimaryKeyValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrimaryKeyValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/roscopeco/ormdroid/Entity;->getEntityMapping()Lcom/roscopeco/ormdroid/Entity$EntityMapping;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->getPrimaryKeyValue(Lcom/roscopeco/ormdroid/Entity;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 723
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/roscopeco/ormdroid/Entity;->getPrimaryKeyValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/roscopeco/ormdroid/Entity;->mTransient:Z

    return v0
.end method

.method public save()I
    .locals 3

    .prologue
    .line 655
    sget-object v1, Lcom/roscopeco/ormdroid/Entity;->mDbLock:[B

    monitor-enter v1

    .line 656
    :try_start_0
    invoke-static {}, Lcom/roscopeco/ormdroid/ORMDroidApplication;->getDefaultDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 657
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 662
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/roscopeco/ormdroid/Entity;->save(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    .line 663
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 669
    monitor-exit v1

    return v0

    .line 665
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 670
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public save(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 3

    .prologue
    .line 634
    invoke-direct {p0, p1}, Lcom/roscopeco/ormdroid/Entity;->getEntityMappingEnsureSchema(Landroid/database/sqlite/SQLiteDatabase;)Lcom/roscopeco/ormdroid/Entity$EntityMapping;

    move-result-object v1

    .line 636
    const/4 v0, -0x1

    .line 638
    iget-boolean v2, p0, Lcom/roscopeco/ormdroid/Entity;->mTransient:Z

    if-eqz v2, :cond_0

    .line 639
    invoke-virtual {v1, p1, p0}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/roscopeco/ormdroid/Entity;)I

    move-result v0

    .line 640
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/roscopeco/ormdroid/Entity;->mTransient:Z

    .line 645
    :goto_0
    return v0

    .line 642
    :cond_0
    invoke-virtual {v1, p1, p0}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/roscopeco/ormdroid/Entity;)V

    goto :goto_0
.end method
