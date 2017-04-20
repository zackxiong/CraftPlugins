.class public Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDeleteSql(Ljava/lang/Class;Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {p0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getId()Lcom/yf/gattlib/http/afinal/db/table/Id;

    move-result-object v1

    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Lcom/yf/gattlib/http/afinal/exception/DbException;

    const-string v1, "getDeleteSQL:idValue is null"

    invoke-direct {v0, v1}, Lcom/yf/gattlib/http/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getDeleteSqlBytableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 139
    const-string v0, " WHERE "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Lcom/yf/gattlib/http/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    new-instance v0, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;

    invoke-direct {v0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;-><init>()V

    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, p1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    .line 145
    return-object v0
.end method

.method public static buildDeleteSql(Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;
    .locals 4

    .prologue
    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getId()Lcom/yf/gattlib/http/afinal/db/table/Id;

    move-result-object v1

    .line 113
    invoke-virtual {v1, p0}, Lcom/yf/gattlib/http/afinal/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 115
    if-nez v2, :cond_0

    .line 116
    new-instance v0, Lcom/yf/gattlib/http/afinal/exception/DbException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeleteSQL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id value is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/gattlib/http/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getDeleteSqlBytableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 119
    const-string v0, " WHERE "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Lcom/yf/gattlib/http/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    new-instance v0, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;

    invoke-direct {v0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;-><init>()V

    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, v2}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    .line 125
    return-object v0
.end method

.method public static buildDeleteSql(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {p0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getDeleteSqlBytableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    const-string v0, " WHERE "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildInsertSql(Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;
    .locals 7

    .prologue
    .line 40
    invoke-static {p0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getSaveKeyValueListByEntity(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 42
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 43
    const/4 v0, 0x0

    .line 44
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 46
    new-instance v1, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;

    invoke-direct {v1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;-><init>()V

    .line 48
    const-string v0, "INSERT INTO "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/table/KeyValue;

    .line 52
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 56
    const-string v0, ") VALUES ( "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 59
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 60
    const-string v4, "?,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 63
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    move-object v0, v1

    .line 68
    :cond_2
    return-object v0
.end method

.method public static getCreatTableSQL(Ljava/lang/Class;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 305
    invoke-static {p0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v1

    .line 307
    invoke-virtual {v1}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getId()Lcom/yf/gattlib/http/afinal/db/table/Id;

    move-result-object v0

    .line 308
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 309
    const-string v3, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    invoke-virtual {v1}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    const-string v3, " ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/Id;->getDataType()Ljava/lang/Class;

    move-result-object v3

    .line 314
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_0

    const-class v4, Ljava/lang/Integer;

    if-eq v3, v4, :cond_0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_0

    const-class v4, Ljava/lang/Long;

    if-ne v3, v4, :cond_3

    .line 316
    :cond_0
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    :goto_0
    iget-object v0, v1, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 324
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/table/Property;

    .line 325
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/Property;->getColumn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/Property;->getDataType()Ljava/lang/Class;

    move-result-object v0

    .line 327
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v4, :cond_1

    const-class v4, Ljava/lang/Integer;

    if-eq v0, v4, :cond_1

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v4, :cond_1

    const-class v4, Ljava/lang/Long;

    if-ne v0, v4, :cond_4

    .line 329
    :cond_1
    const-string v0, " INTEGER"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    :cond_2
    :goto_2
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 318
    :cond_3
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " TEXT PRIMARY KEY,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 330
    :cond_4
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v4, :cond_5

    const-class v4, Ljava/lang/Float;

    if-eq v0, v4, :cond_5

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v4, :cond_5

    const-class v4, Ljava/lang/Double;

    if-ne v0, v4, :cond_6

    .line 332
    :cond_5
    const-string v0, " REAL"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 333
    :cond_6
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v4, :cond_7

    const-class v4, Ljava/lang/Boolean;

    if-ne v0, v4, :cond_2

    .line 334
    :cond_7
    const-string v0, " NUMERIC"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 339
    :cond_8
    iget-object v0, v1, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 340
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;

    .line 341
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->getColumn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " INTEGER"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 345
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 346
    const-string v0, " )"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDeleteSqlBytableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPropertyStrSql(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 357
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 358
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljava/util/Date;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljava/sql/Date;

    if-eqz v1, :cond_1

    .line 359
    :cond_0
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 361
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static getSaveKeyValueListByEntity(Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/http/afinal/db/table/KeyValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getId()Lcom/yf/gattlib/http/afinal/db/table/Id;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/gattlib/http/afinal/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    instance-of v3, v0, Ljava/lang/Integer;

    if-nez v3, :cond_0

    .line 79
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 80
    new-instance v3, Lcom/yf/gattlib/http/afinal/db/table/KeyValue;

    invoke-virtual {v2}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getId()Lcom/yf/gattlib/http/afinal/db/table/Id;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yf/gattlib/http/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/yf/gattlib/http/afinal/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    iget-object v0, v2, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/table/Property;

    .line 88
    invoke-static {v0, p0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->property2KeyValue(Lcom/yf/gattlib/http/afinal/db/table/Property;Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/db/table/KeyValue;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_1

    .line 90
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, v2, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;

    .line 96
    invoke-static {v0, p0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->manyToOne2KeyValue(Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/db/table/KeyValue;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 100
    :cond_4
    return-object v1
.end method

.method public static getSelectSQL(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 200
    invoke-static {p0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectSQL(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {p0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v0

    .line 178
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 179
    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getId()Lcom/yf/gattlib/http/afinal/db/table/Id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getPropertyStrSql(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectSQLByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 204
    invoke-static {p0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    const-string v0, " WHERE "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectSqlAsSqlInfo(Ljava/lang/Class;Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 189
    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getId()Lcom/yf/gattlib/http/afinal/db/table/Id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    new-instance v0, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;

    invoke-direct {v0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;-><init>()V

    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, p1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    .line 195
    return-object v0
.end method

.method private static getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SELECT * FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdateSqlAsSqlInfo(Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;
    .locals 8

    .prologue
    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v2

    .line 220
    invoke-virtual {v2}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getId()Lcom/yf/gattlib/http/afinal/db/table/Id;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/gattlib/http/afinal/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 222
    if-nez v3, :cond_0

    .line 223
    new-instance v0, Lcom/yf/gattlib/http/afinal/exception/DbException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this entity["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\'s id value is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/gattlib/http/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 228
    iget-object v0, v2, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 229
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/table/Property;

    .line 230
    invoke-static {v0, p0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->property2KeyValue(Lcom/yf/gattlib/http/afinal/db/table/Property;Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/db/table/KeyValue;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_1

    .line 232
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, v2, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 237
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;

    .line 238
    invoke-static {v0, p0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->manyToOne2KeyValue(Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/db/table/KeyValue;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 242
    :cond_4
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const/4 v0, 0x0

    .line 256
    :goto_2
    return-object v0

    .line 244
    :cond_6
    new-instance v1, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;

    invoke-direct {v1}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;-><init>()V

    .line 245
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v0, "UPDATE "

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v2}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    const-string v0, " SET "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/table/KeyValue;

    .line 249
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "=?,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 252
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 253
    const-string v0, " WHERE "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v2}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getId()Lcom/yf/gattlib/http/afinal/db/table/Id;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/gattlib/http/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    invoke-virtual {v1, v3}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    .line 255
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    move-object v0, v1

    .line 256
    goto :goto_2
.end method

.method public static getUpdateSqlAsSqlInfo(Ljava/lang/Object;Ljava/lang/String;)Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;
    .locals 6

    .prologue
    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v1

    .line 266
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 269
    iget-object v0, v1, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 270
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/table/Property;

    .line 271
    invoke-static {v0, p0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->property2KeyValue(Lcom/yf/gattlib/http/afinal/db/table/Property;Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/db/table/KeyValue;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, v1, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 277
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;

    .line 278
    invoke-static {v0, p0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlBuilder;->manyToOne2KeyValue(Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/db/table/KeyValue;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 282
    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 283
    :cond_4
    new-instance v0, Lcom/yf/gattlib/http/afinal/exception/DbException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this entity["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] has no property"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/gattlib/http/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_5
    new-instance v3, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;

    invoke-direct {v3}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;-><init>()V

    .line 287
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v0, "UPDATE "

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v1}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    const-string v0, " SET "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/table/KeyValue;

    .line 291
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, "=?,"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;->addValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 294
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 295
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 296
    const-string v0, " WHERE "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yf/gattlib/http/afinal/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 299
    return-object v3
.end method

.method private static manyToOne2KeyValue(Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/db/table/KeyValue;
    .locals 5

    .prologue
    .line 383
    const/4 v1, 0x0

    .line 384
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->getColumn()Ljava/lang/String;

    move-result-object v3

    .line 385
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_1

    .line 388
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Lcom/yf/gattlib/http/afinal/db/sqlite/ManyToOneLazyLoader;

    if-ne v2, v4, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->getManyClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getId()Lcom/yf/gattlib/http/afinal/db/table/Id;

    move-result-object v2

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/sqlite/ManyToOneLazyLoader;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/sqlite/ManyToOneLazyLoader;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yf/gattlib/http/afinal/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .line 393
    :goto_0
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 394
    new-instance v0, Lcom/yf/gattlib/http/afinal/db/table/KeyValue;

    invoke-direct {v0, v3, v2}, Lcom/yf/gattlib/http/afinal/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 398
    :goto_1
    return-object v0

    .line 391
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getId()Lcom/yf/gattlib/http/afinal/db/table/Id;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yf/gattlib/http/afinal/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static property2KeyValue(Lcom/yf/gattlib/http/afinal/db/table/Property;Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/db/table/KeyValue;
    .locals 3

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 370
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/db/table/Property;->getColumn()Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/http/afinal/db/table/Property;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 372
    if-eqz v2, :cond_1

    .line 373
    new-instance v0, Lcom/yf/gattlib/http/afinal/db/table/KeyValue;

    invoke-direct {v0, v1, v2}, Lcom/yf/gattlib/http/afinal/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 378
    :cond_0
    :goto_0
    return-object v0

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/db/table/Property;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/db/table/Property;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    new-instance v0, Lcom/yf/gattlib/http/afinal/db/table/KeyValue;

    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/db/table/Property;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yf/gattlib/http/afinal/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
