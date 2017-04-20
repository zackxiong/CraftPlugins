.class public abstract Lcom/yf/gattlib/http/afinal/core/AsyncTask;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/http/afinal/core/AsyncTask$4;,
        Lcom/yf/gattlib/http/afinal/core/AsyncTask$AsyncTaskResult;,
        Lcom/yf/gattlib/http/afinal/core/AsyncTask$WorkerRunnable;,
        Lcom/yf/gattlib/http/afinal/core/AsyncTask$InternalHandler;,
        Lcom/yf/gattlib/http/afinal/core/AsyncTask$Status;,
        Lcom/yf/gattlib/http/afinal/core/AsyncTask$SerialExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field public static final DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lcom/yf/gattlib/http/afinal/core/AsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/yf/gattlib/http/afinal/core/AsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/yf/gattlib/http/afinal/core/AsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yf/gattlib/http/afinal/core/AsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 39
    new-instance v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$1;

    invoke-direct {v0}, Lcom/yf/gattlib/http/afinal/core/AsyncTask$1;-><init>()V

    sput-object v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 48
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 53
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 62
    new-instance v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$SerialExecutor;

    invoke-direct {v0, v10}, Lcom/yf/gattlib/http/afinal/core/AsyncTask$SerialExecutor;-><init>(Lcom/yf/gattlib/http/afinal/core/AsyncTask$1;)V

    sput-object v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 64
    const/4 v0, 0x3

    sget-object v1, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 69
    new-instance v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$InternalHandler;

    invoke-direct {v0, v10}, Lcom/yf/gattlib/http/afinal/core/AsyncTask$InternalHandler;-><init>(Lcom/yf/gattlib/http/afinal/core/AsyncTask$1;)V

    sput-object v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->sHandler:Lcom/yf/gattlib/http/afinal/core/AsyncTask$InternalHandler;

    .line 71
    sget-object v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$Status;->PENDING:Lcom/yf/gattlib/http/afinal/core/AsyncTask$Status;

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->mStatus:Lcom/yf/gattlib/http/afinal/core/AsyncTask$Status;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 139
    new-instance v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$2;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/http/afinal/core/AsyncTask$2;-><init>(Lcom/yf/gattlib/http/afinal/core/AsyncTask;)V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->mWorker:Lcom/yf/gattlib/http/afinal/core/AsyncTask$WorkerRunnable;

    .line 149
    new-instance v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$3;

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->mWorker:Lcom/yf/gattlib/http/afinal/core/AsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/yf/gattlib/http/afinal/core/AsyncTask$3;-><init>(Lcom/yf/gattlib/http/afinal/core/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 164
    return-void
.end method

.method static synthetic access$300(Lcom/yf/gattlib/http/afinal/core/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yf/gattlib/http/afinal/core/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/yf/gattlib/http/afinal/core/AsyncTask;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/yf/gattlib/http/afinal/core/AsyncTask;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 459
    sget-object v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 460
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 489
    :goto_0
    sget-object v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$Status;->FINISHED:Lcom/yf/gattlib/http/afinal/core/AsyncTask$Status;

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->mStatus:Lcom/yf/gattlib/http/afinal/core/AsyncTask$Status;

    .line 490
    return-void

    .line 487
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->sHandler:Lcom/yf/gattlib/http/afinal/core/AsyncTask$InternalHandler;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/core/AsyncTask$InternalHandler;->getLooper()Landroid/os/Looper;

    .line 128
    return-void
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 175
    sget-object v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->sHandler:Lcom/yf/gattlib/http/afinal/core/AsyncTask$InternalHandler;

    new-instance v1, Lcom/yf/gattlib/http/afinal/core/AsyncTask$AsyncTaskResult;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/yf/gattlib/http/afinal/core/AsyncTask$AsyncTaskResult;-><init>(Lcom/yf/gattlib/http/afinal/core/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/yf/gattlib/http/afinal/core/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 178
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 168
    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 132
    sput-object p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 133
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 322
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/core/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/yf/gattlib/http/afinal/core/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 389
    sget-object v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/core/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/core/AsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/yf/gattlib/http/afinal/core/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->mStatus:Lcom/yf/gattlib/http/afinal/core/AsyncTask$Status;

    sget-object v1, Lcom/yf/gattlib/http/afinal/core/AsyncTask$Status;->PENDING:Lcom/yf/gattlib/http/afinal/core/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 429
    sget-object v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$4;->$SwitchMap$com$yf$gattlib$http$afinal$core$AsyncTask$Status:[I

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->mStatus:Lcom/yf/gattlib/http/afinal/core/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/yf/gattlib/http/afinal/core/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 440
    :cond_0
    sget-object v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$Status;->RUNNING:Lcom/yf/gattlib/http/afinal/core/AsyncTask$Status;

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->mStatus:Lcom/yf/gattlib/http/afinal/core/AsyncTask$Status;

    .line 442
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->onPreExecute()V

    .line 444
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->mWorker:Lcom/yf/gattlib/http/afinal/core/AsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 445
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 447
    return-object p0

    .line 431
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/yf/gattlib/http/afinal/core/AsyncTask$Status;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->mStatus:Lcom/yf/gattlib/http/afinal/core/AsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->onCancelled()V

    .line 260
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 230
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 242
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    sget-object v0, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->sHandler:Lcom/yf/gattlib/http/afinal/core/AsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/yf/gattlib/http/afinal/core/AsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/yf/gattlib/http/afinal/core/AsyncTask$AsyncTaskResult;-><init>(Lcom/yf/gattlib/http/afinal/core/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/http/afinal/core/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 481
    :cond_0
    return-void
.end method
