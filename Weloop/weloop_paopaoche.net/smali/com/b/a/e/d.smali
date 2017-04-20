.class Lcom/b/a/e/d;
.super Lcom/b/a/e/c$c;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/e/c$c",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/e/c;


# direct methods
.method constructor <init>(Lcom/b/a/e/c;)V
    .locals 1

    .prologue
    .line 61
    iput-object p1, p0, Lcom/b/a/e/d;->a:Lcom/b/a/e/c;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/a/e/c$c;-><init>(Lcom/b/a/e/d;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/b/a/e/d;->a:Lcom/b/a/e/c;

    invoke-static {v0}, Lcom/b/a/e/c;->a(Lcom/b/a/e/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 65
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 67
    iget-object v0, p0, Lcom/b/a/e/d;->a:Lcom/b/a/e/c;

    iget-object v1, p0, Lcom/b/a/e/d;->a:Lcom/b/a/e/c;

    iget-object v2, p0, Lcom/b/a/e/d;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/b/a/e/c;->c([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/e/c;->a(Lcom/b/a/e/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
