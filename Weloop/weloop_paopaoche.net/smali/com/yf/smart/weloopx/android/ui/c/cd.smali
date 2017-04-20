.class Lcom/yf/smart/weloopx/android/ui/c/cd;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/a/c;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/cc;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/cc;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/cd;->a:Lcom/yf/smart/weloopx/android/ui/c/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 53
    invoke-static {p1}, Lcom/yf/gattlib/client/b/a/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cd;->a:Lcom/yf/smart/weloopx/android/ui/c/cc;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/cc;->b()V

    .line 55
    invoke-static {p1, p2}, Lcom/yf/gattlib/client/b/a/d;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cd;->a:Lcom/yf/smart/weloopx/android/ui/c/cc;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/cc;->a(Lcom/yf/smart/weloopx/android/ui/c/cc;)Lcom/yf/smart/weloopx/android/ui/c/cc$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cd;->a:Lcom/yf/smart/weloopx/android/ui/c/cc;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/cc;->a(Lcom/yf/smart/weloopx/android/ui/c/cc;)Lcom/yf/smart/weloopx/android/ui/c/cc$a;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/cd;->a:Lcom/yf/smart/weloopx/android/ui/c/cc;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/c/cc;->b(Lcom/yf/smart/weloopx/android/ui/c/cc;)B

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/cc$a;->a(ZB)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cd;->a:Lcom/yf/smart/weloopx/android/ui/c/cc;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/cc;->a(Lcom/yf/smart/weloopx/android/ui/c/cc;)Lcom/yf/smart/weloopx/android/ui/c/cc$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cd;->a:Lcom/yf/smart/weloopx/android/ui/c/cc;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/cc;->a(Lcom/yf/smart/weloopx/android/ui/c/cc;)Lcom/yf/smart/weloopx/android/ui/c/cc$a;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/cd;->a:Lcom/yf/smart/weloopx/android/ui/c/cc;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/c/cc;->b(Lcom/yf/smart/weloopx/android/ui/c/cc;)B

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/cc$a;->a(ZB)V

    goto :goto_0
.end method
