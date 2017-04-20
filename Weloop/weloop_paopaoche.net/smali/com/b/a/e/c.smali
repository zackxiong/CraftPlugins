.class public abstract Lcom/b/a/e/c;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/e/c$a;,
        Lcom/b/a/e/c$c;,
        Lcom/b/a/e/c$b;
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
.field private static final a:Lcom/b/a/e/c$b;

.field public static final b:Ljava/util/concurrent/Executor;


# instance fields
.field private final c:Lcom/b/a/e/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/e/c$c",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile e:Z

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Lcom/b/a/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/b/a/e/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/b/a/e/c$b;-><init>(Lcom/b/a/e/d;)V

    sput-object v0, Lcom/b/a/e/c;->a:Lcom/b/a/e/c$b;

    .line 38
    new-instance v0, Lcom/b/a/e/f;

    invoke-direct {v0}, Lcom/b/a/e/f;-><init>()V

    sput-object v0, Lcom/b/a/e/c;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/e/c;->e:Z

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/b/a/e/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/b/a/e/c;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v0, Lcom/b/a/e/d;

    invoke-direct {v0, p0}, Lcom/b/a/e/d;-><init>(Lcom/b/a/e/c;)V

    iput-object v0, p0, Lcom/b/a/e/c;->c:Lcom/b/a/e/c$c;

    .line 71
    new-instance v0, Lcom/b/a/e/e;

    iget-object v1, p0, Lcom/b/a/e/c;->c:Lcom/b/a/e/c$c;

    invoke-direct {v0, p0, v1}, Lcom/b/a/e/e;-><init>(Lcom/b/a/e/c;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/b/a/e/c;->d:Ljava/util/concurrent/FutureTask;

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/b/a/e/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/b/a/e/c;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/e/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/b/a/e/c;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/b/a/e/c;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/b/a/e/c;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/b/a/e/c;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/b/a/e/c;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/b/a/e/c;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 90
    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0, p1}, Lcom/b/a/e/c;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 97
    sget-object v0, Lcom/b/a/e/c;->a:Lcom/b/a/e/c$b;

    new-instance v1, Lcom/b/a/e/c$a;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/b/a/e/c$a;-><init>(Lcom/b/a/e/c;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/b/a/e/c$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 100
    return-object p1
.end method

.method private e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/b/a/e/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0, p1}, Lcom/b/a/e/c;->a(Ljava/lang/Object;)V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-virtual {p0, p1}, Lcom/b/a/e/c;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/b/a/e/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/b/a/e/c",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/b/a/e/c;->e:Z

    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/e/c;->e:Z

    .line 309
    invoke-virtual {p0}, Lcom/b/a/e/c;->b()V

    .line 311
    iget-object v0, p0, Lcom/b/a/e/c;->c:Lcom/b/a/e/c$c;

    iput-object p2, v0, Lcom/b/a/e/c$c;->b:[Ljava/lang/Object;

    .line 312
    new-instance v0, Lcom/b/a/e/j;

    iget-object v1, p0, Lcom/b/a/e/c;->h:Lcom/b/a/e/b;

    iget-object v2, p0, Lcom/b/a/e/c;->d:Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v1, v2}, Lcom/b/a/e/j;-><init>(Lcom/b/a/e/b;Ljava/lang/Runnable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 314
    return-object p0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/b/a/e/c;->a(Z)Z

    .line 243
    return-void
.end method

.method public a(Lcom/b/a/e/b;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/b/a/e/c;->h:Lcom/b/a/e/b;

    .line 55
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/b/a/e/c;->c()V

    .line 171
    return-void
.end method

.method public final a(Z)Z
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/b/a/e/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 214
    iget-object v0, p0, Lcom/b/a/e/c;->d:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 141
    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 153
    return-void
.end method

.method protected varargs abstract c([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/b/a/e/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final varargs e([Ljava/lang/Object;)Lcom/b/a/e/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/b/a/e/c",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 290
    sget-object v0, Lcom/b/a/e/c;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/b/a/e/c;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/b/a/e/c;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs f([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/b/a/e/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    sget-object v0, Lcom/b/a/e/c;->a:Lcom/b/a/e/c$b;

    const/4 v1, 0x2

    new-instance v2, Lcom/b/a/e/c$a;

    invoke-direct {v2, p0, p1}, Lcom/b/a/e/c$a;-><init>(Lcom/b/a/e/c;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/b/a/e/c$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 359
    :cond_0
    return-void
.end method
