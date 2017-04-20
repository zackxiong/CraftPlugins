.class Lcom/b/a/b/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/b/c;


# direct methods
.method constructor <init>(Lcom/b/a/b/c;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/b/a/b/d;->a:Lcom/b/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    iget-object v1, p0, Lcom/b/a/b/d;->a:Lcom/b/a/b/c;

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/b/a/b/d;->a:Lcom/b/a/b/c;

    invoke-static {v0}, Lcom/b/a/b/c;->a(Lcom/b/a/b/c;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 158
    monitor-exit v1

    .line 166
    :goto_0
    return-object v3

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/b/a/b/d;->a:Lcom/b/a/b/c;

    invoke-static {v0}, Lcom/b/a/b/c;->b(Lcom/b/a/b/c;)V

    .line 161
    iget-object v0, p0, Lcom/b/a/b/d;->a:Lcom/b/a/b/c;

    invoke-static {v0}, Lcom/b/a/b/c;->c(Lcom/b/a/b/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/b/a/b/d;->a:Lcom/b/a/b/c;

    invoke-static {v0}, Lcom/b/a/b/c;->d(Lcom/b/a/b/c;)V

    .line 163
    iget-object v0, p0, Lcom/b/a/b/d;->a:Lcom/b/a/b/c;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/b/a/b/c;->a(Lcom/b/a/b/c;I)I

    .line 165
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/b/a/b/d;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
