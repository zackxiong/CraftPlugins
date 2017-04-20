.class Lcom/yf/smart/weloopx/f/g;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/b/a/d/e;

.field final synthetic b:Lcom/yf/smart/weloopx/f/f;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/f/f;Lcom/b/a/d/e;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/yf/smart/weloopx/f/g;->b:Lcom/yf/smart/weloopx/f/f;

    iput-object p2, p0, Lcom/yf/smart/weloopx/f/g;->a:Lcom/b/a/d/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/g;->a:Lcom/b/a/d/e;

    iget-object v0, v0, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/f/g;->b:Lcom/yf/smart/weloopx/f/f;

    iget-object v2, v2, Lcom/yf/smart/weloopx/f/f;->b:Lcom/yf/smart/weloopx/f/d;

    invoke-static {v2}, Lcom/yf/smart/weloopx/f/d;->a(Lcom/yf/smart/weloopx/f/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Download ori location result  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download location track, success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 170
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 174
    const-class v2, Lcom/yf/smart/weloopx/data/models/TrajectoryResponse;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/TrajectoryResponse;

    .line 175
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/TrajectoryResponse;->getDays()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/yf/smart/weloopx/f/g;->b:Lcom/yf/smart/weloopx/f/f;

    iget-object v1, v1, Lcom/yf/smart/weloopx/f/f;->b:Lcom/yf/smart/weloopx/f/d;

    invoke-static {v1}, Lcom/yf/smart/weloopx/f/d;->b(Lcom/yf/smart/weloopx/f/d;)Lcom/yf/smart/weloopx/g/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/g/j;->a(Lcom/yf/smart/weloopx/data/models/TrajectoryResponse;)V

    .line 177
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/TrajectoryResponse;->getDays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 179
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/g;->b:Lcom/yf/smart/weloopx/f/f;

    iget-object v0, v0, Lcom/yf/smart/weloopx/f/f;->a:Lcom/yf/smart/weloopx/f/d$a;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/f/d$a;->b()V

    .line 186
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/g;->b:Lcom/yf/smart/weloopx/f/f;

    iget-object v0, v0, Lcom/yf/smart/weloopx/f/f;->a:Lcom/yf/smart/weloopx/f/d$a;

    iget-object v1, p0, Lcom/yf/smart/weloopx/f/g;->b:Lcom/yf/smart/weloopx/f/f;

    iget-object v1, v1, Lcom/yf/smart/weloopx/f/f;->b:Lcom/yf/smart/weloopx/f/d;

    invoke-static {v1}, Lcom/yf/smart/weloopx/f/d;->c(Lcom/yf/smart/weloopx/f/d;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700d9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yf/smart/weloopx/f/d$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/g;->b:Lcom/yf/smart/weloopx/f/f;

    iget-object v0, v0, Lcom/yf/smart/weloopx/f/f;->a:Lcom/yf/smart/weloopx/f/d$a;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/yf/smart/weloopx/f/d$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
