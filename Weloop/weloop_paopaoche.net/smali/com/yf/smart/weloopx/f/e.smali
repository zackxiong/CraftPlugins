.class Lcom/yf/smart/weloopx/f/e;
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
.field final synthetic a:Lcom/yf/smart/weloopx/f/d$b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/yf/smart/weloopx/f/d;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/f/d;Lcom/yf/smart/weloopx/f/d$b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yf/smart/weloopx/f/e;->c:Lcom/yf/smart/weloopx/f/d;

    iput-object p2, p0, Lcom/yf/smart/weloopx/f/e;->a:Lcom/yf/smart/weloopx/f/d$b;

    iput-object p3, p0, Lcom/yf/smart/weloopx/f/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJZ)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/f/e;->c:Lcom/yf/smart/weloopx/f/d;

    invoke-static {v1}, Lcom/yf/smart/weloopx/f/d;->a(Lcom/yf/smart/weloopx/f/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Upload location info result  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload location track, fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/e;->a:Lcom/yf/smart/weloopx/f/d$b;

    invoke-interface {v0, p2}, Lcom/yf/smart/weloopx/f/d$b;->b(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public a(Lcom/b/a/d/e;)V
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
    .line 101
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/f/e;->c:Lcom/yf/smart/weloopx/f/d;

    invoke-static {v2}, Lcom/yf/smart/weloopx/f/d;->a(Lcom/yf/smart/weloopx/f/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Upload location info result  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload location track, success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 104
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 106
    const-class v2, Lcom/yf/smart/weloopx/data/models/ServerResult;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/ServerResult;

    .line 107
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/ServerResult;->getResult()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/e;->a:Lcom/yf/smart/weloopx/f/d$b;

    iget-object v1, p0, Lcom/yf/smart/weloopx/f/e;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yf/smart/weloopx/f/d$b;->c(Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/e;->a:Lcom/yf/smart/weloopx/f/d$b;

    const-string v1, "\u7f51\u7edc\u9519\u8bef"

    invoke-interface {v0, v1}, Lcom/yf/smart/weloopx/f/d$b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/e;->a:Lcom/yf/smart/weloopx/f/d$b;

    const-string v1, "\u7f51\u7edc\u9519\u8bef"

    invoke-interface {v0, v1}, Lcom/yf/smart/weloopx/f/d$b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/e;->a:Lcom/yf/smart/weloopx/f/d$b;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/f/d$b;->c()V

    .line 92
    return-void
.end method
