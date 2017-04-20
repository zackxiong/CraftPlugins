.class Lcom/roscopeco/ormdroid/Query$BinExpr;
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
    name = "BinExpr"
.end annotation


# static fields
.field static final EQ:Ljava/lang/String; = " = "

.field static final GEQ:Ljava/lang/String; = " >= "

.field static final GT:Ljava/lang/String; = " > "

.field static final LEQ:Ljava/lang/String; = " <= "

.field static final LT:Ljava/lang/String; = " < "

.field static final NE:Ljava/lang/String; = " != "


# instance fields
.field final column:Ljava/lang/String;

.field final op:Ljava/lang/String;

.field final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/roscopeco/ormdroid/Query$BinExpr;->op:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/roscopeco/ormdroid/Query$BinExpr;->column:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/roscopeco/ormdroid/Query$BinExpr;->value:Ljava/lang/Object;

    .line 64
    return-void
.end method


# virtual methods
.method public generate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/roscopeco/ormdroid/Query$BinExpr;->column:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/roscopeco/ormdroid/Query$BinExpr;->op:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/roscopeco/ormdroid/Query$BinExpr;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
