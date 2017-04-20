.class Lcom/b/a/e/i$a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/e/i;

.field private b:Lcom/b/a/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/e/a",
            "<TE;>;"
        }
    .end annotation
.end field

.field private c:Lcom/b/a/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/e/a",
            "<TE;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/b/a/e/i;)V
    .locals 1

    .prologue
    .line 502
    iput-object p1, p0, Lcom/b/a/e/i$a;->a:Lcom/b/a/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    invoke-virtual {p1}, Lcom/b/a/e/i;->a()V

    .line 505
    :try_start_0
    iget-object v0, p1, Lcom/b/a/e/i;->a:Lcom/b/a/e/a;

    iget-object v0, v0, Lcom/b/a/e/a;->a:Lcom/b/a/e/a;

    iput-object v0, p0, Lcom/b/a/e/i$a;->b:Lcom/b/a/e/a;

    .line 506
    iget-object v0, p0, Lcom/b/a/e/i$a;->b:Lcom/b/a/e/a;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/b/a/e/i$a;->b:Lcom/b/a/e/a;

    invoke-virtual {v0}, Lcom/b/a/e/a;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/e/i$a;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/e/i;->b()V

    .line 511
    return-void

    .line 509
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/b/a/e/i;->b()V

    throw v0
.end method

.method private a(Lcom/b/a/e/a;)Lcom/b/a/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/e/a",
            "<TE;>;)",
            "Lcom/b/a/e/a",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 519
    :goto_0
    iget-object v0, p1, Lcom/b/a/e/a;->a:Lcom/b/a/e/a;

    .line 520
    if-ne v0, p1, :cond_1

    .line 521
    iget-object v0, p0, Lcom/b/a/e/i$a;->a:Lcom/b/a/e/i;

    iget-object v0, v0, Lcom/b/a/e/i;->a:Lcom/b/a/e/a;

    iget-object v0, v0, Lcom/b/a/e/a;->a:Lcom/b/a/e/a;

    .line 523
    :cond_0
    return-object v0

    .line 522
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/b/a/e/a;->b()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    move-object p1, v0

    .line 525
    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/b/a/e/i$a;->b:Lcom/b/a/e/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, Lcom/b/a/e/i$a;->a:Lcom/b/a/e/i;

    invoke-virtual {v0}, Lcom/b/a/e/i;->a()V

    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/b/a/e/i$a;->b:Lcom/b/a/e/a;

    if-nez v0, :cond_0

    .line 532
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/b/a/e/i$a;->a:Lcom/b/a/e/i;

    invoke-virtual {v1}, Lcom/b/a/e/i;->b()V

    throw v0

    .line 533
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/b/a/e/i$a;->d:Ljava/lang/Object;

    .line 534
    iget-object v0, p0, Lcom/b/a/e/i$a;->b:Lcom/b/a/e/a;

    iput-object v0, p0, Lcom/b/a/e/i$a;->c:Lcom/b/a/e/a;

    .line 535
    iget-object v0, p0, Lcom/b/a/e/i$a;->b:Lcom/b/a/e/a;

    invoke-direct {p0, v0}, Lcom/b/a/e/i$a;->a(Lcom/b/a/e/a;)Lcom/b/a/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/e/i$a;->b:Lcom/b/a/e/a;

    .line 536
    iget-object v0, p0, Lcom/b/a/e/i$a;->b:Lcom/b/a/e/a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/b/a/e/i$a;->d:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    iget-object v0, p0, Lcom/b/a/e/i$a;->a:Lcom/b/a/e/i;

    invoke-virtual {v0}, Lcom/b/a/e/i;->b()V

    return-object v1

    .line 536
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/b/a/e/i$a;->b:Lcom/b/a/e/a;

    invoke-virtual {v0}, Lcom/b/a/e/a;->b()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 544
    iget-object v0, p0, Lcom/b/a/e/i$a;->c:Lcom/b/a/e/a;

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/b/a/e/i$a;->a:Lcom/b/a/e/i;

    invoke-virtual {v0}, Lcom/b/a/e/i;->a()V

    .line 548
    :try_start_0
    iget-object v2, p0, Lcom/b/a/e/i$a;->c:Lcom/b/a/e/a;

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/e/i$a;->c:Lcom/b/a/e/a;

    .line 550
    iget-object v0, p0, Lcom/b/a/e/i$a;->a:Lcom/b/a/e/i;

    iget-object v1, v0, Lcom/b/a/e/i;->a:Lcom/b/a/e/a;

    iget-object v0, v1, Lcom/b/a/e/a;->a:Lcom/b/a/e/a;

    .line 551
    :goto_0
    if-eqz v0, :cond_1

    .line 553
    if-ne v0, v2, :cond_2

    .line 554
    iget-object v2, p0, Lcom/b/a/e/i$a;->a:Lcom/b/a/e/i;

    invoke-virtual {v2, v0, v1}, Lcom/b/a/e/i;->a(Lcom/b/a/e/a;Lcom/b/a/e/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/b/a/e/i$a;->a:Lcom/b/a/e/i;

    invoke-virtual {v0}, Lcom/b/a/e/i;->b()V

    .line 561
    return-void

    .line 552
    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/b/a/e/a;->a:Lcom/b/a/e/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    .line 559
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/b/a/e/i$a;->a:Lcom/b/a/e/i;

    invoke-virtual {v1}, Lcom/b/a/e/i;->b()V

    throw v0
.end method
