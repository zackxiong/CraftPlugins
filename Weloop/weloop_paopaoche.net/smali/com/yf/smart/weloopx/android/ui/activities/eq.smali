.class Lcom/yf/smart/weloopx/android/ui/activities/eq;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/el;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/el;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/eq;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 559
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/eq;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    monitor-enter v1

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/eq;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->i(Lcom/yf/smart/weloopx/android/ui/activities/el;)Lcom/yf/smart/weloopx/android/ui/c/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/eq;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->i(Lcom/yf/smart/weloopx/android/ui/activities/el;)Lcom/yf/smart/weloopx/android/ui/c/aw;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 562
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/eq;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/el;->a(Lcom/yf/smart/weloopx/android/ui/activities/el;Lcom/yf/smart/weloopx/android/ui/c/aw;)Lcom/yf/smart/weloopx/android/ui/c/aw;

    .line 564
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/eq;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->j(Lcom/yf/smart/weloopx/android/ui/activities/el;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/eq;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->j(Lcom/yf/smart/weloopx/android/ui/activities/el;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->j()V

    .line 567
    :cond_1
    return-void

    .line 564
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
