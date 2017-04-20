.class Lcom/yf/gattlib/client/b/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/client/b/c;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/client/b/c;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/yf/gattlib/client/b/d;->a:Lcom/yf/gattlib/client/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/yf/gattlib/client/b/d;->a:Lcom/yf/gattlib/client/b/c;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/c;->i()V

    .line 507
    iget-object v0, p0, Lcom/yf/gattlib/client/b/d;->a:Lcom/yf/gattlib/client/b/c;

    invoke-static {v0}, Lcom/yf/gattlib/client/b/c;->a(Lcom/yf/gattlib/client/b/c;)Lcom/yf/gattlib/client/b/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/a/a;->b()V

    .line 508
    return-void
.end method
