.class Lcom/yf/gattlib/client/b/c/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/p/l$a;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/client/b/c/c;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/client/b/c/c;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/yf/gattlib/client/b/c/d;->a:Lcom/yf/gattlib/client/b/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 232
    const-string v0, "sendOneFrame timeout"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/client/b/c/d;->a:Lcom/yf/gattlib/client/b/c/c;

    invoke-static {v0}, Lcom/yf/gattlib/client/b/c/c;->a(Lcom/yf/gattlib/client/b/c/c;)V

    goto :goto_0
.end method
