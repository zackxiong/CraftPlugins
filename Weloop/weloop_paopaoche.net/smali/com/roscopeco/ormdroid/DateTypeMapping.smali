.class public Lcom/roscopeco/ormdroid/DateTypeMapping;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/roscopeco/ormdroid/TypeMapping;


# instance fields
.field private mJavaType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mSqlType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-class v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/roscopeco/ormdroid/DateTypeMapping;->mJavaType:Ljava/lang/Class;

    .line 35
    const-string v0, "BIGINT"

    iput-object v0, p0, Lcom/roscopeco/ormdroid/DateTypeMapping;->mSqlType:Ljava/lang/String;

    .line 36
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
    .line 51
    new-instance v0, Ljava/util/Date;

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public encodeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 39
    iget-object v0, p0, Lcom/roscopeco/ormdroid/DateTypeMapping;->mJavaType:Ljava/lang/Class;

    return-object v0
.end method

.method public sqlType(Ljava/lang/Class;)Ljava/lang/String;
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
    .line 43
    iget-object v0, p0, Lcom/roscopeco/ormdroid/DateTypeMapping;->mSqlType:Ljava/lang/String;

    return-object v0
.end method
