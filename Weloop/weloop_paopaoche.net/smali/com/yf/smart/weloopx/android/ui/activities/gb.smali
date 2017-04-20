.class Lcom/yf/smart/weloopx/android/ui/activities/gb;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gb;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gb;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->j()V

    .line 254
    return-void
.end method
