.class Lcom/yf/smart/weloopx/android/ui/c/bz;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/bt;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/bt;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bz;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bz;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->g(Lcom/yf/smart/weloopx/android/ui/c/bt;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bz;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->g(Lcom/yf/smart/weloopx/android/ui/c/bt;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->j()V

    .line 230
    :cond_0
    return-void
.end method
