.class public abstract Lcom/yf/smart/weloopx/b/b/e;
.super Lcom/b/a/d/a/d;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/d/a/d",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(ILjava/lang/String;Lcom/yf/smart/weloopx/data/models/Watchface;)V
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/yf/smart/weloopx/b/b/e;->a(ILjava/lang/String;Lcom/yf/smart/weloopx/data/models/Watchface;)V

    .line 35
    return-void
.end method

.method public a(Lcom/b/a/d/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/e",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 21
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v1, Lcom/yf/smart/weloopx/data/models/Watchface;

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/data/models/Watchface;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/Watchface;

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yf/smart/weloopx/b/c;->a(Ljava/util/List;)V

    .line 26
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3, v0}, Lcom/yf/smart/weloopx/b/b/e;->a(ILjava/lang/String;Lcom/yf/smart/weloopx/data/models/Watchface;)V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    const/4 v1, -0x1

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v3}, Lcom/yf/smart/weloopx/b/b/e;->a(ILjava/lang/String;Lcom/yf/smart/weloopx/data/models/Watchface;)V

    goto :goto_0
.end method
