.class Lcom/yf/smart/weloopx/android/ui/c/cj;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/yf/smart/weloopx/android/ui/c/ci;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/ci;II)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/cj;->c:Lcom/yf/smart/weloopx/android/ui/c/ci;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/c/cj;->a:I

    iput p3, p0, Lcom/yf/smart/weloopx/android/ui/c/cj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cj;->c:Lcom/yf/smart/weloopx/android/ui/c/ci;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/ci;->b:Lcom/yf/smart/weloopx/android/ui/c/ch;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/ch;->g()V

    .line 61
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cj;->a:I

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/c/cj;->b:I

    invoke-static {v0, v1}, Lcom/yf/gattlib/client/b/a/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cj;->c:Lcom/yf/smart/weloopx/android/ui/c/ci;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/ci;->b:Lcom/yf/smart/weloopx/android/ui/c/ch;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/cj;->c:Lcom/yf/smart/weloopx/android/ui/c/ci;

    iget v1, v1, Lcom/yf/smart/weloopx/android/ui/c/ci;->a:I

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/ch;->d(I)V

    .line 63
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/cj;->c:Lcom/yf/smart/weloopx/android/ui/c/ci;

    iget v1, v1, Lcom/yf/smart/weloopx/android/ui/c/ci;->a:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/d;->c(B)V

    .line 64
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/client/d;->a(I[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cj;->c:Lcom/yf/smart/weloopx/android/ui/c/ci;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/ci;->b:Lcom/yf/smart/weloopx/android/ui/c/ch;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/ch;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cj;->c:Lcom/yf/smart/weloopx/android/ui/c/ci;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/ci;->b:Lcom/yf/smart/weloopx/android/ui/c/ch;

    const v1, 0x7f07024e

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/ch;->a(I)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cj;->c:Lcom/yf/smart/weloopx/android/ui/c/ci;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/ci;->b:Lcom/yf/smart/weloopx/android/ui/c/ch;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/ch;->b()V

    .line 74
    :cond_1
    :goto_0
    return-void

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cj;->c:Lcom/yf/smart/weloopx/android/ui/c/ci;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/ci;->b:Lcom/yf/smart/weloopx/android/ui/c/ch;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/ch;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cj;->c:Lcom/yf/smart/weloopx/android/ui/c/ci;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/ci;->b:Lcom/yf/smart/weloopx/android/ui/c/ch;

    const v1, 0x7f070241

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/ch;->a(I)V

    goto :goto_0
.end method
