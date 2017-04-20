.class Lcom/yf/smart/weloopx/android/ui/c/bd;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/ba;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/ba;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bd;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bd;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->f(Lcom/yf/smart/weloopx/android/ui/c/ba;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->j()V

    .line 470
    return-void
.end method
