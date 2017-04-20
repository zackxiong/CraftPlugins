.class public Lcom/yf/lib/a/b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/lib/a/b$1;,
        Lcom/yf/lib/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yf/lib/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/a/b;->a:Ljava/util/HashMap;

    .line 18
    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/lib/a/b$1;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yf/lib/a/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/yf/lib/a/b;
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/yf/lib/a/b$a;->a()Lcom/yf/lib/a/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/yf/lib/a/d;)V
    .locals 3

    .prologue
    .line 45
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/yf/lib/a/b;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/yf/lib/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/a/c;

    .line 51
    if-nez v0, :cond_2

    .line 52
    new-instance v0, Lcom/yf/lib/a/c;

    invoke-direct {v0}, Lcom/yf/lib/a/c;-><init>()V

    .line 53
    iget-object v2, p0, Lcom/yf/lib/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {v0, p2}, Lcom/yf/lib/a/c;->registerObserver(Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 24
    iget-object v1, p0, Lcom/yf/lib/a/b;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/yf/lib/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/a/c;

    .line 26
    if-nez v0, :cond_0

    .line 27
    monitor-exit v1

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {v0, p1, p2}, Lcom/yf/lib/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;Lcom/yf/lib/a/d;)V
    .locals 2

    .prologue
    .line 71
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/yf/lib/a/b;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/yf/lib/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/a/c;

    .line 77
    if-nez v0, :cond_2

    .line 78
    monitor-exit v1

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-virtual {v0, p2}, Lcom/yf/lib/a/c;->unregisterObserver(Ljava/lang/Object;)V

    goto :goto_0
.end method
