.class public Lcom/yf/gattlib/http/afinal/db/table/Property;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private column:Ljava/lang/String;

.field private dataType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private defaultValue:Ljava/lang/String;

.field private field:Ljava/lang/reflect/Field;

.field private fieldName:Ljava/lang/String;

.field private get:Ljava/lang/reflect/Method;

.field private set:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->column:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getGet()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->get:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getSet()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 84
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->get:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->get:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setColumn(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->column:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setDataType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 117
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    .line 118
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->defaultValue:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setField(Ljava/lang/reflect/Field;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->field:Ljava/lang/reflect/Field;

    .line 138
    return-void
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->fieldName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setGet(Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->get:Ljava/lang/reflect/Method;

    .line 124
    return-void
.end method

.method public setSet(Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    .line 130
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_3

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez p2, :cond_2

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 49
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 50
    :cond_3
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_6

    .line 51
    :cond_4
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez p2, :cond_5

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_2

    .line 52
    :cond_6
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_9

    .line 53
    :cond_7
    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p2, :cond_8

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_3

    .line 54
    :cond_9
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_c

    .line 55
    :cond_a
    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p2, :cond_b

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_4

    .line 56
    :cond_c
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v1, Ljava/util/Date;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v1, Ljava/sql/Date;

    if-ne v0, v1, :cond_f

    .line 57
    :cond_d
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez p2, :cond_e

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Date;

    :goto_5
    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/utils/FieldUtils;->stringToDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_5

    .line 58
    :cond_f
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_12

    .line 59
    :cond_10
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez p2, :cond_11

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_11
    const-string v0, "1"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6

    .line 61
    :cond_12
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 68
    :cond_13
    :try_start_2
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->field:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 69
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/db/table/Property;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 70
    :catch_1
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
