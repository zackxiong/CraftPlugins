.class Lcom/yf/gattlib/client/b/bh;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/client/b/e;

.field final synthetic b:Lcom/yf/gattlib/client/b/e;

.field final synthetic c:I

.field final synthetic d:Lcom/yf/gattlib/client/b/be;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/client/b/be;Lcom/yf/gattlib/client/b/e;Lcom/yf/gattlib/client/b/e;I)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/yf/gattlib/client/b/bh;->d:Lcom/yf/gattlib/client/b/be;

    iput-object p2, p0, Lcom/yf/gattlib/client/b/bh;->a:Lcom/yf/gattlib/client/b/e;

    iput-object p3, p0, Lcom/yf/gattlib/client/b/bh;->b:Lcom/yf/gattlib/client/b/e;

    iput p4, p0, Lcom/yf/gattlib/client/b/bh;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 148
    invoke-static {}, Lcom/yf/gattlib/client/b/be;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bh;->a:Lcom/yf/gattlib/client/b/e;

    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bh;->b:Lcom/yf/gattlib/client/b/e;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bh;->b:Lcom/yf/gattlib/client/b/e;

    const/4 v2, 0x2

    iget v3, p0, Lcom/yf/gattlib/client/b/bh;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/yf/gattlib/client/b/e;->a(III[Ljava/lang/Object;)V

    .line 157
    :cond_0
    monitor-exit v1

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bh;->a:Lcom/yf/gattlib/client/b/e;

    const/4 v2, 0x2

    iget v3, p0, Lcom/yf/gattlib/client/b/bh;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/yf/gattlib/client/b/e;->a(III[Ljava/lang/Object;)V

    .line 161
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
