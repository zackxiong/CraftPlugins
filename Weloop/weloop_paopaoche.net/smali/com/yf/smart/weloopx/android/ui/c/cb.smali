.class Lcom/yf/smart/weloopx/android/ui/c/cb;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/a/c;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/ca;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/ca;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/cb;->a:Lcom/yf/smart/weloopx/android/ui/c/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 51
    invoke-static {p1}, Lcom/yf/gattlib/client/b/a/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cb;->a:Lcom/yf/smart/weloopx/android/ui/c/ca;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/ca;->b()V

    .line 53
    invoke-static {p1, p2}, Lcom/yf/gattlib/client/b/a/d;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cb;->a:Lcom/yf/smart/weloopx/android/ui/c/ca;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ca;->a(Lcom/yf/smart/weloopx/android/ui/c/ca;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "recover"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cb;->a:Lcom/yf/smart/weloopx/android/ui/c/ca;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ca;->b(Lcom/yf/smart/weloopx/android/ui/c/ca;)Lcom/yf/smart/weloopx/android/ui/c/ca$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cb;->a:Lcom/yf/smart/weloopx/android/ui/c/ca;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ca;->b(Lcom/yf/smart/weloopx/android/ui/c/ca;)Lcom/yf/smart/weloopx/android/ui/c/ca$a;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/cb;->a:Lcom/yf/smart/weloopx/android/ui/c/ca;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/c/ca;->a(Lcom/yf/smart/weloopx/android/ui/c/ca;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/ca$a;->a(ZZ)V

    .line 67
    :cond_0
    :goto_1
    return-void

    .line 55
    :cond_1
    const-string v0, "restart"

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cb;->a:Lcom/yf/smart/weloopx/android/ui/c/ca;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ca;->b(Lcom/yf/smart/weloopx/android/ui/c/ca;)Lcom/yf/smart/weloopx/android/ui/c/ca$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cb;->a:Lcom/yf/smart/weloopx/android/ui/c/ca;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ca;->b(Lcom/yf/smart/weloopx/android/ui/c/ca;)Lcom/yf/smart/weloopx/android/ui/c/ca$a;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/cb;->a:Lcom/yf/smart/weloopx/android/ui/c/ca;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/c/ca;->a(Lcom/yf/smart/weloopx/android/ui/c/ca;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/ca$a;->a(ZZ)V

    goto :goto_1
.end method
