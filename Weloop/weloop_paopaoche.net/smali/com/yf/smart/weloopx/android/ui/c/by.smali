.class Lcom/yf/smart/weloopx/android/ui/c/by;
.super Lcom/yf/smart/weloopx/b/b/n;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/bt;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/bt;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/by;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/n;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/by;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/bt;->b(Lcom/yf/smart/weloopx/android/ui/c/bt;Z)Z

    .line 214
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/by;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->a(Lcom/yf/smart/weloopx/android/ui/c/bt;)V

    .line 215
    invoke-static {p1}, Lcom/yf/smart/weloopx/f/n;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/event/InvalidAccessTokenEvent;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/event/InvalidAccessTokenEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/lib/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 219
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/by;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/bt;->b(Lcom/yf/smart/weloopx/android/ui/c/bt;Z)Z

    .line 208
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/by;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->f(Lcom/yf/smart/weloopx/android/ui/c/bt;)V

    .line 209
    return-void
.end method
