.class public Lcom/yf/gattlib/db/WhiteApp;
.super Lcom/roscopeco/ormdroid/Entity;
.source "ProGuard"


# instance fields
.field public id:I

.field public pkg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/roscopeco/ormdroid/Entity;-><init>()V

    return-void
.end method

.method public static addWhiteApp(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 13
    const-class v0, Lcom/yf/gattlib/db/WhiteApp;

    invoke-static {v0}, Lcom/yf/gattlib/db/WhiteApp;->query(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    const-string v1, "pkg"

    invoke-static {v1, p0}, Lcom/roscopeco/ormdroid/Query;->eql(Ljava/lang/String;Ljava/lang/Object;)Lcom/roscopeco/ormdroid/Query$SQLExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roscopeco/ormdroid/Query;->where(Lcom/roscopeco/ormdroid/Query$SQLExpression;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roscopeco/ormdroid/Query;->execute()Lcom/roscopeco/ormdroid/Entity;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/db/WhiteApp;

    .line 14
    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/yf/gattlib/db/WhiteApp;

    invoke-direct {v0}, Lcom/yf/gattlib/db/WhiteApp;-><init>()V

    .line 16
    iput-object p0, v0, Lcom/yf/gattlib/db/WhiteApp;->pkg:Ljava/lang/String;

    .line 17
    invoke-virtual {v0}, Lcom/yf/gattlib/db/WhiteApp;->save()I

    .line 19
    :cond_0
    return-void
.end method

.method public static obtainAllWhiteApp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/db/WhiteApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    const-class v0, Lcom/yf/gattlib/db/WhiteApp;

    invoke-static {v0}, Lcom/yf/gattlib/db/WhiteApp;->query(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roscopeco/ormdroid/Query;->executeMulti()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static removeWhiteApp(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 22
    const-class v0, Lcom/yf/gattlib/db/WhiteApp;

    invoke-static {v0}, Lcom/yf/gattlib/db/WhiteApp;->query(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    const-string v1, "pkg"

    invoke-static {v1, p0}, Lcom/roscopeco/ormdroid/Query;->eql(Ljava/lang/String;Ljava/lang/Object;)Lcom/roscopeco/ormdroid/Query$SQLExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roscopeco/ormdroid/Query;->where(Lcom/roscopeco/ormdroid/Query$SQLExpression;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roscopeco/ormdroid/Query;->execute()Lcom/roscopeco/ormdroid/Entity;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/db/WhiteApp;

    .line 23
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/yf/gattlib/db/WhiteApp;->delete()V

    .line 26
    :cond_0
    return-void
.end method
