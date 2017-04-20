.class Lcom/yf/smart/weloopx/f/f;
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
.field final synthetic a:Lcom/yf/smart/weloopx/f/d$a;

.field final synthetic b:Lcom/yf/smart/weloopx/f/d;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/f/d;Lcom/yf/smart/weloopx/f/d$a;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/yf/smart/weloopx/f/f;->b:Lcom/yf/smart/weloopx/f/d;

    iput-object p2, p0, Lcom/yf/smart/weloopx/f/f;->a:Lcom/yf/smart/weloopx/f/d$a;

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJZ)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download location track, fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/f;->a:Lcom/yf/smart/weloopx/f/d$a;

    invoke-interface {v0, p2}, Lcom/yf/smart/weloopx/f/d$a;->a(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public a(Lcom/b/a/d/e;)V
    .locals 1
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
    .line 164
    new-instance v0, Lcom/yf/smart/weloopx/f/g;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/f/g;-><init>(Lcom/yf/smart/weloopx/f/f;Lcom/b/a/d/e;)V

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/f/g;->start()V

    .line 188
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/f;->a:Lcom/yf/smart/weloopx/f/d$a;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/f/d$a;->a()V

    .line 155
    return-void
.end method
