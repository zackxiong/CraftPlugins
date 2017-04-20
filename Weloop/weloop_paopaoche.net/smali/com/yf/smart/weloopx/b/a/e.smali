.class Lcom/yf/smart/weloopx/b/a/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/d/b$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/b/a/d;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/b/a/d;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yf/smart/weloopx/b/a/e;->a:Lcom/yf/smart/weloopx/b/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/e;->a:Lcom/yf/smart/weloopx/b/a/d;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/a/d;->k()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/yf/smart/weloopx/b/a/e;->a:Lcom/yf/smart/weloopx/b/a/d;

    iget-object v2, p0, Lcom/yf/smart/weloopx/b/a/e;->a:Lcom/yf/smart/weloopx/b/a/d;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/a/d;->j()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/yf/smart/weloopx/b/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/e;->a:Lcom/yf/smart/weloopx/b/a/d;

    invoke-static {v0}, Lcom/yf/smart/weloopx/b/a/d;->a(Lcom/yf/smart/weloopx/b/a/d;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/e;->a:Lcom/yf/smart/weloopx/b/a/d;

    invoke-static {v0}, Lcom/yf/smart/weloopx/b/a/d;->a(Lcom/yf/smart/weloopx/b/a/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/e;->a:Lcom/yf/smart/weloopx/b/a/d;

    invoke-static {v0}, Lcom/yf/smart/weloopx/b/a/d;->a(Lcom/yf/smart/weloopx/b/a/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/d/b$a;

    invoke-interface {v0}, Lcom/yf/gattlib/d/b$a;->a()V

    .line 64
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 67
    :cond_1
    monitor-exit v2

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/e;->a:Lcom/yf/smart/weloopx/b/a/d;

    invoke-static {v0}, Lcom/yf/smart/weloopx/b/a/d;->a(Lcom/yf/smart/weloopx/b/a/d;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/e;->a:Lcom/yf/smart/weloopx/b/a/d;

    invoke-static {v0}, Lcom/yf/smart/weloopx/b/a/d;->a(Lcom/yf/smart/weloopx/b/a/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/e;->a:Lcom/yf/smart/weloopx/b/a/d;

    invoke-static {v0}, Lcom/yf/smart/weloopx/b/a/d;->a(Lcom/yf/smart/weloopx/b/a/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/d/b$a;

    invoke-interface {v0, p1, p2}, Lcom/yf/gattlib/d/b$a;->a(Ljava/lang/String;Z)V

    .line 51
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 54
    :cond_0
    monitor-exit v2

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
