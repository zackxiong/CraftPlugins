.class public Lcom/yf/gattlib/h/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/h/e;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/h/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/h/f;->a:Ljava/util/List;

    .line 15
    iget-object v0, p0, Lcom/yf/gattlib/h/f;->a:Ljava/util/List;

    new-instance v1, Lcom/yf/gattlib/h/c;

    invoke-direct {v1}, Lcom/yf/gattlib/h/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/yf/gattlib/h/f;->a:Ljava/util/List;

    new-instance v1, Lcom/yf/gattlib/h/d;

    invoke-direct {v1}, Lcom/yf/gattlib/h/d;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/yf/gattlib/h/f;->a:Ljava/util/List;

    new-instance v1, Lcom/yf/gattlib/h/a;

    invoke-direct {v1}, Lcom/yf/gattlib/h/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/yf/gattlib/h/f;->a:Ljava/util/List;

    new-instance v1, Lcom/yf/gattlib/h/b;

    invoke-direct {v1}, Lcom/yf/gattlib/h/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method


# virtual methods
.method public a()Lcom/yf/gattlib/h/g;
    .locals 5

    .prologue
    .line 22
    invoke-static {}, Lcom/yf/gattlib/db/a;->a()Lcom/yf/gattlib/db/a;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/yf/gattlib/h/g;

    iget-object v2, v0, Lcom/yf/gattlib/db/a;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/yf/gattlib/db/a;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/yf/gattlib/db/a;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/yf/gattlib/db/a;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/yf/gattlib/h/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-object v1
.end method

.method public a(Lcom/yf/gattlib/h/g;)V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lcom/yf/gattlib/db/a;->a()Lcom/yf/gattlib/db/a;

    move-result-object v0

    .line 30
    iget-object v1, p1, Lcom/yf/gattlib/h/g;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/yf/gattlib/db/a;->b:Ljava/lang/String;

    .line 31
    iget-object v1, p1, Lcom/yf/gattlib/h/g;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/yf/gattlib/db/a;->a:Ljava/lang/String;

    .line 32
    iget-object v1, p1, Lcom/yf/gattlib/h/g;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/yf/gattlib/db/a;->c:Ljava/lang/String;

    .line 33
    iget-object v1, p1, Lcom/yf/gattlib/h/g;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/yf/gattlib/db/a;->d:Ljava/lang/String;

    .line 34
    invoke-virtual {v0}, Lcom/yf/gattlib/db/a;->b()V

    .line 35
    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/content/Intent;)Lcom/yf/gattlib/h/g;
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yf/gattlib/h/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/h/e;

    .line 45
    invoke-interface {v0, p1}, Lcom/yf/gattlib/h/e;->a(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-interface {v0, p1}, Lcom/yf/gattlib/h/e;->b(Landroid/content/Intent;)Lcom/yf/gattlib/h/g;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/yf/gattlib/h/f;->a()Lcom/yf/gattlib/h/g;

    move-result-object v0

    goto :goto_0
.end method
