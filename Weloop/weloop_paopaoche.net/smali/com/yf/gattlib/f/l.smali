.class Lcom/yf/gattlib/f/l;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/f/b;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/f/b;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/yf/gattlib/f/l;->a:Lcom/yf/gattlib/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 469
    const-string v0, "SyncLanguage"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 470
    iget-object v0, p0, Lcom/yf/gattlib/f/l;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0}, Lcom/yf/gattlib/f/b;->f(Lcom/yf/gattlib/f/b;)Lcom/yf/gattlib/client/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/gattlib/f/l;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0}, Lcom/yf/gattlib/f/b;->f(Lcom/yf/gattlib/f/b;)Lcom/yf/gattlib/client/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->m()B

    move-result v0

    invoke-static {}, Lcom/yf/gattlib/p/e;->a()B

    move-result v1

    if-ne v0, v1, :cond_0

    .line 472
    const-string v0, "SyncLanguage same"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 473
    iget-object v0, p0, Lcom/yf/gattlib/f/l;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0}, Lcom/yf/gattlib/f/b;->g(Lcom/yf/gattlib/f/b;)V

    .line 478
    :goto_0
    return-void

    .line 476
    :cond_0
    new-instance v0, Lcom/yf/gattlib/client/b/au;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/au;-><init>()V

    new-instance v1, Lcom/yf/gattlib/f/b$a;

    iget-object v2, p0, Lcom/yf/gattlib/f/l;->a:Lcom/yf/gattlib/f/b;

    const-string v3, "sync language"

    invoke-direct {v1, v2, v3}, Lcom/yf/gattlib/f/b$a;-><init>(Lcom/yf/gattlib/f/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/b/au;->c(Lcom/yf/gattlib/client/b/a/c;)Lcom/yf/gattlib/client/b/e;

    goto :goto_0
.end method
