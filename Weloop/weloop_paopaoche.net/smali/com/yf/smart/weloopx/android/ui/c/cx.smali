.class Lcom/yf/smart/weloopx/android/ui/c/cx;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/event/SyncDataExitEvent;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/c/cw;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/cw;Lcom/yf/smart/weloopx/event/SyncDataExitEvent;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/cx;->b:Lcom/yf/smart/weloopx/android/ui/c/cw;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/c/cx;->a:Lcom/yf/smart/weloopx/event/SyncDataExitEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cx;->b:Lcom/yf/smart/weloopx/android/ui/c/cw;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/cx;->a:Lcom/yf/smart/weloopx/event/SyncDataExitEvent;

    iget v1, v1, Lcom/yf/smart/weloopx/event/SyncDataExitEvent;->titleId:I

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/cw;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cx;->a:Lcom/yf/smart/weloopx/event/SyncDataExitEvent;

    iget v0, v0, Lcom/yf/smart/weloopx/event/SyncDataExitEvent;->index:I

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cx;->a:Lcom/yf/smart/weloopx/event/SyncDataExitEvent;

    iget-object v0, v0, Lcom/yf/smart/weloopx/event/SyncDataExitEvent;->msg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/cx;->a:Lcom/yf/smart/weloopx/event/SyncDataExitEvent;

    iget-object v2, v2, Lcom/yf/smart/weloopx/event/SyncDataExitEvent;->msg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/cx;->b:Lcom/yf/smart/weloopx/android/ui/c/cw;

    invoke-virtual {v2, v0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->a_(Ljava/lang/String;)V

    .line 86
    :cond_0
    const-string v2, "SyncDataFragment"

    invoke-static {v2, v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cx;->b:Lcom/yf/smart/weloopx/android/ui/c/cw;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->a(Lcom/yf/smart/weloopx/android/ui/c/cw;)Lcom/yf/smart/weloopx/android/ui/c/cw$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cx;->b:Lcom/yf/smart/weloopx/android/ui/c/cw;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->a(Lcom/yf/smart/weloopx/android/ui/c/cw;)Lcom/yf/smart/weloopx/android/ui/c/cw$a;

    move-result-object v0

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/cx;->a:Lcom/yf/smart/weloopx/event/SyncDataExitEvent;

    iget v2, v2, Lcom/yf/smart/weloopx/event/SyncDataExitEvent;->index:I

    invoke-interface {v0, v2, v1}, Lcom/yf/smart/weloopx/android/ui/c/cw$a;->a(ILjava/lang/String;)V

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cx;->b:Lcom/yf/smart/weloopx/android/ui/c/cw;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->b()V

    .line 94
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
