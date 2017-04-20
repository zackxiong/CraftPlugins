.class final Lcom/roscopeco/ormdroid/Entity$EntityMapping;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roscopeco/ormdroid/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntityMapping"
.end annotation


# static fields
.field private static final MATCH_DOTDOLLAR:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "INTERNAL<EntityMapping>"


# instance fields
.field private mColumnNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private mMappedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/roscopeco/ormdroid/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryKey:Ljava/lang/reflect/Field;

.field mPrimaryKeyColumnName:Ljava/lang/String;

.field mSchemaCreated:Z

.field mTableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const-string v0, "[\\.\\$]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->MATCH_DOTDOLLAR:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mColumnNames:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mFields:Ljava/util/ArrayList;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mSchemaCreated:Z

    return-void
.end method

.method static build(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Entity$EntityMapping;
    .locals 13
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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 176
    new-instance v6, Lcom/roscopeco/ormdroid/Entity$EntityMapping;

    invoke-direct {v6}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;-><init>()V

    .line 177
    iput-object p0, v6, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mMappedClass:Ljava/lang/Class;

    .line 178
    const-class v0, Lcom/roscopeco/ormdroid/Table;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/roscopeco/ormdroid/Table;

    .line 179
    if-eqz v0, :cond_1

    .line 180
    invoke-interface {v0}, Lcom/roscopeco/ormdroid/Table;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mTableName:Ljava/lang/String;

    .line 190
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    .line 194
    :goto_1
    const-string v0, "com.roscopeco.ormdroid.Entity"

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 195
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v9, v8

    move v5, v3

    :goto_2
    if-ge v5, v9, :cond_b

    aget-object v10, v8, v5

    .line 196
    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 209
    const-class v0, Lcom/roscopeco/ormdroid/Column;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/roscopeco/ormdroid/Column;

    .line 210
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/roscopeco/ormdroid/Column;->inverse()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    .line 211
    :goto_3
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/roscopeco/ormdroid/Column;->forceMap()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 213
    :goto_4
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    .line 214
    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz v0, :cond_9

    :cond_0
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    if-nez v4, :cond_9

    .line 222
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/roscopeco/ormdroid/TypeMapper;->getMapping(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/TypeMapping;

    move-result-object v0

    if-nez v0, :cond_4

    .line 223
    new-instance v0, Lcom/roscopeco/ormdroid/TypeMappingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Model "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has unmappable field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/roscopeco/ormdroid/TypeMappingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    sget-object v0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->MATCH_DOTDOLLAR:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mTableName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    move v4, v3

    .line 210
    goto :goto_3

    :cond_3
    move v0, v3

    .line 211
    goto :goto_4

    .line 228
    :cond_4
    const-class v0, Lcom/roscopeco/ormdroid/Column;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/roscopeco/ormdroid/Column;

    .line 231
    if-eqz v0, :cond_a

    .line 233
    const-string v11, ""

    invoke-interface {v0}, Lcom/roscopeco/ormdroid/Column;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 234
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 237
    :cond_5
    invoke-interface {v0}, Lcom/roscopeco/ormdroid/Column;->primaryKey()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 238
    iput-object v10, v6, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mPrimaryKey:Ljava/lang/reflect/Field;

    .line 239
    iput-object v4, v6, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mPrimaryKeyColumnName:Ljava/lang/String;

    .line 246
    :cond_6
    :goto_5
    iget-object v0, v6, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mPrimaryKey:Ljava/lang/reflect/Field;

    if-nez v0, :cond_8

    .line 247
    const-string v0, "_id"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "id"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 248
    :cond_7
    iput-object v10, v6, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mPrimaryKey:Ljava/lang/reflect/Field;

    .line 249
    iput-object v4, v6, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mPrimaryKeyColumnName:Ljava/lang/String;

    .line 253
    :cond_8
    iget-object v0, v6, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, v6, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mColumnNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_9
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_2

    .line 242
    :cond_a
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 259
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 262
    :cond_c
    iget-object v0, v6, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mPrimaryKey:Ljava/lang/reflect/Field;

    if-nez v0, :cond_d

    .line 264
    const-string v0, "INTERNAL<EntityMapping>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No primary key specified or determined for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v0, Lcom/roscopeco/ormdroid/ORMDroidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No primary key was specified, and a default could not be determined for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/roscopeco/ormdroid/ORMDroidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_d
    return-object v6
.end method

.method private getColNames()Ljava/lang/String;
    .locals 6

    .prologue
    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    iget-object v3, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mColumnNames:Ljava/util/ArrayList;

    .line 339
    iget-object v4, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mFields:Ljava/util/ArrayList;

    .line 340
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 342
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_1

    .line 343
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 344
    invoke-direct {p0, v0}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->isPrimaryKey(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    add-int/lit8 v0, v5, -0x1

    if-ge v1, v0, :cond_0

    .line 348
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 354
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFieldValues(Landroid/database/sqlite/SQLiteDatabase;Lcom/roscopeco/ormdroid/Entity;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    iget-object v3, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mFields:Ljava/util/ArrayList;

    .line 360
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 362
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    .line 363
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 364
    invoke-direct {p0, v0}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->isPrimaryKey(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 367
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 376
    :goto_1
    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    add-int/lit8 v0, v4, -0x1

    if-ge v1, v0, :cond_0

    .line 379
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 370
    const-string v5, "INTERNAL<EntityMapping>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalAccessException accessing field "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "; Inserting NULL"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v0, 0x0

    goto :goto_1

    .line 376
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->processValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 384
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSetFields(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    iget-object v4, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mColumnNames:Ljava/util/ArrayList;

    .line 390
    iget-object v5, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mFields:Ljava/util/ArrayList;

    .line 391
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 393
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v6, :cond_2

    .line 394
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 395
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 398
    iget-object v7, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mPrimaryKeyColumnName:Ljava/lang/String;

    if-eq v1, v7, :cond_0

    .line 399
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 410
    :goto_1
    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    add-int/lit8 v0, v6, -0x1

    if-ge v2, v0, :cond_0

    .line 412
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    const-string v1, "INTERNAL<EntityMapping>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IllegalAccessException accessing field "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "; Inserting NULL"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v0, 0x0

    goto :goto_1

    .line 410
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->processValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 417
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isPrimaryKey(Ljava/lang/reflect/Field;)Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mPrimaryKey:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private processValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    invoke-static {p1, p2}, Lcom/roscopeco/ormdroid/TypeMapper;->encodeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setPrimaryKeyValue(Lcom/roscopeco/ormdroid/Entity;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mPrimaryKey:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    const-string v0, "INTERNAL<EntityMapping>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalAccessException accessing primary key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mPrimaryKey:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Update failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance v0, Lcom/roscopeco/ormdroid/ORMDroidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalAccessException accessing primary key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mPrimaryKey:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Update failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/roscopeco/ormdroid/ORMDroidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private stripTrailingComma(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 423
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 426
    :cond_0
    return-object p1
.end method


# virtual methods
.method createSchema(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget-object v0, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 278
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    .line 279
    iget-object v0, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mColumnNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v1, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/roscopeco/ormdroid/TypeMapper;->sqlType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget-object v1, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mPrimaryKeyColumnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const-string v0, " PRIMARY KEY AUTOINCREMENT"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_0
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_1

    .line 290
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 294
    :cond_2
    const-string v0, ");"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    const-string v1, "INTERNAL<EntityMapping>"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mSchemaCreated:Z

    .line 300
    return-void
.end method

.method delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/roscopeco/ormdroid/Entity;)V
    .locals 2

    .prologue
    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mPrimaryKeyColumnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->getPrimaryKeyValue(Lcom/roscopeco/ormdroid/Entity;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method getPrimaryKeyValue(Lcom/roscopeco/ormdroid/Entity;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mPrimaryKey:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    const-string v0, "INTERNAL<EntityMapping>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalAccessException accessing primary key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mPrimaryKey:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Update failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v0, Lcom/roscopeco/ormdroid/ORMDroidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalAccessException accessing primary key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mPrimaryKey:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Update failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/roscopeco/ormdroid/ORMDroidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/roscopeco/ormdroid/Entity;)I
    .locals 3

    .prologue
    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->getColNames()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->stripTrailingComma(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") VALUES ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->getFieldValues(Landroid/database/sqlite/SQLiteDatabase;Lcom/roscopeco/ormdroid/Entity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->stripTrailingComma(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 438
    const-string v0, "select last_insert_rowid();"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 440
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 442
    invoke-direct {p0, p2, v0}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->setPrimaryKeyValue(Lcom/roscopeco/ormdroid/Entity;Ljava/lang/Object;)V

    .line 443
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 449
    if-eqz v1, :cond_0

    .line 450
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    .line 445
    :cond_1
    :try_start_1
    new-instance v0, Lcom/roscopeco/ormdroid/ORMDroidException;

    const-string v2, "Failed to get last inserted id after INSERT"

    invoke-direct {v0, v2}, Lcom/roscopeco/ormdroid/ORMDroidException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 450
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method load(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Lcom/roscopeco/ormdroid/Entity;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/roscopeco/ormdroid/Entity;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mMappedClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roscopeco/ormdroid/Entity;

    .line 474
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/roscopeco/ormdroid/Entity;->mTransient:Z

    .line 476
    iget-object v4, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mColumnNames:Ljava/util/ArrayList;

    .line 477
    iget-object v5, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mFields:Ljava/util/ArrayList;

    .line 478
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v1

    .line 480
    :goto_0
    if-ge v3, v6, :cond_1

    .line 481
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 482
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 483
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 485
    const/4 v8, -0x1

    if-ne v2, v8, :cond_0

    .line 486
    const-string v1, "Internal<ModelMapping>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got -1 column index for `"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' - Database schema may not match entity"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v1, Lcom/roscopeco/ormdroid/ORMDroidException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got -1 column index for `"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' - Database schema may not match entity"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/roscopeco/ormdroid/ORMDroidException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 496
    :catch_0
    move-exception v0

    .line 497
    new-instance v1, Lcom/roscopeco/ormdroid/ORMDroidException;

    const-string v2, "Failed to instantiate model class - does it have a public null constructor?"

    invoke-direct {v1, v2, v0}, Lcom/roscopeco/ormdroid/ORMDroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 489
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lcom/roscopeco/ormdroid/TypeMapper;->getMapping(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/TypeMapping;

    move-result-object v8

    invoke-interface {v8, p1, v7, p2, v2}, Lcom/roscopeco/ormdroid/TypeMapping;->decodeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v2

    .line 491
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 480
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 500
    :catch_1
    move-exception v0

    .line 501
    new-instance v1, Lcom/roscopeco/ormdroid/ORMDroidException;

    const-string v2, "Access denied. Is your model\'s constructor non-public?"

    invoke-direct {v1, v2, v0}, Lcom/roscopeco/ormdroid/ORMDroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 495
    :cond_1
    return-object v0
.end method

.method loadAll(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/roscopeco/ormdroid/Entity;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 513
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->load(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Lcom/roscopeco/ormdroid/Entity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 520
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 522
    return-object v0
.end method

.method update(Landroid/database/sqlite/SQLiteDatabase;Lcom/roscopeco/ormdroid/Entity;)V
    .locals 2

    .prologue
    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->getSetFields(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->stripTrailingComma(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->mPrimaryKeyColumnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/roscopeco/ormdroid/Entity$EntityMapping;->getPrimaryKeyValue(Lcom/roscopeco/ormdroid/Entity;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 463
    return-void
.end method
