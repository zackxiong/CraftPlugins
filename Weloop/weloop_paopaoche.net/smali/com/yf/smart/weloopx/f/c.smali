.class Lcom/yf/smart/weloopx/f/c;
.super Lcom/b/a/d/a/d;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/d/a/d",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/f/b$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/yf/smart/weloopx/f/b;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/f/b;Lcom/yf/smart/weloopx/f/b$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/yf/smart/weloopx/f/c;->c:Lcom/yf/smart/weloopx/f/b;

    iput-object p2, p0, Lcom/yf/smart/weloopx/f/c;->a:Lcom/yf/smart/weloopx/f/b$a;

    iput-object p3, p0, Lcom/yf/smart/weloopx/f/c;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJZ)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/c;->a:Lcom/yf/smart/weloopx/f/b$a;

    invoke-interface {v0, p2}, Lcom/yf/smart/weloopx/f/b$a;->a(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public a(Lcom/b/a/d/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/e",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/f/c;->c:Lcom/yf/smart/weloopx/f/b;

    invoke-static {v2}, Lcom/yf/smart/weloopx/f/b;->a(Lcom/yf/smart/weloopx/f/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Upload statical info result  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 126
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/c;->c:Lcom/yf/smart/weloopx/f/b;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/b;->b(Lcom/yf/smart/weloopx/f/b;)Lcom/yf/smart/weloopx/data/l;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/f/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/l;->a(Ljava/lang/String;)Z

    .line 128
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/c;->c:Lcom/yf/smart/weloopx/f/b;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/b;->c(Lcom/yf/smart/weloopx/f/b;)Lcom/yf/smart/weloopx/data/m;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/f/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/m;->b(Ljava/lang/String;)Z

    .line 129
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/c;->a:Lcom/yf/smart/weloopx/f/b$a;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/f/b$a;->b()V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/c;->a:Lcom/yf/smart/weloopx/f/b$a;

    iget-object v1, p0, Lcom/yf/smart/weloopx/f/c;->c:Lcom/yf/smart/weloopx/f/b;

    invoke-static {v1}, Lcom/yf/smart/weloopx/f/b;->d(Lcom/yf/smart/weloopx/f/b;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07017c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yf/smart/weloopx/f/b$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/c;->a:Lcom/yf/smart/weloopx/f/b$a;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/f/b$a;->a()V

    .line 115
    return-void
.end method
