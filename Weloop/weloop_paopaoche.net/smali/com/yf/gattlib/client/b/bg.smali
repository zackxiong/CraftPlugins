.class Lcom/yf/gattlib/client/b/bg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/client/b/e;

.field final synthetic b:Z

.field final synthetic c:Lcom/yf/gattlib/client/b/be;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/client/b/be;Lcom/yf/gattlib/client/b/e;Z)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/yf/gattlib/client/b/bg;->c:Lcom/yf/gattlib/client/b/be;

    iput-object p2, p0, Lcom/yf/gattlib/client/b/bg;->a:Lcom/yf/gattlib/client/b/e;

    iput-boolean p3, p0, Lcom/yf/gattlib/client/b/bg;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 124
    invoke-static {}, Lcom/yf/gattlib/client/b/be;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    monitor-enter v1

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bg;->c:Lcom/yf/gattlib/client/b/be;

    invoke-static {v0}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/be;)Lcom/yf/gattlib/client/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bg;->a:Lcom/yf/gattlib/client/b/e;

    const/4 v2, 0x2

    const/4 v3, -0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/yf/gattlib/client/b/e;->a(III[Ljava/lang/Object;)V

    .line 128
    monitor-exit v1

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bg;->c:Lcom/yf/gattlib/client/b/be;

    iget-object v2, p0, Lcom/yf/gattlib/client/b/bg;->a:Lcom/yf/gattlib/client/b/e;

    iget-boolean v3, p0, Lcom/yf/gattlib/client/b/bg;->b:Z

    invoke-static {v0, v2, v3}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/be;Lcom/yf/gattlib/client/b/e;Z)V

    .line 132
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
