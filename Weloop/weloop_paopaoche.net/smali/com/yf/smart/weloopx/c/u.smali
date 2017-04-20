.class Lcom/yf/smart/weloopx/c/u;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/ak$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/c/s$a;

.field final synthetic b:Lcom/yf/smart/weloopx/c/s;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/c/s;Lcom/yf/smart/weloopx/c/s$a;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/u;->b:Lcom/yf/smart/weloopx/c/s;

    iput-object p2, p0, Lcom/yf/smart/weloopx/c/u;->a:Lcom/yf/smart/weloopx/c/s$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/u;->a:Lcom/yf/smart/weloopx/c/s$a;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/u;->a:Lcom/yf/smart/weloopx/c/s$a;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/c/s$a;->a()V

    .line 175
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 179
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "anti disturb time"

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/u;->b:Lcom/yf/smart/weloopx/c/s;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/s;->b(Lcom/yf/smart/weloopx/c/s;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;[B)V

    .line 181
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "last anti disturb time"

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/u;->b:Lcom/yf/smart/weloopx/c/s;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/s;->c(Lcom/yf/smart/weloopx/c/s;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;[B)V

    .line 183
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/u;->a:Lcom/yf/smart/weloopx/c/s$a;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/u;->a:Lcom/yf/smart/weloopx/c/s$a;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/c/s$a;->b()V

    .line 186
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/u;->a:Lcom/yf/smart/weloopx/c/s$a;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/u;->a:Lcom/yf/smart/weloopx/c/s$a;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/c/s$a;->a()V

    .line 193
    :cond_0
    return-void
.end method
