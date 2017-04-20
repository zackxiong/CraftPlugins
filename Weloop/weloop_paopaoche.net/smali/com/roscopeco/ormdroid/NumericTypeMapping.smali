.class public Lcom/roscopeco/ormdroid/NumericTypeMapping;
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
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/roscopeco/ormdroid/NumericTypeMapping;->mJavaType:Ljava/lang/Class;

    .line 33
    iput-object p2, p0, Lcom/roscopeco/ormdroid/NumericTypeMapping;->mSqlType:Ljava/lang/String;

    .line 34
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
    .line 55
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    :cond_0
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 57
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 61
    :goto_1
    return-object v0

    .line 57
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    :cond_2
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    :cond_3
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_1

    .line 61
    :cond_4
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method public encodeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 46
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    .line 48
    :goto_0
    return-object v0

    .line 46
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 37
    iget-object v0, p0, Lcom/roscopeco/ormdroid/NumericTypeMapping;->mJavaType:Ljava/lang/Class;

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
    .line 41
    iget-object v0, p0, Lcom/roscopeco/ormdroid/NumericTypeMapping;->mSqlType:Ljava/lang/String;

    return-object v0
.end method
