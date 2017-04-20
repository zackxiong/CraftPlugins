.class public final Lcom/roscopeco/ormdroid/TypeMapper;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final TYPEMAPS:Lcom/roscopeco/ormdroid/MappingList;

.field private static mDefaultMapping:Lcom/roscopeco/ormdroid/TypeMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/roscopeco/ormdroid/MappingList;

    invoke-direct {v0}, Lcom/roscopeco/ormdroid/MappingList;-><init>()V

    sput-object v0, Lcom/roscopeco/ormdroid/TypeMapper;->TYPEMAPS:Lcom/roscopeco/ormdroid/MappingList;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/roscopeco/ormdroid/TypeMapper;->mDefaultMapping:Lcom/roscopeco/ormdroid/TypeMapping;

    .line 102
    new-instance v0, Lcom/roscopeco/ormdroid/NumericTypeMapping;

    const-class v1, Ljava/lang/Short;

    const-string v2, "SMALLINT"

    invoke-direct {v0, v1, v2}, Lcom/roscopeco/ormdroid/NumericTypeMapping;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/roscopeco/ormdroid/TypeMapper;->mapType(Lcom/roscopeco/ormdroid/TypeMapping;)V

    .line 103
    new-instance v0, Lcom/roscopeco/ormdroid/NumericTypeMapping;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v2, "SMALLINT"

    invoke-direct {v0, v1, v2}, Lcom/roscopeco/ormdroid/NumericTypeMapping;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/roscopeco/ormdroid/TypeMapper;->mapType(Lcom/roscopeco/ormdroid/TypeMapping;)V

    .line 104
    new-instance v0, Lcom/roscopeco/ormdroid/NumericTypeMapping;

    const-class v1, Ljava/lang/Byte;

    const-string v2, "TINYINT"

    invoke-direct {v0, v1, v2}, Lcom/roscopeco/ormdroid/NumericTypeMapping;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/roscopeco/ormdroid/TypeMapper;->mapType(Lcom/roscopeco/ormdroid/TypeMapping;)V

    .line 105
    new-instance v0, Lcom/roscopeco/ormdroid/NumericTypeMapping;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v2, "TINYINT"

    invoke-direct {v0, v1, v2}, Lcom/roscopeco/ormdroid/NumericTypeMapping;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/roscopeco/ormdroid/TypeMapper;->mapType(Lcom/roscopeco/ormdroid/TypeMapping;)V

    .line 106
    new-instance v0, Lcom/roscopeco/ormdroid/NumericTypeMapping;

    const-class v1, Ljava/lang/Float;

    const-string v2, "FLOAT"

    invoke-direct {v0, v1, v2}, Lcom/roscopeco/ormdroid/NumericTypeMapping;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/roscopeco/ormdroid/TypeMapper;->mapType(Lcom/roscopeco/ormdroid/TypeMapping;)V

    .line 107
    new-instance v0, Lcom/roscopeco/ormdroid/NumericTypeMapping;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "FLOAT"

    invoke-direct {v0, v1, v2}, Lcom/roscopeco/ormdroid/NumericTypeMapping;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/roscopeco/ormdroid/TypeMapper;->mapType(Lcom/roscopeco/ormdroid/TypeMapping;)V

    .line 108
    new-instance v0, Lcom/roscopeco/ormdroid/NumericTypeMapping;

    const-class v1, Ljava/lang/Double;

    const-string v2, "DOUBLE"

    invoke-direct {v0, v1, v2}, Lcom/roscopeco/ormdroid/NumericTypeMapping;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/roscopeco/ormdroid/TypeMapper;->mapType(Lcom/roscopeco/ormdroid/TypeMapping;)V

    .line 109
    new-instance v0, Lcom/roscopeco/ormdroid/NumericTypeMapping;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v2, "DOUBLE"

    invoke-direct {v0, v1, v2}, Lcom/roscopeco/ormdroid/NumericTypeMapping;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/roscopeco/ormdroid/TypeMapper;->mapType(Lcom/roscopeco/ormdroid/TypeMapping;)V

    .line 110
    new-instance v0, Lcom/roscopeco/ormdroid/NumericTypeMapping;

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "TINYINT"

    invoke-direct {v0, v1, v2}, Lcom/roscopeco/ormdroid/NumericTypeMapping;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/roscopeco/ormdroid/TypeMapper;->mapType(Lcom/roscopeco/ormdroid/TypeMapping;)V

    .line 111
    new-instance v0, Lcom/roscopeco/ormdroid/NumericTypeMapping;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v2, "TINYINT"

    invoke-direct {v0, v1, v2}, Lcom/roscopeco/ormdroid/NumericTypeMapping;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/roscopeco/ormdroid/TypeMapper;->mapType(Lcom/roscopeco/ormdroid/TypeMapping;)V

    .line 112
    new-instance v0, Lcom/roscopeco/ormdroid/NumericTypeMapping;

    const-class v1, Ljava/lang/Long;

    const-string v2, "BIGINT"

    invoke-direct {v0, v1, v2}, Lcom/roscopeco/ormdroid/NumericTypeMapping;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/roscopeco/ormdroid/TypeMapper;->mapType(Lcom/roscopeco/ormdroid/TypeMapping;)V

    .line 113
    new-instance v0, Lcom/roscopeco/ormdroid/NumericTypeMapping;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v2, "BIGINT"

    invoke-direct {v0, v1, v2}, Lcom/roscopeco/ormdroid/NumericTypeMapping;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/roscopeco/ormdroid/TypeMapper;->mapType(Lcom/roscopeco/ormdroid/TypeMapping;)V

    .line 114
    new-instance v0, Lcom/roscopeco/ormdroid/DateTypeMapping;

    invoke-direct {v0}, Lcom/roscopeco/ormdroid/DateTypeMapping;-><init>()V

    invoke-static {v0}, Lcom/roscopeco/ormdroid/TypeMapper;->mapType(Lcom/roscopeco/ormdroid/TypeMapping;)V

    .line 115
    new-instance v0, Lcom/roscopeco/ormdroid/EntityTypeMapping;

    invoke-direct {v0}, Lcom/roscopeco/ormdroid/EntityTypeMapping;-><init>()V

    invoke-static {v0}, Lcom/roscopeco/ormdroid/TypeMapper;->mapType(Lcom/roscopeco/ormdroid/TypeMapping;)V

    .line 116
    new-instance v0, Lcom/roscopeco/ormdroid/NumericTypeMapping;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/roscopeco/ormdroid/NumericTypeMapping;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/roscopeco/ormdroid/TypeMapper;->mapType(Lcom/roscopeco/ormdroid/TypeMapping;)V

    .line 117
    new-instance v0, Lcom/roscopeco/ormdroid/NumericTypeMapping;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/roscopeco/ormdroid/NumericTypeMapping;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/roscopeco/ormdroid/TypeMapper;->mapType(Lcom/roscopeco/ormdroid/TypeMapping;)V

    .line 118
    new-instance v0, Lcom/roscopeco/ormdroid/StringTypeMapping;

    const-class v1, Ljava/lang/String;

    const-string v2, "VARCHAR"

    invoke-direct {v0, v1, v2}, Lcom/roscopeco/ormdroid/StringTypeMapping;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/roscopeco/ormdroid/TypeMapper;->mapType(Lcom/roscopeco/ormdroid/TypeMapping;)V

    .line 120
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    throw v0
.end method

