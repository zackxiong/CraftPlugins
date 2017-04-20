.class public Lcom/yf/lib/squareup/otto/b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/lib/squareup/otto/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lcom/yf/lib/squareup/otto/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/yf/lib/squareup/otto/f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Lcom/yf/lib/squareup/otto/k;

.field private final e:Lcom/yf/lib/squareup/otto/g;

.field private final f:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/yf/lib/squareup/otto/b$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    const-string v0, "default"

    invoke-direct {p0, v0}, Lcom/yf/lib/squareup/otto/b;-><init>(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/yf/lib/squareup/otto/k;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/yf/lib/squareup/otto/g;->a:Lcom/yf/lib/squareup/otto/g;

    invoke-direct {p0, p1, p2, v0}, Lcom/yf/lib/squareup/otto/b;-><init>(Lcom/yf/lib/squareup/otto/k;Ljava/lang/String;Lcom/yf/lib/squareup/otto/g;)V

    .line 153
    return-void
.end method

.method constructor <init>(Lcom/yf/lib/squareup/otto/k;Ljava/lang/String;Lcom/yf/lib/squareup/otto/g;)V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/squareup/otto/b;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/squareup/otto/b;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 108
    new-instance v0, Lcom/yf/lib/squareup/otto/c;

    invoke-direct {v0, p0}, Lcom/yf/lib/squareup/otto/c;-><init>(Lcom/yf/lib/squareup/otto/b;)V

    iput-object v0, p0, Lcom/yf/lib/squareup/otto/b;->f:Ljava/lang/ThreadLocal;

    .line 116
    new-instance v0, Lcom/yf/lib/squareup/otto/d;

    invoke-direct {v0, p0}, Lcom/yf/lib/squareup/otto/d;-><init>(Lcom/yf/lib/squareup/otto/b;)V

    iput-object v0, p0, Lcom/yf/lib/squareup/otto/b;->g:Ljava/lang/ThreadLocal;

    .line 469
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/squareup/otto/b;->h:Ljava/util/concurrent/ConcurrentMap;

    .line 163
    iput-object p1, p0, Lcom/yf/lib/squareup/otto/b;->d:Lcom/yf/lib/squareup/otto/k;

    .line 164
    iput-object p2, p0, Lcom/yf/lib/squareup/otto/b;->c:Ljava/lang/String;

    .line 165
    iput-object p3, p0, Lcom/yf/lib/squareup/otto/b;->e:Lcom/yf/lib/squareup/otto/g;

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/yf/lib/squareup/otto/k;->b:Lcom/yf/lib/squareup/otto/k;

    invoke-direct {p0, v0, p1}, Lcom/yf/lib/squareup/otto/b;-><init>(Lcom/yf/lib/squareup/otto/k;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method private a(Lcom/yf/lib/squareup/otto/e;Lcom/yf/lib/squareup/otto/f;)V
    .locals 4

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 247
    :try_start_0
    invoke-virtual {p2}, Lcom/yf/lib/squareup/otto/f;->c()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 251
    :goto_0
    if-nez v0, :cond_0

    .line 255
    :goto_1
    return-void

    .line 248
    :catch_0
    move-exception v1

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Producer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threw an exception."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/yf/lib/squareup/otto/b;->a(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/yf/lib/squareup/otto/b;->b(Ljava/lang/Object;Lcom/yf/lib/squareup/otto/e;)V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V
    .locals 4

    .prologue
    .line 461
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_0

    .line 463
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private d(Ljava/lang/Class;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 438
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 439
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 441
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 444
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 445
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 448
    if-eqz v0, :cond_0

    .line 449
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 452
    :cond_1
    return-object v2
.end method


# virtual methods
.method a(Ljava/lang/Class;)Lcom/yf/lib/squareup/otto/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/yf/lib/squareup/otto/f;"
        }
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Lcom/yf/lib/squareup/otto/b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/squareup/otto/f;

    return-object v0
.end method

.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 358
    iget-object v0, p0, Lcom/yf/lib/squareup/otto/b;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/yf/lib/squareup/otto/b;->g:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 365
    :cond_1
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/yf/lib/squareup/otto/b;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/squareup/otto/b$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    if-nez v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/yf/lib/squareup/otto/b;->g:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 370
    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/yf/lib/squareup/otto/b$a;->b:Lcom/yf/lib/squareup/otto/e;

    invoke-virtual {v1}, Lcom/yf/lib/squareup/otto/e;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, v0, Lcom/yf/lib/squareup/otto/b$a;->a:Ljava/lang/Object;

    iget-object v0, v0, Lcom/yf/lib/squareup/otto/b$a;->b:Lcom/yf/lib/squareup/otto/e;

    invoke-virtual {p0, v1, v0}, Lcom/yf/lib/squareup/otto/b;->b(Ljava/lang/Object;Lcom/yf/lib/squareup/otto/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 375
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yf/lib/squareup/otto/b;->g:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Object to register must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/yf/lib/squareup/otto/b;->d:Lcom/yf/lib/squareup/otto/k;

    invoke-interface {v0, p0}, Lcom/yf/lib/squareup/otto/k;->a(Lcom/yf/lib/squareup/otto/b;)V

    .line 190
    iget-object v0, p0, Lcom/yf/lib/squareup/otto/b;->e:Lcom/yf/lib/squareup/otto/g;

    invoke-interface {v0, p1}, Lcom/yf/lib/squareup/otto/g;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 191
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 193
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/lib/squareup/otto/f;

    .line 194
    iget-object v2, p0, Lcom/yf/lib/squareup/otto/b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yf/lib/squareup/otto/f;

    .line 196
    if-eqz v2, :cond_2

    .line 197
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Producer method for type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " found on type "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/yf/lib/squareup/otto/f;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", but already registered by type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/yf/lib/squareup/otto/f;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 201
    :cond_2
    iget-object v2, p0, Lcom/yf/lib/squareup/otto/b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 202
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/squareup/otto/e;

    .line 204
    invoke-direct {p0, v0, v1}, Lcom/yf/lib/squareup/otto/b;->a(Lcom/yf/lib/squareup/otto/e;Lcom/yf/lib/squareup/otto/f;)V

    goto :goto_0

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/yf/lib/squareup/otto/b;->e:Lcom/yf/lib/squareup/otto/g;

    invoke-interface {v0, p1}, Lcom/yf/lib/squareup/otto/g;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 210
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 211
    iget-object v1, p0, Lcom/yf/lib/squareup/otto/b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 212
    if-nez v1, :cond_5

    .line 214
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 215
    iget-object v1, p0, Lcom/yf/lib/squareup/otto/b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 216
    if-nez v1, :cond_5

    move-object v1, v2

    .line 220
    :cond_5
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 221
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 242
    :cond_6
    return-void

    .line 227
    :cond_7
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 228
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 229
    iget-object v3, p0, Lcom/yf/lib/squareup/otto/b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/lib/squareup/otto/f;

    .line 230
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/yf/lib/squareup/otto/f;->a()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 231
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 232
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/squareup/otto/e;

    .line 233
    invoke-virtual {v1}, Lcom/yf/lib/squareup/otto/f;->a()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 236
    invoke-virtual {v0}, Lcom/yf/lib/squareup/otto/e;->a()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 237
    invoke-direct {p0, v0, v1}, Lcom/yf/lib/squareup/otto/b;->a(Lcom/yf/lib/squareup/otto/e;Lcom/yf/lib/squareup/otto/f;)V

    goto :goto_1
.end method

.method protected a(Ljava/lang/Object;Lcom/yf/lib/squareup/otto/e;)V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/yf/lib/squareup/otto/b;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/yf/lib/squareup/otto/b$a;

    invoke-direct {v1, p1, p2}, Lcom/yf/lib/squareup/otto/b$a;-><init>(Ljava/lang/Object;Lcom/yf/lib/squareup/otto/e;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 349
    return-void
.end method

.method b(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Lcom/yf/lib/squareup/otto/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/yf/lib/squareup/otto/b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 265
    if-nez p1, :cond_0

    .line 266
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Object to unregister must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/yf/lib/squareup/otto/b;->d:Lcom/yf/lib/squareup/otto/k;

    invoke-interface {v0, p0}, Lcom/yf/lib/squareup/otto/k;->a(Lcom/yf/lib/squareup/otto/b;)V

    .line 270
    iget-object v0, p0, Lcom/yf/lib/squareup/otto/b;->e:Lcom/yf/lib/squareup/otto/g;

    invoke-interface {v0, p1}, Lcom/yf/lib/squareup/otto/g;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 271
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 272
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 273
    invoke-virtual {p0, v1}, Lcom/yf/lib/squareup/otto/b;->a(Ljava/lang/Class;)Lcom/yf/lib/squareup/otto/f;

    move-result-object v3

    .line 274
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/squareup/otto/f;

    .line 276
    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Lcom/yf/lib/squareup/otto/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/yf/lib/squareup/otto/b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/squareup/otto/f;

    invoke-virtual {v0}, Lcom/yf/lib/squareup/otto/f;->b()V

    goto :goto_0

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/yf/lib/squareup/otto/b;->e:Lcom/yf/lib/squareup/otto/g;

    invoke-interface {v0, p1}, Lcom/yf/lib/squareup/otto/g;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 286
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 287
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lcom/yf/lib/squareup/otto/b;->b(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v3

    .line 288
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 290
    if-eqz v3, :cond_3

    invoke-interface {v3, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 304
    :cond_3
    return-void

    .line 297
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/lib/squareup/otto/e;

    .line 298
    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 299
    invoke-virtual {v1}, Lcom/yf/lib/squareup/otto/e;->b()V

    goto :goto_2

    .line 302
    :cond_6
    invoke-interface {v3, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method protected b(Ljava/lang/Object;Lcom/yf/lib/squareup/otto/e;)V
    .locals 3

    .prologue
    .line 388
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/yf/lib/squareup/otto/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not dispatch event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yf/lib/squareup/otto/b;->a(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0
.end method

.method c(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lcom/yf/lib/squareup/otto/b;->h:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 426
    if-nez v0, :cond_0

    .line 427
    invoke-direct {p0, p1}, Lcom/yf/lib/squareup/otto/b;->d(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    .line 428
    iget-object v0, p0, Lcom/yf/lib/squareup/otto/b;->h:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 429
    if-nez v0, :cond_0

    move-object v0, v1

    .line 434
    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 317
    if-nez p1, :cond_0

    .line 318
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Event to post must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/yf/lib/squareup/otto/b;->d:Lcom/yf/lib/squareup/otto/k;

    invoke-interface {v0, p0}, Lcom/yf/lib/squareup/otto/k;->a(Lcom/yf/lib/squareup/otto/b;)V

    .line 322
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/lib/squareup/otto/b;->c(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    .line 324
    const/4 v0, 0x0

    .line 325
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 326
    invoke-virtual {p0, v0}, Lcom/yf/lib/squareup/otto/b;->b(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 329
    const/4 v1, 0x1

    .line 330
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/squareup/otto/e;

    .line 331
    invoke-virtual {p0, p1, v0}, Lcom/yf/lib/squareup/otto/b;->a(Ljava/lang/Object;Lcom/yf/lib/squareup/otto/e;)V

    goto :goto_1

    :cond_1
    move v0, v1

    move v1, v0

    .line 334
    goto :goto_0

    .line 336
    :cond_2
    if-nez v1, :cond_3

    instance-of v0, p1, Lcom/yf/lib/squareup/otto/DeadEvent;

    if-nez v0, :cond_3

    .line 337
    new-instance v0, Lcom/yf/lib/squareup/otto/DeadEvent;

    invoke-direct {v0, p0, p1}, Lcom/yf/lib/squareup/otto/DeadEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/yf/lib/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 340
    :cond_3
    invoke-virtual {p0}, Lcom/yf/lib/squareup/otto/b;->a()V

    .line 341
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Bus \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/lib/squareup/otto/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
