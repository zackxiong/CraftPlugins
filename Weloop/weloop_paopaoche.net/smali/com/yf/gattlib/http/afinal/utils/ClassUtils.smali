.class public Lcom/yf/gattlib/http/afinal/utils/ClassUtils;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getManyToOneList(Ljava/lang/Class;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 203
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 204
    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    .line 205
    invoke-static {v5}, Lcom/yf/gattlib/http/afinal/utils/FieldUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v5}, Lcom/yf/gattlib/http/afinal/utils/FieldUtils;->isManyToOne(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    new-instance v6, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;

    invoke-direct {v6}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;-><init>()V

    .line 209
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v7, Lcom/yf/gattlib/http/afinal/db/sqlite/ManyToOneLazyLoader;

    if-ne v0, v7, :cond_2

    .line 210
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v7, 0x1

    aget-object v0, v0, v7

    check-cast v0, Ljava/lang/Class;

    .line 211
    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v6, v0}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->setManyClass(Ljava/lang/Class;)V

    .line 216
    :cond_0
    :goto_1
    invoke-static {v5}, Lcom/yf/gattlib/http/afinal/utils/FieldUtils;->getColumnByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->setColumn(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->setFieldName(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->setDataType(Ljava/lang/Class;)V

    .line 219
    invoke-static {p0, v5}, Lcom/yf/gattlib/http/afinal/utils/FieldUtils;->getFieldSetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->setSet(Ljava/lang/reflect/Method;)V

    .line 220
    invoke-static {p0, v5}, Lcom/yf/gattlib/http/afinal/utils/FieldUtils;->getFieldGetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->setGet(Ljava/lang/reflect/Method;)V

    .line 222
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->setManyClass(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 225
    :cond_3
    return-object v2
.end method

.method public static getOneToManyList(Ljava/lang/Class;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/http/afinal/db/table/OneToMany;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 241
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 243
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 244
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_4

    aget-object v5, v3, v1

    .line 245
    invoke-static {v5}, Lcom/yf/gattlib/http/afinal/utils/FieldUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v5}, Lcom/yf/gattlib/http/afinal/utils/FieldUtils;->isOneToMany(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    new-instance v6, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;

    invoke-direct {v6}, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;-><init>()V

    .line 249
    invoke-static {v5}, Lcom/yf/gattlib/http/afinal/utils/FieldUtils;->getColumnByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;->setColumn(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;->setFieldName(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 254
    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3

    .line 255
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 257
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    array-length v7, v7

    if-ne v7, v8, :cond_2

    .line 258
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v7, 0x0

    aget-object v0, v0, v7

    check-cast v0, Ljava/lang/Class;

    .line 259
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v6, v0}, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;->setOneClass(Ljava/lang/Class;)V

    .line 270
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;->setDataType(Ljava/lang/Class;)V

    .line 271
    invoke-static {p0, v5}, Lcom/yf/gattlib/http/afinal/utils/FieldUtils;->getFieldSetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;->setSet(Ljava/lang/reflect/Method;)V

    .line 272
    invoke-static {p0, v5}, Lcom/yf/gattlib/http/afinal/utils/FieldUtils;->getFieldGetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;->setGet(Ljava/lang/reflect/Method;)V

    .line 274
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 262
    :cond_2
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v7, 0x1

    aget-object v0, v0, v7

    check-cast v0, Ljava/lang/Class;

    .line 263
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v6, v0}, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;->setOneClass(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 267
    :cond_3
    :try_start_1
    new-instance v0, Lcom/yf/gattlib/http/afinal/exception/DbException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOneToManyList Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s type is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/gattlib/http/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    :cond_4
    return-object v2
.end method

.method public static getPrimaryKeyColumn(Ljava/lang/Class;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 62
    if-eqz v5, :cond_7

    .line 66
    array-length v6, v5

    move v4, v2

    move-object v0, v1

    :goto_0
    if-ge v4, v6, :cond_9

    aget-object v3, v5, v4

    .line 67
    const-class v0, Lcom/yf/gattlib/http/afinal/annotation/sqlite/Id;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/annotation/sqlite/Id;

    .line 68
    if-eqz v0, :cond_2

    .line 74
    :goto_1
    if-eqz v0, :cond_3

    .line 75
    invoke-interface {v0}, Lcom/yf/gattlib/http/afinal/annotation/sqlite/Id;->column()Ljava/lang/String;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 77
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_1
    :goto_2
    return-object v0

    .line 66
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 79
    :cond_3
    array-length v3, v5

    move v0, v2

    :goto_3
    if-ge v0, v3, :cond_5

    aget-object v4, v5, v0

    .line 80
    const-string v6, "_id"

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 81
    const-string v0, "_id"

    goto :goto_2

    .line 79
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 84
    :cond_5
    array-length v3, v5

    move v0, v2

    :goto_4
    if-ge v0, v3, :cond_8

    aget-object v2, v5, v0

    .line 85
    const-string v4, "id"

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 86
    const-string v0, "id"

    goto :goto_2

    .line 84
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 90
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this model["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] has no field"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v0, v1

    goto :goto_2

    :cond_9
    move-object v3, v1

    goto :goto_1
.end method

.method public static getPrimaryKeyField(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 102
    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 104
    if-eqz v4, :cond_3

    .line 106
    array-length v5, v4

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_6

    aget-object v2, v4, v3

    .line 107
    const-class v6, Lcom/yf/gattlib/http/afinal/annotation/sqlite/Id;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 113
    :goto_1
    if-nez v2, :cond_5

    .line 114
    array-length v5, v4

    move v3, v0

    :goto_2
    if-ge v3, v5, :cond_5

    aget-object v1, v4, v3

    .line 115
    const-string v6, "_id"

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 122
    :goto_3
    if-nez v1, :cond_4

    .line 123
    array-length v3, v4

    move v2, v0

    :goto_4
    if-ge v2, v3, :cond_4

    aget-object v0, v4, v2

    .line 124
    const-string v5, "id"

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 134
    :goto_5
    return-object v0

    .line 106
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 114
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 123
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 132
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this model["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] has no field"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object v0, v1

    goto :goto_5

    :cond_5
    move-object v1, v2

    goto :goto_3

    :cond_6
    move-object v2, v1

    goto :goto_1
.end method

.method public static getPrimaryKeyFieldName(Ljava/lang/Class;)Ljava/lang/String;
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
    .line 144
    invoke-static {p0}, Lcom/yf/gattlib/http/afinal/utils/ClassUtils;->getPrimaryKeyField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 145
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPrimaryKeyValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/utils/ClassUtils;->getPrimaryKeyField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yf/gattlib/http/afinal/utils/FieldUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getPropertyList(Ljava/lang/Class;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/http/afinal/db/table/Property;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 162
    invoke-static {p0}, Lcom/yf/gattlib/http/afinal/utils/ClassUtils;->getPrimaryKeyFieldName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 163
    array-length v4, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v2, v0

    .line 165
    invoke-static {v5}, Lcom/yf/gattlib/http/afinal/utils/FieldUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 166
    invoke-static {v5}, Lcom/yf/gattlib/http/afinal/utils/FieldUtils;->isBaseDateType(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 168
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 163
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    new-instance v6, Lcom/yf/gattlib/http/afinal/db/table/Property;

    invoke-direct {v6}, Lcom/yf/gattlib/http/afinal/db/table/Property;-><init>()V

    .line 173
    invoke-static {v5}, Lcom/yf/gattlib/http/afinal/utils/FieldUtils;->getColumnByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/yf/gattlib/http/afinal/db/table/Property;->setColumn(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/yf/gattlib/http/afinal/db/table/Property;->setFieldName(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/yf/gattlib/http/afinal/db/table/Property;->setDataType(Ljava/lang/Class;)V

    .line 176
    invoke-static {v5}, Lcom/yf/gattlib/http/afinal/utils/FieldUtils;->getPropertyDefaultValue(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/yf/gattlib/http/afinal/db/table/Property;->setDefaultValue(Ljava/lang/String;)V

    .line 177
    invoke-static {p0, v5}, Lcom/yf/gattlib/http/afinal/utils/FieldUtils;->getFieldSetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/yf/gattlib/http/afinal/db/table/Property;->setSet(Ljava/lang/reflect/Method;)V

    .line 178
    invoke-static {p0, v5}, Lcom/yf/gattlib/http/afinal/utils/FieldUtils;->getFieldGetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/yf/gattlib/http/afinal/db/table/Property;->setGet(Ljava/lang/reflect/Method;)V

    .line 179
    invoke-virtual {v6, v5}, Lcom/yf/gattlib/http/afinal/db/table/Property;->setField(Ljava/lang/reflect/Field;)V

    .line 181
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 185
    :cond_2
    return-object v1
.end method

.method public static getTableName(Ljava/lang/Class;)Ljava/lang/String;
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
    .line 42
    const-class v0, Lcom/yf/gattlib/http/afinal/annotation/sqlite/Table;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/annotation/sqlite/Table;

    .line 43
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yf/gattlib/http/afinal/annotation/sqlite/Table;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 45
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Lcom/yf/gattlib/http/afinal/annotation/sqlite/Table;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
