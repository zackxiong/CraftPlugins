.class public Lcom/roscopeco/ormdroid/Query;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roscopeco/ormdroid/Query$LogicalExpr;,
        Lcom/roscopeco/ormdroid/Query$BinExpr;,
        Lcom/roscopeco/ormdroid/Query$SQLExpression;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/roscopeco/ormdroid/Entity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Query"


# instance fields
.field private customSql:Ljava/lang/String;

.field private limit:I

.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mEntityMapping:Lcom/roscopeco/ormdroid/Entity$EntityMapping;

.field private orderByColumns:[Ljava/lang/String;

.field private sqlCache:Ljava/lang/String;

.field private sqlCache1:Ljava/lang/String;

.field private whereCache:Ljava/lang/String;

.field private whereExpr:Lcom/roscopeco/ormdroid/Query$SQLExpression;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/roscopeco/ormdroid/Query;->limit:I

    .line 119
    iput-object p1, p0, Lcom/roscopeco/ormdroid/Query;->mClass:Ljava/lang/Class;

    invoke-static {p1}, Lcom/roscopeco/ormdroid/Entity;->getEntityMapping(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Entity$EntityMapping;

    move-result-object v0

    iput-object v0, p0, Lcom/roscopeco/ormdroid/Query;->mEntityMapping:Lcom/roscopeco/ormdroid/Entity$EntityMapping;

    .line 120
    return-void
.end method

.method public static varargs and([Lcom/roscopeco/ormdroid/Query$SQLExpression;)Lcom/roscopeco/ormdroid/Query$SQLExpression;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/roscopeco/ormdroid/Query$LogicalExpr;

    const-string v1, "AND"

    invoke-direct {v0, v1, p0}, Lcom/roscopeco/ormdroid/Query$LogicalExpr;-><init>(Ljava/lang/String;[Lcom/roscopeco/ormdroid/Query$SQLExpression;)V

    return-object v0
.end method

.method public static eql(Ljava/lang/String;Ljava/lang/Object;)Lcom/roscopeco/ormdroid/Query$SQLExpression;
    .locals 3

    .prologue
    .line 127
    new-instance v0, Lcom/roscopeco/ormdroid/Query$BinExpr;

    const-string v1, " = "

    const/4 v2, 0x0

    invoke-static {v2, p1}, Lcom/roscopeco/ormdroid/TypeMapper;->encodeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/roscopeco/ormdroid/Query$BinExpr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private generate(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/roscopeco/ormdroid/Query;->mEntityMapping:Lcom/roscopeco/ormdroid/Entity$EntityMapping;

    iget-object v1, v1, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/roscopeco/ormdroid/Query;->customSql:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 228
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/roscopeco/ormdroid/Query;->customSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/roscopeco/ormdroid/Query;->whereCache:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 232
    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roscopeco/ormdroid/Query;->whereCache:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/roscopeco/ormdroid/Query;->orderByColumns:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/roscopeco/ormdroid/Query;->orderByColumns:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 239
    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roscopeco/ormdroid/Query;->orderByColumns:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/roscopeco/ormdroid/Query;->joinStrings(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_2
    const/4 v1, -0x1

    if-le p1, v1, :cond_3

    .line 242
    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 234
    :cond_4
    iget-object v1, p0, Lcom/roscopeco/ormdroid/Query;->whereExpr:Lcom/roscopeco/ormdroid/Query$SQLExpression;

    if-eqz v1, :cond_1

    .line 235
    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roscopeco/ormdroid/Query;->whereExpr:Lcom/roscopeco/ormdroid/Query$SQLExpression;

    invoke-interface {v2}, Lcom/roscopeco/ormdroid/Query$SQLExpression;->generate()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/roscopeco/ormdroid/Query;->whereCache:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static geq(Ljava/lang/String;Ljava/lang/Object;)Lcom/roscopeco/ormdroid/Query$SQLExpression;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Lcom/roscopeco/ormdroid/Query$BinExpr;

    const-string v1, " >= "

    const/4 v2, 0x0

    invoke-static {v2, p1}, Lcom/roscopeco/ormdroid/TypeMapper;->encodeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/roscopeco/ormdroid/Query$BinExpr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static gt(Ljava/lang/String;Ljava/lang/Object;)Lcom/roscopeco/ormdroid/Query$SQLExpression;
    .locals 3

    .prologue
    .line 139
    new-instance v0, Lcom/roscopeco/ormdroid/Query$BinExpr;

    const-string v1, " > "

    const/4 v2, 0x0

    invoke-static {v2, p1}, Lcom/roscopeco/ormdroid/TypeMapper;->encodeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/roscopeco/ormdroid/Query$BinExpr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static varargs joinStrings(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 99
    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 100
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 106
    :cond_0
    return-object p0

    .line 102
    :cond_1
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 104
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static leq(Ljava/lang/String;Ljava/lang/Object;)Lcom/roscopeco/ormdroid/Query$SQLExpression;
    .locals 3

    .prologue
    .line 143
    new-instance v0, Lcom/roscopeco/ormdroid/Query$BinExpr;

    const-string v1, " <= "

    const/4 v2, 0x0

    invoke-static {v2, p1}, Lcom/roscopeco/ormdroid/TypeMapper;->encodeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/roscopeco/ormdroid/Query$BinExpr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/roscopeco/ormdroid/Query$SQLExpression;
    .locals 3

    .prologue
    .line 135
    new-instance v0, Lcom/roscopeco/ormdroid/Query$BinExpr;

    const-string v1, " < "

    const/4 v2, 0x0

    invoke-static {v2, p1}, Lcom/roscopeco/ormdroid/TypeMapper;->encodeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/roscopeco/ormdroid/Query$BinExpr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static neq(Ljava/lang/String;Ljava/lang/Object;)Lcom/roscopeco/ormdroid/Query$SQLExpression;
    .locals 3

    .prologue
    .line 131
    new-instance v0, Lcom/roscopeco/ormdroid/Query$BinExpr;

    const-string v1, " != "

    const/4 v2, 0x0

    invoke-static {v2, p1}, Lcom/roscopeco/ormdroid/TypeMapper;->encodeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/roscopeco/ormdroid/Query$BinExpr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs or([Lcom/roscopeco/ormdroid/Query$SQLExpression;)Lcom/roscopeco/ormdroid/Query$SQLExpression;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lcom/roscopeco/ormdroid/Query$LogicalExpr;

    const-string v1, "OR"

    invoke-direct {v0, v1, p0}, Lcom/roscopeco/ormdroid/Query$LogicalExpr;-><init>(Ljava/lang/String;[Lcom/roscopeco/ormdroid/Query$SQLExpression;)V

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
    .line 123
    new-instance v0, Lcom/roscopeco/ormdroid/Query;

    invoke-direct {v0, p0}, Lcom/roscopeco/ormdroid/Query;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public execute()Lcom/roscopeco/ormdroid/Entity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 264
    invoke-static {}, Lcom/roscopeco/ormdroid/ORMDroidApplication;->getDefaultDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 266
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/roscopeco/ormdroid/Query;->execute(Landroid/database/sqlite/SQLiteDatabase;)Lcom/roscopeco/ormdroid/Entity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    return-object v0

    .line 267
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public execute(Landroid/database/sqlite/SQLiteDatabase;)Lcom/roscopeco/ormdroid/Entity;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 277
    iget-object v1, p0, Lcom/roscopeco/ormdroid/Query;->mClass:Ljava/lang/Class;

    invoke-static {p1, v1}, Lcom/roscopeco/ormdroid/Entity;->getEntityMappingEnsureSchema(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Entity$EntityMapping;

    move-result-object v2

    .line 279
    iget-object v1, p0, Lcom/roscopeco/ormdroid/Query;->sqlCache1:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 280
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/roscopeco/ormdroid/Query;->generate(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roscopeco/ormdroid/Query;->sqlCache1:Ljava/lang/String;

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/roscopeco/ormdroid/Query;->sqlCache1:Ljava/lang/String;

    .line 283
    const-string v3, "Query"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 287
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 288
    invoke-virtual {v2, p1, v1}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->load(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Lcom/roscopeco/ormdroid/Entity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 293
    if-eqz v1, :cond_1

    .line 294
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v0

    .line 293
    :cond_2
    if-eqz v1, :cond_1

    .line 294
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_3

    .line 294
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 293
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public executeMulti()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 316
    invoke-static {}, Lcom/roscopeco/ormdroid/ORMDroidApplication;->getDefaultDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 318
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/roscopeco/ormdroid/Query;->executeMulti(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    return-object v0

    .line 319
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public executeMulti(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/roscopeco/ormdroid/Query;->toSql()Ljava/lang/String;

    move-result-object v0

    .line 339
    const-string v1, "Query"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v1, p0, Lcom/roscopeco/ormdroid/Query;->mClass:Ljava/lang/Class;

    invoke-static {p1, v1}, Lcom/roscopeco/ormdroid/Entity;->getEntityMappingEnsureSchema(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Entity$EntityMapping;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->loadAll(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public executeMultiForCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 304
    invoke-static {}, Lcom/roscopeco/ormdroid/ORMDroidApplication;->getDefaultDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 306
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/roscopeco/ormdroid/Query;->executeMultiForCursor(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    return-object v0

    .line 307
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public executeMultiForCursor(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/roscopeco/ormdroid/Query;->toSql()Ljava/lang/String;

    move-result-object v0

    .line 330
    const-string v1, "Query"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public limit(I)Lcom/roscopeco/ormdroid/Query;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/roscopeco/ormdroid/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcom/roscopeco/ormdroid/Query;->customSql:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change query parameters on custom SQL Query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    iput-object v1, p0, Lcom/roscopeco/ormdroid/Query;->sqlCache:Ljava/lang/String;

    .line 219
    iput-object v1, p0, Lcom/roscopeco/ormdroid/Query;->sqlCache1:Ljava/lang/String;

    .line 220
    iput p1, p0, Lcom/roscopeco/ormdroid/Query;->limit:I

    .line 221
    return-object p0
.end method

.method public varargs orderBy([Ljava/lang/String;)Lcom/roscopeco/ormdroid/Query;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/roscopeco/ormdroid/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcom/roscopeco/ormdroid/Query;->customSql:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change query parameters on custom SQL Query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iput-object v1, p0, Lcom/roscopeco/ormdroid/Query;->sqlCache:Ljava/lang/String;

    .line 208
    iput-object v1, p0, Lcom/roscopeco/ormdroid/Query;->sqlCache1:Ljava/lang/String;

    .line 209
    iput-object p1, p0, Lcom/roscopeco/ormdroid/Query;->orderByColumns:[Ljava/lang/String;

    .line 210
    return-object p0
.end method

.method public sql(Ljava/lang/String;)Lcom/roscopeco/ormdroid/Query;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/roscopeco/ormdroid/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/roscopeco/ormdroid/Query;->sqlCache:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/roscopeco/ormdroid/Query;->sqlCache1:Ljava/lang/String;

    .line 170
    iput-object v0, p0, Lcom/roscopeco/ormdroid/Query;->whereCache:Ljava/lang/String;

    .line 171
    iput-object v0, p0, Lcom/roscopeco/ormdroid/Query;->whereExpr:Lcom/roscopeco/ormdroid/Query$SQLExpression;

    .line 172
    iput-object v0, p0, Lcom/roscopeco/ormdroid/Query;->orderByColumns:[Ljava/lang/String;

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lcom/roscopeco/ormdroid/Query;->limit:I

    .line 174
    iput-object p1, p0, Lcom/roscopeco/ormdroid/Query;->customSql:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public toSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/roscopeco/ormdroid/Query;->sqlCache:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 249
    iget v0, p0, Lcom/roscopeco/ormdroid/Query;->limit:I

    invoke-direct {p0, v0}, Lcom/roscopeco/ormdroid/Query;->generate(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roscopeco/ormdroid/Query;->sqlCache:Ljava/lang/String;

    .line 251
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/roscopeco/ormdroid/Query;->sqlCache:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/roscopeco/ormdroid/Query;->toSql()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public where(Lcom/roscopeco/ormdroid/Query$SQLExpression;)Lcom/roscopeco/ormdroid/Query;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roscopeco/ormdroid/Query$SQLExpression;",
            ")",
            "Lcom/roscopeco/ormdroid/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lcom/roscopeco/ormdroid/Query;->customSql:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change query parameters on custom SQL Query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iput-object v1, p0, Lcom/roscopeco/ormdroid/Query;->sqlCache:Ljava/lang/String;

    .line 184
    iput-object v1, p0, Lcom/roscopeco/ormdroid/Query;->sqlCache1:Ljava/lang/String;

    .line 185
    iput-object v1, p0, Lcom/roscopeco/ormdroid/Query;->whereCache:Ljava/lang/String;

    .line 186
    iput-object p1, p0, Lcom/roscopeco/ormdroid/Query;->whereExpr:Lcom/roscopeco/ormdroid/Query$SQLExpression;

    .line 187
    return-object p0
.end method

.method public where(Ljava/lang/String;)Lcom/roscopeco/ormdroid/Query;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/roscopeco/ormdroid/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Lcom/roscopeco/ormdroid/Query;->customSql:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change query parameters on custom SQL Query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    iput-object v1, p0, Lcom/roscopeco/ormdroid/Query;->sqlCache:Ljava/lang/String;

    .line 196
    iput-object v1, p0, Lcom/roscopeco/ormdroid/Query;->sqlCache1:Ljava/lang/String;

    .line 197
    iput-object p1, p0, Lcom/roscopeco/ormdroid/Query;->whereCache:Ljava/lang/String;

    .line 198
    iput-object v1, p0, Lcom/roscopeco/ormdroid/Query;->whereExpr:Lcom/roscopeco/ormdroid/Query$SQLExpression;

    .line 199
    return-object p0
.end method
