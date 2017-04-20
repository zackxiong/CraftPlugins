.class Lcom/yf/smart/weloopx/android/ui/c/u;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/c/c$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/l;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/l;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/u;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/u;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(Lcom/yf/smart/weloopx/android/ui/c/l;I)I

    .line 255
    return-void
.end method

.method public a(III)V
    .locals 2

    .prologue
    .line 259
    mul-int/lit8 v0, p2, 0x64

    div-int/2addr v0, p1

    .line 260
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/u;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->f(Lcom/yf/smart/weloopx/android/ui/c/l;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/u;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(Lcom/yf/smart/weloopx/android/ui/c/l;I)I

    .line 265
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/u;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/v;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/v;-><init>(Lcom/yf/smart/weloopx/android/ui/c/u;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/u;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    const v1, 0x7f070241

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(I)V

    .line 276
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/u;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/w;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/w;-><init>(Lcom/yf/smart/weloopx/android/ui/c/u;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(Ljava/lang/Runnable;)V

    .line 283
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/u;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/x;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/x;-><init>(Lcom/yf/smart/weloopx/android/ui/c/u;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(Ljava/lang/Runnable;)V

    .line 297
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/u;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    const v1, 0x7f0700bc

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(I)V

    .line 302
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/u;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/y;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/y;-><init>(Lcom/yf/smart/weloopx/android/ui/c/u;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/u;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    const v1, 0x7f070254

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(I)V

    .line 314
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/u;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/z;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/z;-><init>(Lcom/yf/smart/weloopx/android/ui/c/u;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(Ljava/lang/Runnable;)V

    .line 321
    return-void
.end method
