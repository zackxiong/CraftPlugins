.class Lcom/yf/smart/weloopx/android/ui/c/dq;
.super Lcom/yf/smart/weloopx/b/b/f;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/dp;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/dp;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/dq;->a:Lcom/yf/smart/weloopx/android/ui/c/dp;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;)V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dq;->a:Lcom/yf/smart/weloopx/android/ui/c/dp;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/dp;->a(Lcom/yf/smart/weloopx/android/ui/c/dp;)Lcom/yf/smart/weloopx/android/ui/c/dp$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dq;->a:Lcom/yf/smart/weloopx/android/ui/c/dp;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/dp;->a(Lcom/yf/smart/weloopx/android/ui/c/dp;)Lcom/yf/smart/weloopx/android/ui/c/dp$a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/yf/smart/weloopx/android/ui/c/dp$a;->a(ILjava/lang/String;Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dq;->a:Lcom/yf/smart/weloopx/android/ui/c/dp;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/dp;->b()V

    .line 63
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dq;->a:Lcom/yf/smart/weloopx/android/ui/c/dp;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/dp;->a(Lcom/yf/smart/weloopx/android/ui/c/dp;)Lcom/yf/smart/weloopx/android/ui/c/dp$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dq;->a:Lcom/yf/smart/weloopx/android/ui/c/dp;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/dp;->a(Lcom/yf/smart/weloopx/android/ui/c/dp;)Lcom/yf/smart/weloopx/android/ui/c/dp$a;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/yf/smart/weloopx/android/ui/c/dp$a;->a(ILjava/lang/String;Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dq;->a:Lcom/yf/smart/weloopx/android/ui/c/dp;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/dp;->b()V

    .line 71
    return-void
.end method
