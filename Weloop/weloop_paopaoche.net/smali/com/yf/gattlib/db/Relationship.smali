.class public Lcom/yf/gattlib/db/Relationship;
.super Lcom/roscopeco/ormdroid/Entity;
.source "ProGuard"


# instance fields
.field public id:I

.field public left:Ljava/lang/String;

.field public right:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/roscopeco/ormdroid/Entity;-><init>()V

    return-void
.end method

.method public static createRelationship(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 14
    const-class v0, Lcom/yf/gattlib/db/Relationship;

    invoke-static {v0}, Lcom/roscopeco/ormdroid/Entity;->query(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/roscopeco/ormdroid/Query$SQLExpression;

    const/4 v2, 0x0

    const-string v3, "left"

    invoke-static {v3, p0}, Lcom/roscopeco/ormdroid/Query;->eql(Ljava/lang/String;Ljava/lang/Object;)Lcom/roscopeco/ormdroid/Query$SQLExpression;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "right"

    invoke-static {v3, p1}, Lcom/roscopeco/ormdroid/Query;->eql(Ljava/lang/String;Ljava/lang/Object;)Lcom/roscopeco/ormdroid/Query$SQLExpression;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/roscopeco/ormdroid/Query;->and([Lcom/roscopeco/ormdroid/Query$SQLExpression;)Lcom/roscopeco/ormdroid/Query$SQLExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roscopeco/ormdroid/Query;->where(Lcom/roscopeco/ormdroid/Query$SQLExpression;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roscopeco/ormdroid/Query;->execute()Lcom/roscopeco/ormdroid/Entity;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/db/Relationship;

    .line 20
    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/yf/gattlib/db/Relationship;

    invoke-direct {v0}, Lcom/yf/gattlib/db/Relationship;-><init>()V

    .line 22
    iput-object p0, v0, Lcom/yf/gattlib/db/Relationship;->left:Ljava/lang/String;

    .line 23
    iput-object p1, v0, Lcom/yf/gattlib/db/Relationship;->right:Ljava/lang/String;

    .line 24
    invoke-virtual {v0}, Lcom/yf/gattlib/db/Relationship;->save()I

    .line 26
    :cond_0
    return-void
.end method

.method public static deleteRelationship(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 45
    const-class v0, Lcom/yf/gattlib/db/Relationship;

    invoke-static {v0}, Lcom/roscopeco/ormdroid/Entity;->query(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/roscopeco/ormdroid/Query$SQLExpression;

    const/4 v2, 0x0

    const-string v3, "left"

    invoke-static {v3, p0}, Lcom/roscopeco/ormdroid/Query;->eql(Ljava/lang/String;Ljava/lang/Object;)Lcom/roscopeco/ormdroid/Query$SQLExpression;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "right"

    invoke-static {v3, p1}, Lcom/roscopeco/ormdroid/Query;->eql(Ljava/lang/String;Ljava/lang/Object;)Lcom/roscopeco/ormdroid/Query$SQLExpression;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/roscopeco/ormdroid/Query;->and([Lcom/roscopeco/ormdroid/Query$SQLExpression;)Lcom/roscopeco/ormdroid/Query$SQLExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roscopeco/ormdroid/Query;->where(Lcom/roscopeco/ormdroid/Query$SQLExpression;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roscopeco/ormdroid/Query;->execute()Lcom/roscopeco/ormdroid/Entity;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/db/Relationship;

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/yf/gattlib/db/Relationship;->delete()V

    .line 54
    :cond_0
    return-void
.end method

.method public static getAllRelations(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/db/Relationship;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    const-class v0, Lcom/yf/gattlib/db/Relationship;

    invoke-static {v0}, Lcom/roscopeco/ormdroid/Entity;->query(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    const-string v1, "left"

    invoke-static {v1, p0}, Lcom/roscopeco/ormdroid/Query;->eql(Ljava/lang/String;Ljava/lang/Object;)Lcom/roscopeco/ormdroid/Query$SQLExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roscopeco/ormdroid/Query;->where(Lcom/roscopeco/ormdroid/Query$SQLExpression;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roscopeco/ormdroid/Query;->executeMulti()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getRelationship()Lcom/yf/gattlib/db/Relationship;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/yf/gattlib/db/Relationship;

    invoke-static {v0}, Lcom/roscopeco/ormdroid/Entity;->query(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roscopeco/ormdroid/Query;->execute()Lcom/roscopeco/ormdroid/Entity;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/db/Relationship;

    .line 31
    return-object v0
.end method

.method public static getRelationship(Ljava/lang/String;Ljava/lang/String;)Lcom/yf/gattlib/db/Relationship;
    .locals 4

    .prologue
    .line 35
    const-class v0, Lcom/yf/gattlib/db/Relationship;

    invoke-static {v0}, Lcom/roscopeco/ormdroid/Entity;->query(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/roscopeco/ormdroid/Query$SQLExpression;

    const/4 v2, 0x0

    const-string v3, "left"

    invoke-static {v3, p0}, Lcom/roscopeco/ormdroid/Query;->eql(Ljava/lang/String;Ljava/lang/Object;)Lcom/roscopeco/ormdroid/Query$SQLExpression;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "right"

    invoke-static {v3, p1}, Lcom/roscopeco/ormdroid/Query;->eql(Ljava/lang/String;Ljava/lang/Object;)Lcom/roscopeco/ormdroid/Query$SQLExpression;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/roscopeco/ormdroid/Query;->and([Lcom/roscopeco/ormdroid/Query$SQLExpression;)Lcom/roscopeco/ormdroid/Query$SQLExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roscopeco/ormdroid/Query;->where(Lcom/roscopeco/ormdroid/Query$SQLExpression;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roscopeco/ormdroid/Query;->execute()Lcom/roscopeco/ormdroid/Entity;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/db/Relationship;

    .line 41
    return-object v0
.end method
