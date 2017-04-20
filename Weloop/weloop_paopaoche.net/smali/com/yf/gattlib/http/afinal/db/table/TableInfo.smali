.class public Lcom/yf/gattlib/http/afinal/db/table/TableInfo;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final tableInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yf/gattlib/http/afinal/db/table/TableInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkDatabese:Z

.field private className:Ljava/lang/String;

.field private id:Lcom/yf/gattlib/http/afinal/db/table/Id;

.field public final manyToOneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;",
            ">;"
        }
    .end annotation
.end field

.field public final oneToManyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yf/gattlib/http/afinal/db/table/OneToMany;",
            ">;"
        }
    .end annotation
.end field

.field public final propertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yf/gattlib/http/afinal/db/table/Property;",
            ">;"
        }
    .end annotation
.end field

.field private tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->tableInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->oneToManyMap:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method public static get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/yf/gattlib/http/afinal/db/table/TableInfo;"
        }
    .end annotation

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    new-instance v0, Lcom/yf/gattlib/http/afinal/exception/DbException;

    const-string v1, "table info get error,because the clazz is null"

    invoke-direct {v0, v1}, Lcom/yf/gattlib/http/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    sget-object v0, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->tableInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    .line 51
    if-nez v0, :cond_8

    .line 52
    new-instance v1, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;

    invoke-direct {v1}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;-><init>()V

    .line 54
    invoke-static {p0}, Lcom/yf/gattlib/http/afinal/utils/ClassUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->setTableName(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->setClassName(Ljava/lang/String;)V

    .line 57
    invoke-static {p0}, Lcom/yf/gattlib/http/afinal/utils/ClassUtils;->getPrimaryKeyField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    new-instance v2, Lcom/yf/gattlib/http/afinal/db/table/Id;

    invoke-direct {v2}, Lcom/yf/gattlib/http/afinal/db/table/Id;-><init>()V

    .line 60
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/utils/FieldUtils;->getColumnByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yf/gattlib/http/afinal/db/table/Id;->setColumn(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yf/gattlib/http/afinal/db/table/Id;->setFieldName(Ljava/lang/String;)V

    .line 62
    invoke-static {p0, v0}, Lcom/yf/gattlib/http/afinal/utils/FieldUtils;->getFieldSetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yf/gattlib/http/afinal/db/table/Id;->setSet(Ljava/lang/reflect/Method;)V

    .line 63
    invoke-static {p0, v0}, Lcom/yf/gattlib/http/afinal/utils/FieldUtils;->getFieldGetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yf/gattlib/http/afinal/db/table/Id;->setGet(Ljava/lang/reflect/Method;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yf/gattlib/http/afinal/db/table/Id;->setDataType(Ljava/lang/Class;)V

    .line 66
    invoke-virtual {v1, v2}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->setId(Lcom/yf/gattlib/http/afinal/db/table/Id;)V

    .line 71
    invoke-static {p0}, Lcom/yf/gattlib/http/afinal/utils/ClassUtils;->getPropertyList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/table/Property;

    .line 74
    if-eqz v0, :cond_1

    .line 75
    iget-object v3, v1, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/Property;->getColumn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 68
    :cond_2
    new-instance v0, Lcom/yf/gattlib/http/afinal/exception/DbException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the class["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\'s idField is null , \n you can define _id,id property or use annotation @id to solution this exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/gattlib/http/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_3
    invoke-static {p0}, Lcom/yf/gattlib/http/afinal/utils/ClassUtils;->getManyToOneList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_5

    .line 81
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;

    .line 82
    if-eqz v0, :cond_4

    .line 83
    iget-object v3, v1, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/ManyToOne;->getColumn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 87
    :cond_5
    invoke-static {p0}, Lcom/yf/gattlib/http/afinal/utils/ClassUtils;->getOneToManyList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_7

    .line 89
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;

    .line 90
    if-eqz v0, :cond_6

    .line 91
    iget-object v3, v1, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->oneToManyMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/db/table/OneToMany;->getColumn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 96
    :cond_7
    sget-object v0, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->tableInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 99
    :cond_8
    if-nez v0, :cond_9

    .line 100
    new-instance v0, Lcom/yf/gattlib/http/afinal/exception/DbException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the class["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\'s table is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/gattlib/http/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_9
    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;
    .locals 1

    .prologue
    .line 108
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lcom/yf/gattlib/http/afinal/db/table/TableInfo;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 112
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lcom/yf/gattlib/http/afinal/db/table/Id;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->id:Lcom/yf/gattlib/http/afinal/db/table/Id;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public isCheckDatabese()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->checkDatabese:Z

    return v0
.end method

.method public setCheckDatabese(Z)V
    .locals 0

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->checkDatabese:Z

    .line 146
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->className:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setId(Lcom/yf/gattlib/http/afinal/db/table/Id;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->id:Lcom/yf/gattlib/http/afinal/db/table/Id;

    .line 138
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/db/table/TableInfo;->tableName:Ljava/lang/String;

    .line 130
    return-void
.end method
