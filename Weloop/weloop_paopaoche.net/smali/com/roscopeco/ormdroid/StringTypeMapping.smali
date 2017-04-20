.class public Lcom/roscopeco/ormdroid/StringTypeMapping;
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
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/roscopeco/ormdroid/StringTypeMapping;->mJavaType:Ljava/lang/Class;

    .line 38
    iput-object p2, p0, Lcom/roscopeco/ormdroid/StringTypeMapping;->mSqlType:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public decodeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
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
    .line 54
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

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
    .line 42
    iget-object v0, p0, Lcom/roscopeco/ormdroid/StringTypeMapping;->mJavaType:Ljava/lang/Class;

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
    .line 46
    iget-object v0, p0, Lcom/roscopeco/ormdroid/StringTypeMapping;->mSqlType:Ljava/lang/String;

    return-object v0
.end method
