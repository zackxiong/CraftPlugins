.class Lcom/yf/smart/weloopx/android/ui/c/ao;
.super Lcom/yf/smart/weloopx/b/b/s;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/am;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/am;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/ao;->a:Lcom/yf/smart/weloopx/android/ui/c/am;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/s;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ao;->a:Lcom/yf/smart/weloopx/android/ui/c/am;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/am;->a(Lcom/yf/smart/weloopx/android/ui/c/am;)Lcom/yf/smart/weloopx/android/ui/c/am$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ao;->a:Lcom/yf/smart/weloopx/android/ui/c/am;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/am;->a(Lcom/yf/smart/weloopx/android/ui/c/am;)Lcom/yf/smart/weloopx/android/ui/c/am$a;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1, p1}, Lcom/yf/smart/weloopx/android/ui/c/am$a;->a(ILjava/lang/String;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ao;->a:Lcom/yf/smart/weloopx/android/ui/c/am;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/am;->b()V

    .line 109
    return-void
.end method

.method public d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 119
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v0

    sget-object v1, Lcom/yf/smart/weloopx/d/c;->f:Lcom/yf/smart/weloopx/d/c;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/ao;->a:Lcom/yf/smart/weloopx/android/ui/c/am;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/c/am;->c(Lcom/yf/smart/weloopx/android/ui/c/am;)Landroid/os/Handler;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v4, v2}, Lcom/yf/smart/weloopx/d/a;->a(Lcom/yf/smart/weloopx/d/c;I[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ao;->a:Lcom/yf/smart/weloopx/android/ui/c/am;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/am;->a(Lcom/yf/smart/weloopx/android/ui/c/am;)Lcom/yf/smart/weloopx/android/ui/c/am$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ao;->a:Lcom/yf/smart/weloopx/android/ui/c/am;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/am;->a(Lcom/yf/smart/weloopx/android/ui/c/am;)Lcom/yf/smart/weloopx/android/ui/c/am$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lcom/yf/smart/weloopx/android/ui/c/am$a;->a(ILjava/lang/String;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ao;->a:Lcom/yf/smart/weloopx/android/ui/c/am;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/am;->b()V

    .line 125
    :cond_1
    return-void
.end method
