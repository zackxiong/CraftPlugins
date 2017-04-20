.class Lcom/roscopeco/ormdroid/Query$LogicalExpr;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/roscopeco/ormdroid/Query$SQLExpression;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roscopeco/ormdroid/Query;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogicalExpr"
.end annotation


# instance fields
.field final op:Ljava/lang/String;

.field final operands:[Lcom/roscopeco/ormdroid/Query$SQLExpression;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Lcom/roscopeco/ormdroid/Query$SQLExpression;)V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/roscopeco/ormdroid/Query$LogicalExpr;->op:Ljava/lang/String;

    .line 77
    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create logical expression with < 2 operands"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iput-object p2, p0, Lcom/roscopeco/ormdroid/Query$LogicalExpr;->operands:[Lcom/roscopeco/ormdroid/Query$SQLExpression;

    .line 81
    return-void
.end method


# virtual methods
.method public generate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/roscopeco/ormdroid/Query$LogicalExpr;->operands:[Lcom/roscopeco/ormdroid/Query$SQLExpression;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/roscopeco/ormdroid/Query$LogicalExpr;->operands:[Lcom/roscopeco/ormdroid/Query$SQLExpression;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/roscopeco/ormdroid/Query$SQLExpression;->generate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/roscopeco/ormdroid/Query$LogicalExpr;->op:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/roscopeco/ormdroid/Query$LogicalExpr;->operands:[Lcom/roscopeco/ormdroid/Query$SQLExpression;

    iget-object v2, p0, Lcom/roscopeco/ormdroid/Query$LogicalExpr;->operands:[Lcom/roscopeco/ormdroid/Query$SQLExpression;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/roscopeco/ormdroid/Query$SQLExpression;->generate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
