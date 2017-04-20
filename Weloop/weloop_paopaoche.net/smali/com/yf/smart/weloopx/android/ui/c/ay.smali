.class Lcom/yf/smart/weloopx/android/ui/c/ay;
.super Lcom/yf/smart/weloopx/b/b/k;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/ax;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/ax;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/ay;->a:Lcom/yf/smart/weloopx/android/ui/c/ax;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yf/smart/weloopx/data/models/UserData;)V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/c;->b(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/c;->a(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->b()V

    .line 58
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ay;->a:Lcom/yf/smart/weloopx/android/ui/c/ax;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/ax;->b()V

    .line 59
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ay;->a:Lcom/yf/smart/weloopx/android/ui/c/ax;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ax;->a(Lcom/yf/smart/weloopx/android/ui/c/ax;)Lcom/yf/smart/weloopx/android/ui/c/ax$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ay;->a:Lcom/yf/smart/weloopx/android/ui/c/ax;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ax;->a(Lcom/yf/smart/weloopx/android/ui/c/ax;)Lcom/yf/smart/weloopx/android/ui/c/ax$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/smart/weloopx/android/ui/c/ax$a;->b_()V

    .line 62
    :cond_0
    return-void
.end method

.method public a(Lcom/yf/smart/weloopx/data/models/UserData;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ay;->a:Lcom/yf/smart/weloopx/android/ui/c/ax;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/ax;->b()V

    .line 67
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ay;->a:Lcom/yf/smart/weloopx/android/ui/c/ax;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ax;->a(Lcom/yf/smart/weloopx/android/ui/c/ax;)Lcom/yf/smart/weloopx/android/ui/c/ax$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ay;->a:Lcom/yf/smart/weloopx/android/ui/c/ax;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ax;->a(Lcom/yf/smart/weloopx/android/ui/c/ax;)Lcom/yf/smart/weloopx/android/ui/c/ax$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/yf/smart/weloopx/android/ui/c/ax$a;->a(Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method
