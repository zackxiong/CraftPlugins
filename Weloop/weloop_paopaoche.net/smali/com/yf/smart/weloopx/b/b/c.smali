.class public abstract Lcom/yf/smart/weloopx/b/b/c;
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
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    .line 20
    const-string v0, "CalorieStatisticsCallback"

    iput-object v0, p0, Lcom/yf/smart/weloopx/b/b/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0, p2}, Lcom/yf/smart/weloopx/b/b/c;->b(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public final a(Lcom/b/a/d/e;)V
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
    .line 28
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/b/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u4e0b\u8f7d\u7edf\u8ba1\u6570\u636e\u7ed3\u679c = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 31
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v2, Lcom/yf/smart/weloopx/data/models/CalorieStatisticsResult;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/CalorieStatisticsResult;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download calorie statistics result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 33
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/CalorieStatisticsResult;->getDays()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/b/a;->c(Ljava/util/List;)V

    .line 34
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/CalorieStatisticsResult;->getMaxCalorie()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/yf/smart/weloopx/b/a;->a(D)V

    .line 35
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/b/b/c;->d()V

    .line 44
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    const-string v0, "empty result"

    .line 41
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download calorie statistics result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/b/b/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract d()V
.end method
