.class public Lcom/roscopeco/ormdroid/EntityTypeMapping;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/roscopeco/ormdroid/TypeMapping;


# static fields
.field private static final TAG:Ljava/lang/String; = "EntityTypeMapping"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/database/Cursor;",
            "I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 67
    const-class v1, Lcom/roscopeco/ormdroid/Entity;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EntityTypeMapping can only be used with Entity subclasses"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    invoke-static {p1, p2}, Lcom/roscopeco/ormdroid/Entity;->getEntityMappingEnsureSchema(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Entity$EntityMapping;

    move-result-object v1

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mPrimaryKeyColumnName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LIMIT 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    const-string v3, "EntityTypeMapping"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 80
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    invoke-virtual {v1, p1, v2}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->load(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Lcom/roscopeco/ormdroid/Entity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 86
    if-eqz v2, :cond_1

    .line 87
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v0

    .line 86
    :cond_2
    if-eqz v2, :cond_1

    .line 87
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 87
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public encodeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    check-cast p2, Lcom/roscopeco/ormdroid/Entity;

    .line 50
    invoke-virtual {p2}, Lcom/roscopeco/ormdroid/Entity;->isTransient()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transient object doesn\'t make sense here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    invoke-virtual {p2, p1}, Lcom/roscopeco/ormdroid/Entity;->save(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/roscopeco/ormdroid/TypeMapper;->encodeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/roscopeco/ormdroid/Entity;->getPrimaryKeyValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/roscopeco/ormdroid/TypeMapper;->encodeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public javaType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 35
    const-class v0, Lcom/roscopeco/ormdroid/Entity;

    return-object v0
.end method

.method public sqlType(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p1}, Lcom/roscopeco/ormdroid/Entity;->getEntityMapping(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Entity$EntityMapping;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTEGER REFERENCES "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mPrimaryKeyColumnName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
