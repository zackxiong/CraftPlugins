.class Lcom/yf/smart/weloopx/c/t;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/a/c;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/c/s$b;

.field final synthetic b:Lcom/yf/smart/weloopx/c/s;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/c/s;Lcom/yf/smart/weloopx/c/s$b;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/t;->b:Lcom/yf/smart/weloopx/c/s;

    iput-object p2, p0, Lcom/yf/smart/weloopx/c/t;->a:Lcom/yf/smart/weloopx/c/s$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 143
    invoke-static {p1}, Lcom/yf/gattlib/client/b/a/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {p1, p2}, Lcom/yf/gattlib/client/b/a/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "wake up pattern"

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/t;->b:Lcom/yf/smart/weloopx/c/s;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/s;->a(Lcom/yf/smart/weloopx/c/s;)Lcom/yf/gattlib/client/b/bo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/gattlib/client/b/bo;->a()B

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;I)V

    .line 147
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/t;->a:Lcom/yf/smart/weloopx/c/s$b;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/t;->a:Lcom/yf/smart/weloopx/c/s$b;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/c/s$b;->b()V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/t;->a:Lcom/yf/smart/weloopx/c/s$b;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/t;->a:Lcom/yf/smart/weloopx/c/s$b;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/c/s$b;->a()V

    goto :goto_0
.end method
