.class Lcom/yf/gattlib/http/afinal/core/AsyncTask$SerialExecutor;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/http/afinal/core/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerialExecutor"
.end annotation


# instance fields
.field mActive:Ljava/lang/Runnable;

.field final mTasks:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yf/gattlib/http/afinal/core/ArrayDeque",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    invoke-direct {v0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$SerialExecutor;->mTasks:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/gattlib/http/afinal/core/AsyncTask$1;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/core/AsyncTask$SerialExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$SerialExecutor;->mTasks:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    new-instance v1, Lcom/yf/gattlib/http/afinal/core/AsyncTask$SerialExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/yf/gattlib/http/afinal/core/AsyncTask$SerialExecutor$1;-><init>(Lcom/yf/gattlib/http/afinal/core/AsyncTask$SerialExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/core/AsyncTask$SerialExecutor;->scheduleNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized scheduleNext()V
    .locals 2

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$SerialExecutor;->mTasks:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
