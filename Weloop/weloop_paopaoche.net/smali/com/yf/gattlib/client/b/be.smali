.class public Lcom/yf/gattlib/client/b/be;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/client/b/be$a;,
        Lcom/yf/gattlib/client/b/be$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/yf/gattlib/p/j;

.field private static final b:Ljava/util/concurrent/ExecutorService;

.field private static final c:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private d:Lcom/yf/gattlib/client/b/e;

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yf/gattlib/client/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/yf/gattlib/client/b/ai;

.field private final g:Lcom/yf/gattlib/client/b/be$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "time"

    invoke-static {v0}, Lcom/yf/gattlib/p/j;->a(Ljava/lang/String;)Lcom/yf/gattlib/p/j;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/client/b/be;->a:Lcom/yf/gattlib/p/j;

    .line 70
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/client/b/be;->b:Ljava/util/concurrent/ExecutorService;

    .line 71
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/client/b/be;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/client/b/be;->e:Landroid/util/SparseArray;

    .line 74
    new-instance v0, Lcom/yf/gattlib/client/b/ai;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/client/b/ai;-><init>(Lcom/yf/gattlib/client/b/be;)V

    iput-object v0, p0, Lcom/yf/gattlib/client/b/be;->f:Lcom/yf/gattlib/client/b/ai;

    .line 98
    new-instance v0, Lcom/yf/gattlib/client/b/bf;

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/yf/gattlib/client/b/bf;-><init>(Lcom/yf/gattlib/client/b/be;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/yf/gattlib/client/b/be;->g:Lcom/yf/gattlib/client/b/be$b;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/gattlib/client/b/bf;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/be;-><init>()V

    return-void
.end method

.method public static a()Lcom/yf/gattlib/client/b/be;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/yf/gattlib/client/b/be$a;->a:Lcom/yf/gattlib/client/b/be;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/gattlib/client/b/be;)Lcom/yf/gattlib/client/b/e;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yf/gattlib/client/b/be;->d:Lcom/yf/gattlib/client/b/e;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/gattlib/client/b/be;Lcom/yf/gattlib/client/b/e;Z)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/yf/gattlib/client/b/be;->b(Lcom/yf/gattlib/client/b/e;Z)V

    return-void
.end method

.method static synthetic b(Lcom/yf/gattlib/client/b/be;)Lcom/yf/gattlib/client/b/ai;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yf/gattlib/client/b/be;->f:Lcom/yf/gattlib/client/b/ai;

    return-object v0
.end method

.method private b(Lcom/yf/gattlib/client/b/e;Z)V
    .locals 4

    .prologue
    .line 193
    :try_start_0
    const-string v0, "TransactionContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    .line 195
    if-nez v0, :cond_0

    .line 196
    const/4 v0, -0x5

    invoke-virtual {p1, v0}, Lcom/yf/gattlib/client/b/e;->a(I)V

    .line 220
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    const/16 v0, -0x10

    invoke-virtual {p1, v0}, Lcom/yf/gattlib/client/b/e;->a(I)V
    :try_end_0
    .catch Lcom/yf/gattlib/e/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/e;I)V

    goto :goto_0

    .line 205
    :cond_1
    if-eqz p2, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->q()Z

    move-result v0

    if-nez v0, :cond_2

    .line 206
    const/16 v0, -0xf

    invoke-virtual {p1, v0}, Lcom/yf/gattlib/client/b/e;->a(I)V

    goto :goto_0

    .line 210
    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/yf/gattlib/client/b/e;->a(III[Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/yf/gattlib/client/b/be;->g:Lcom/yf/gattlib/client/b/be$b;

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/be;->b(Lcom/yf/gattlib/client/b/be$b;)V

    .line 212
    iget-object v0, p0, Lcom/yf/gattlib/client/b/be;->g:Lcom/yf/gattlib/client/b/be$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransactionContext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yf/gattlib/client/b/e;->d()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/yf/gattlib/client/b/be$b;->b(Ljava/lang/String;J)V

    .line 214
    iget-object v0, p0, Lcom/yf/gattlib/client/b/be;->g:Lcom/yf/gattlib/client/b/be$b;

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/be$b;)V

    .line 215
    invoke-virtual {p1}, Lcom/yf/gattlib/client/b/e;->b()V

    .line 216
    iput-object p1, p0, Lcom/yf/gattlib/client/b/be;->d:Lcom/yf/gattlib/client/b/e;
    :try_end_1
    .catch Lcom/yf/gattlib/e/b; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic d()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/yf/gattlib/client/b/be;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic e()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/yf/gattlib/client/b/be;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/yf/gattlib/client/b/be$b;)V
    .locals 4

    .prologue
    .line 91
    sget-object v0, Lcom/yf/gattlib/client/b/be;->a:Lcom/yf/gattlib/p/j;

    invoke-virtual {p1}, Lcom/yf/gattlib/client/b/be$b;->a()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/yf/gattlib/p/j;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    return-void
.end method

