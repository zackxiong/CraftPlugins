.class Lcom/alimama/mobile/csdk/umupdate/a/d;
.super Lcom/alimama/mobile/csdk/umupdate/a/b$e;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alimama/mobile/csdk/umupdate/a/b$e",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alimama/mobile/csdk/umupdate/a/b;


# direct methods
.method constructor <init>(Lcom/alimama/mobile/csdk/umupdate/a/b;)V
    .locals 1

    .prologue
    .line 314
    iput-object p1, p0, Lcom/alimama/mobile/csdk/umupdate/a/d;->a:Lcom/alimama/mobile/csdk/umupdate/a/b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alimama/mobile/csdk/umupdate/a/b$e;-><init>(Lcom/alimama/mobile/csdk/umupdate/a/c;)V

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
    .line 316
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/d;->a:Lcom/alimama/mobile/csdk/umupdate/a/b;

    invoke-static {v0}, Lcom/alimama/mobile/csdk/umupdate/a/b;->a(Lcom/alimama/mobile/csdk/umupdate/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 318
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 320
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/d;->a:Lcom/alimama/mobile/csdk/umupdate/a/b;

    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/a/d;->a:Lcom/alimama/mobile/csdk/umupdate/a/b;

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/a/d;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/b;->a(Lcom/alimama/mobile/csdk/umupdate/a/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