.method public static encodeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/roscopeco/ormdroid/TypeMapper;->getMapping(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/TypeMapping;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/roscopeco/ormdroid/TypeMapping;->encodeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMapping(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/TypeMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/roscopeco/ormdroid/TypeMapping;"
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/roscopeco/ormdroid/TypeMapper;->TYPEMAPS:Lcom/roscopeco/ormdroid/MappingList;

    invoke-virtual {v0, p0}, Lcom/roscopeco/ormdroid/MappingList;->findMapping(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/TypeMapping;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/roscopeco/ormdroid/TypeMapper;->mDefaultMapping:Lcom/roscopeco/ormdroid/TypeMapping;

    goto :goto_0
.end method

.method public static mapType(Lcom/roscopeco/ormdroid/TypeMapping;)V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/roscopeco/ormdroid/TypeMapper;->TYPEMAPS:Lcom/roscopeco/ormdroid/MappingList;

    invoke-virtual {v0, p0}, Lcom/roscopeco/ormdroid/MappingList;->addMapping(Lcom/roscopeco/ormdroid/TypeMapping;)V

    .line 85
    return-void
.end method

.method public static setDefaultMapping(Lcom/roscopeco/ormdroid/TypeMapping;)V
    .locals 0

    .prologue
    .line 94
    sput-object p0, Lcom/roscopeco/ormdroid/TypeMapper;->mDefaultMapping:Lcom/roscopeco/ormdroid/TypeMapping;

    .line 95
    return-void
.end method

.method public static sqlType(Ljava/lang/Class;)Ljava/lang/String;
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
    .line 48
    invoke-static {p0}, Lcom/roscopeco/ormdroid/TypeMapper;->getMapping(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/TypeMapping;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/roscopeco/ormdroid/TypeMapping;->sqlType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