.method public final a(Lcom/yf/gattlib/client/b/e;)V
    .locals 5

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/yf/gattlib/client/b/e;->a()[I

    move-result-object v1

    .line 107
    if-nez v1, :cond_1

    array-length v0, v1

    if-gtz v0, :cond_1

    .line 114
    :cond_0
    return-void

    .line 111
    :cond_1
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 112
    iget-object v4, p0, Lcom/yf/gattlib/client/b/be;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/yf/gattlib/client/b/e;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 138
    iget-object v1, p0, Lcom/yf/gattlib/client/b/be;->g:Lcom/yf/gattlib/client/b/be$b;

    invoke-virtual {p0, v1}, Lcom/yf/gattlib/client/b/be;->b(Lcom/yf/gattlib/client/b/be$b;)V

    .line 140
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/yf/gattlib/client/b/be;->d:Lcom/yf/gattlib/client/b/e;

    if-ne p1, v1, :cond_1

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/yf/gattlib/client/b/be;->d:Lcom/yf/gattlib/client/b/e;

    .line 142
    iput-object v0, p0, Lcom/yf/gattlib/client/b/be;->d:Lcom/yf/gattlib/client/b/e;

    move-object v0, v1

    .line 145
    :cond_1
    sget-object v1, Lcom/yf/gattlib/client/b/be;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/yf/gattlib/client/b/bh;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/yf/gattlib/client/b/bh;-><init>(Lcom/yf/gattlib/client/b/be;Lcom/yf/gattlib/client/b/e;Lcom/yf/gattlib/client/b/e;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method public final a(Lcom/yf/gattlib/client/b/e;Z)V
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/yf/gattlib/client/b/be;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/yf/gattlib/client/b/bg;

    invoke-direct {v1, p0, p1, p2}, Lcom/yf/gattlib/client/b/bg;-><init>(Lcom/yf/gattlib/client/b/be;Lcom/yf/gattlib/client/b/e;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public a(Lcom/yf/gattlib/client/b/e;[BII)V
    .locals 7

    .prologue
    .line 225
    sget-object v6, Lcom/yf/gattlib/client/b/be;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/yf/gattlib/client/b/bi;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/yf/gattlib/client/b/bi;-><init>(Lcom/yf/gattlib/client/b/be;[BIILcom/yf/gattlib/client/b/e;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method public final varargs declared-synchronized a([B[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/yf/gattlib/client/b/be;->c:Ljava/util/concurrent/ExecutorService;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 168
    :try_start_1
    iget-object v0, p0, Lcom/yf/gattlib/client/b/be;->d:Lcom/yf/gattlib/client/b/e;

    if-nez v0, :cond_2

    .line 169
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 170
    if-gez v0, :cond_0

    .line 171
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :goto_0
    monitor-exit p0

    return-void

    .line 173
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/yf/gattlib/client/b/be;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/client/b/e;

    .line 174
    if-nez v0, :cond_1

    .line 175
    monitor-exit v1

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 167
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 177
    :cond_1
    const/4 v2, 0x1

    :try_start_4
    invoke-direct {p0, v0, v2}, Lcom/yf/gattlib/client/b/be;->b(Lcom/yf/gattlib/client/b/e;Z)V

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/yf/gattlib/client/b/be;->d:Lcom/yf/gattlib/client/b/e;

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/yf/gattlib/client/b/be;->d:Lcom/yf/gattlib/client/b/e;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 183
    :try_start_5
    invoke-virtual {v0, p1, p2}, Lcom/yf/gattlib/client/b/e;->a([B[Ljava/lang/Object;)V
    :try_end_5
    .catch Lcom/yf/gattlib/e/b; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 188
    :cond_3
    :goto_1
    :try_start_6
    monitor-exit v1

    goto :goto_0

    .line 184
    :catch_0
    move-exception v2

    .line 185
    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/e;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/yf/gattlib/client/b/b;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/e;)V

    .line 78
    new-instance v0, Lcom/yf/gattlib/client/b/z;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/z;-><init>()V

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/e;)V

    .line 79
    new-instance v0, Lcom/yf/gattlib/client/b/ae;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/ae;-><init>()V

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/e;)V

    .line 80
    new-instance v0, Lcom/yf/gattlib/client/b/k;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/k;-><init>()V

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/e;)V

    .line 81
    new-instance v0, Lcom/yf/gattlib/client/b/ac;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/ac;-><init>()V

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/e;)V

    .line 82
    invoke-static {}, Lcom/yf/gattlib/client/f;->a()Lcom/yf/gattlib/client/f;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/b/be;->f:Lcom/yf/gattlib/client/b/ai;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/f;->a(Lcom/yf/gattlib/client/a;)V

    .line 83
    return-void
.end method

.method public final b(Lcom/yf/gattlib/client/b/be$b;)V
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/yf/gattlib/client/b/be;->a:Lcom/yf/gattlib/p/j;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/p/j;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public final b(Lcom/yf/gattlib/client/b/e;)V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/e;Z)V

    .line 118
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/e;I)V

    .line 87
    return-void
.end method
