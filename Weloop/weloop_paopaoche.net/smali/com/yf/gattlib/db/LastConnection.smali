.class public Lcom/yf/gattlib/db/LastConnection;
.super Lcom/roscopeco/ormdroid/Entity;
.source "ProGuard"


# instance fields
.field public device:Ljava/lang/String;

.field public id:I

.field public last:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/roscopeco/ormdroid/Entity;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/gattlib/db/LastConnection;->last:I

    .line 15
    return-void
.end method

.method public static obtainLastConnection()Lcom/yf/gattlib/db/LastConnection;
    .locals 3

    .prologue
    .line 18
    const-class v0, Lcom/yf/gattlib/db/LastConnection;

    invoke-static {v0}, Lcom/yf/gattlib/db/LastConnection;->query(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    const-string v1, "last"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roscopeco/ormdroid/Query;->eql(Ljava/lang/String;Ljava/lang/Object;)Lcom/roscopeco/ormdroid/Query$SQLExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roscopeco/ormdroid/Query;->where(Lcom/roscopeco/ormdroid/Query$SQLExpression;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roscopeco/ormdroid/Query;->execute()Lcom/roscopeco/ormdroid/Entity;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/db/LastConnection;

    .line 20
    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/yf/gattlib/db/LastConnection;

    invoke-direct {v0}, Lcom/yf/gattlib/db/LastConnection;-><init>()V

    .line 24
    :cond_0
    return-object v0
.end method

.method public static update(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/yf/gattlib/db/LastConnection;->obtainLastConnection()Lcom/yf/gattlib/db/LastConnection;

    move-result-object v0

    .line 29
    iput-object p0, v0, Lcom/yf/gattlib/db/LastConnection;->device:Ljava/lang/String;

    .line 30
    invoke-virtual {v0}, Lcom/yf/gattlib/db/LastConnection;->save()I

    .line 31
    return-void
.end method


# virtual methods
.method public save(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/gattlib/db/LastConnection;->last:I

    .line 36
    invoke-super {p0, p1}, Lcom/roscopeco/ormdroid/Entity;->save(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    return v0
.end method
