.class Lcom/yf/smart/weloopx/c/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/aq$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/c/e;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/c/e;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/f;->a:Lcom/yf/smart/weloopx/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/f;->a:Lcom/yf/smart/weloopx/c/e;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/e;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v0}, Lcom/yf/smart/weloopx/c/c;->c(Lcom/yf/smart/weloopx/c/c;)I

    move-result v0

    if-lez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/f;->a:Lcom/yf/smart/weloopx/c/e;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/e;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v0}, Lcom/yf/smart/weloopx/c/c;->e(Lcom/yf/smart/weloopx/c/c;)Ljava/util/Stack;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/f;->a:Lcom/yf/smart/weloopx/c/e;

    iget-object v1, v1, Lcom/yf/smart/weloopx/c/e;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/c;->d(Lcom/yf/smart/weloopx/c/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/f;->a:Lcom/yf/smart/weloopx/c/e;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/e;->a:Lcom/yf/smart/weloopx/c/c;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;J)V

    .line 170
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/f;->a:Lcom/yf/smart/weloopx/c/e;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/e;->a:Lcom/yf/smart/weloopx/c/c;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;J)V

    .line 175
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/f;->a:Lcom/yf/smart/weloopx/c/e;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/e;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v0}, Lcom/yf/smart/weloopx/c/c;->c(Lcom/yf/smart/weloopx/c/c;)I

    move-result v0

    if-lez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/f;->a:Lcom/yf/smart/weloopx/c/e;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/e;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v0}, Lcom/yf/smart/weloopx/c/c;->e(Lcom/yf/smart/weloopx/c/c;)Ljava/util/Stack;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/f;->a:Lcom/yf/smart/weloopx/c/e;

    iget-object v1, v1, Lcom/yf/smart/weloopx/c/e;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/c;->d(Lcom/yf/smart/weloopx/c/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/f;->a:Lcom/yf/smart/weloopx/c/e;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/e;->a:Lcom/yf/smart/weloopx/c/c;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;J)V

    .line 183
    return-void
.end method
