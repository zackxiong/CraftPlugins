.class public abstract Lcom/yf/smart/weloopx/b/b/l;
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
    .line 21
    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yf/smart/weloopx/data/models/MultipleBongResult;)V
    .locals 5

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MultipleBongResult;->getDatas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/OneDayBong;

    .line 58
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/OneDayBong;->getDailyGain()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/DailyGain;

    invoke-virtual {v3, v1}, Lcom/yf/smart/weloopx/b/a;->a(Lcom/yf/smart/weloopx/data/models/DailyGain;)V

    .line 59
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/OneDayBong;->getActivity()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/b/a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/event/ActivityDataChangedEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/yf/smart/weloopx/event/ActivityDataChangedEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/yf/lib/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 63
    return-void
.end method
