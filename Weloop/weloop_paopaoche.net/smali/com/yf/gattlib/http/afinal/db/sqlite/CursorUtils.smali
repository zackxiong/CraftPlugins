.class public Lcom/yf/gattlib/http/afinal/db/sqlite/CursorUtils;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dbModel2Entity(Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 97
    if-eqz p0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;->getDataMap()Ljava/util/HashMap;

    move-result-object v0

    .line 101
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 102
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    invoke-static {p1}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v6

    .line 105
    iget-object v2, v6, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yf/gattlib/http/afinal/db/table/Property;

    .line 106
    if-eqz v2, :cond_3

    .line 107
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v0, v4

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/yf/gattlib/http/afinal/db/table/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v0, v4

    .line 121
    :goto_2
    return-object v0

    .line 107
    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {v6}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getId()Lcom/yf/gattlib/http/afinal/db/table/Id;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/gattlib/http/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v6}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getId()Lcom/yf/gattlib/http/afinal/db/table/Id;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v0, v4

    :goto_3
    invoke-virtual {v1, v3, v0}, Lcom/yf/gattlib/http/afinal/db/table/Id;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v3

    .line 115
    goto :goto_2
.end method

.method public static getDbModel(Landroid/database/Cursor;)Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;
    .locals 5

    .prologue
    .line 84
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    new-instance v0, Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;

    invoke-direct {v0}, Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;-><init>()V

    .line 86
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    .line 87
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 88
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/yf/gattlib/http/afinal/db/sqlite/DbModel;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static getEntity(Landroid/database/Cursor;Ljava/lang/Class;Lcom/yf/gattlib/http/afinal/FinalDb;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/yf/gattlib/http/afinal/FinalDb;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 33
    if-eqz p0, :cond_2

    .line 34
    :try_start_0
    invoke-static {p1}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    move-result-object v3

    .line 35
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    .line 36
    if-lez v4, :cond_2

    .line 37
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 38
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_3

    .line 40
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    .line 42
    iget-object v0, v3, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/table/Property;

    .line 43
    if-eqz v0, :cond_1

    .line 44
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/yf/gattlib/http/afinal/db/table/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v3}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getId()Lcom/yf/gattlib/http/afinal/db/table/Id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v3}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->getId()Lcom/yf/gattlib/http/afinal/db/table/Id;

    move-result-object v0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/yf/gattlib/http/afinal/db/table/Id;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    :cond_2
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 55
    :cond_3
    :try_start_1
    iget-object v0, v3, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->oneToManyMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;

    .line 56
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;->getDataType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/yf/gattlib/http/afinal/db/sqlite/OneToManyLazyLoader;

    if-ne v4, v5, :cond_4

    .line 57
    new-instance v4, Lcom/yf/gattlib/http/afinal/db/sqlite/OneToManyLazyLoader;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;->getOneClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, v1, p1, v5, p2}, Lcom/yf/gattlib/http/afinal/db/sqlite/OneToManyLazyLoader;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lcom/yf/gattlib/http/afinal/FinalDb;)V

    .line 58
    invoke-virtual {v0, v1, v4}, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 65
    :cond_5
    iget-object v0, v3, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;

    .line 66
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->getDataType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/yf/gattlib/http/afinal/db/sqlite/ManyToOneLazyLoader;

    if-ne v3, v4, :cond_6

    .line 67
    new-instance v3, Lcom/yf/gattlib/http/afinal/db/sqlite/ManyToOneLazyLoader;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->getManyClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, v1, p1, v4, p2}, Lcom/yf/gattlib/http/afinal/db/sqlite/ManyToOneLazyLoader;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lcom/yf/gattlib/http/afinal/FinalDb;)V

    .line 68
    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->getColumn()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yf/gattlib/http/afinal/db/sqlite/ManyToOneLazyLoader;->setFieldValue(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v0, v1, v3}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_7
    move-object v0, v1

    .line 72
    goto :goto_2
.end method
