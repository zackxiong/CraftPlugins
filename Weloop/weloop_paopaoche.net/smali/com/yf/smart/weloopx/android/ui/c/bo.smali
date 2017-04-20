.class Lcom/yf/smart/weloopx/android/ui/c/bo;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/bl;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/bl;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bo;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bo;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->b(Lcom/yf/smart/weloopx/android/ui/c/bl;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->j()V

    .line 196
    return-void
.end method
