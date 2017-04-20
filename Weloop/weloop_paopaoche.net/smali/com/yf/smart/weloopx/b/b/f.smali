.class public abstract Lcom/yf/smart/weloopx/b/b/f;
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
    .line 13
    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p0, p2}, Lcom/yf/smart/weloopx/b/b/f;->b(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public final a(Lcom/b/a/d/e;)V
    .locals 3
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
    .line 19
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v1, Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;

    .line 22
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;->getDataList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/b/c;->a(Ljava/util/List;)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/b/b/f;->a(Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;)V

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/b/b/f;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract a(Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;)V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method
