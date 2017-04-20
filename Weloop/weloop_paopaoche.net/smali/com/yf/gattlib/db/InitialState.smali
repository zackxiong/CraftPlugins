.class public Lcom/yf/gattlib/db/InitialState;
.super Lcom/roscopeco/ormdroid/Entity;
.source "ProGuard"


# instance fields
.field public id:I

.field public isInitialled:Z

.field public last:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/roscopeco/ormdroid/Entity;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/gattlib/db/InitialState;->last:I

    .line 15
    return-void
.end method

.method public static obtianInitailState()Lcom/yf/gattlib/db/InitialState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 18
    const-class v0, Lcom/yf/gattlib/db/InitialState;

    invoke-static {v0}, Lcom/yf/gattlib/db/InitialState;->query(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    const-string v1, "last"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roscopeco/ormdroid/Query;->eql(Ljava/lang/String;Ljava/lang/Object;)Lcom/roscopeco/ormdroid/Query$SQLExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roscopeco/ormdroid/Query;->where(Lcom/roscopeco/ormdroid/Query$SQLExpression;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roscopeco/ormdroid/Query;->execute()Lcom/roscopeco/ormdroid/Entity;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/db/InitialState;

    .line 19
    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/yf/gattlib/db/InitialState;

    invoke-direct {v0}, Lcom/yf/gattlib/db/InitialState;-><init>()V

    .line 21
    iput-boolean v3, v0, Lcom/yf/gattlib/db/InitialState;->isInitialled:Z

    .line 23
    :cond_0
    return-object v0
.end method


# virtual methods
.method public save(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/gattlib/db/InitialState;->last:I

    .line 29
    invoke-super {p0, p1}, Lcom/roscopeco/ormdroid/Entity;->save(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    return v0
.end method
