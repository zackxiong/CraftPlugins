.class Lcom/alimama/mobile/csdk/umupdate/a/b$c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alimama/mobile/csdk/umupdate/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b$c;->a:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alimama/mobile/csdk/umupdate/a/c;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/alimama/mobile/csdk/umupdate/a/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized a()V
    .locals 2

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b$c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b$c;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/a/b$c;->b:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_0
    monitor-exit p0

    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b$c;->a:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/alimama/mobile/csdk/umupdate/a/f;

    invoke-direct {v1, p0, p1}, Lcom/alimama/mobile/csdk/umupdate/a/f;-><init>(Lcom/alimama/mobile/csdk/umupdate/a/b$c;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b$c;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/alimama/mobile/csdk/umupdate/a/b$c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :cond_0
    monitor-exit p0

    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
