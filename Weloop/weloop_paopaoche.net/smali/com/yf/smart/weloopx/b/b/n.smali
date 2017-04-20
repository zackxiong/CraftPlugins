.class public abstract Lcom/yf/smart/weloopx/b/b/n;
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


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/yf/smart/weloopx/b/b/n;->a:I

    .line 20
    return-void
.end method

.method public final a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0, p2}, Lcom/yf/smart/weloopx/b/b/n;->b(Ljava/lang/String;)V

    .line 37
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
    .line 24
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 26
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v2, Lcom/yf/smart/weloopx/data/RankingResult;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/RankingResult;

    .line 27
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v1

    iget v2, p0, Lcom/yf/smart/weloopx/b/b/n;->a:I

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/RankingResult;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yf/smart/weloopx/b/a;->a(ILjava/util/List;)V

    .line 28
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/b/b/n;->d()V

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/b/b/n;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract d()V
.end method
