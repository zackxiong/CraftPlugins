.class public Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    .locals 1

    .prologue
    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$b;->a:Ljava/lang/ref/WeakReference;

    .line 850
    return-void
.end method


# virtual methods
.method public onSyncDataExitEvent(Lcom/yf/smart/weloopx/event/SyncDataExitEvent;)V
    .locals 6
    .annotation runtime Lcom/yf/lib/squareup/otto/j;
    .end annotation

    .prologue
    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onSyncDataExit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 856
    const-string v0, "onSyncDataExit"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 857
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/lib/squareup/otto/b;->b(Ljava/lang/Object;)V

    .line 858
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    .line 859
    if-nez v0, :cond_0

    .line 871
    :goto_0
    return-void

    .line 862
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/yf/smart/weloopx/c/x;->a:I

    .line 864
    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->f:Landroid/os/Handler;

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/activities/hc;

    invoke-direct {v2, p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/hc;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$b;Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onSyncDataProgressEvent(Lcom/yf/smart/weloopx/event/SyncDataProgressEvent;)V
    .locals 0
    .annotation runtime Lcom/yf/lib/squareup/otto/j;
    .end annotation

    .prologue
    .line 876
    return-void
.end method

.method public onSyncDataUploadingMsgEvent(Lcom/yf/smart/weloopx/event/SyncDataUploadingMsgEvent;)V
    .locals 2
    .annotation runtime Lcom/yf/lib/squareup/otto/j;
    .end annotation

    .prologue
    .line 880
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    .line 881
    if-nez v0, :cond_0

    .line 885
    :goto_0
    return-void

    .line 884
    :cond_0
    iget v1, p1, Lcom/yf/smart/weloopx/event/SyncDataUploadingMsgEvent;->msgId:I

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
