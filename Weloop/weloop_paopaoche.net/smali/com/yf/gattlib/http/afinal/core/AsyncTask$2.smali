.class Lcom/yf/gattlib/http/afinal/core/AsyncTask$2;
.super Lcom/yf/gattlib/http/afinal/core/AsyncTask$WorkerRunnable;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yf/gattlib/http/afinal/core/AsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yf/gattlib/http/afinal/core/AsyncTask;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/http/afinal/core/AsyncTask;)V
    .locals 1

    .prologue
    .line 139
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$2;->this$0:Lcom/yf/gattlib/http/afinal/core/AsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/core/AsyncTask$WorkerRunnable;-><init>(Lcom/yf/gattlib/http/afinal/core/AsyncTask$1;)V

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
    .line 141
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$2;->this$0:Lcom/yf/gattlib/http/afinal/core/AsyncTask;

    # getter for: Lcom/yf/gattlib/http/afinal/core/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->access$300(Lcom/yf/gattlib/http/afinal/core/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 145
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$2;->this$0:Lcom/yf/gattlib/http/afinal/core/AsyncTask;

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$2;->this$0:Lcom/yf/gattlib/http/afinal/core/AsyncTask;

    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    # invokes: Lcom/yf/gattlib/http/afinal/core/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->access$400(Lcom/yf/gattlib/http/afinal/core/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
