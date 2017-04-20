.class Lcom/yf/gattlib/client/b/bd;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/client/b/bc;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/client/b/bc;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/yf/gattlib/client/b/bd;->a:Lcom/yf/gattlib/client/b/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bd;->a:Lcom/yf/gattlib/client/b/bc;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/bc;->i()V

    .line 114
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bd;->a:Lcom/yf/gattlib/client/b/bc;

    iget-object v0, v0, Lcom/yf/gattlib/client/b/bc;->a:Lcom/yf/gattlib/client/b/bc$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/bc$a;->b()V

    .line 115
    return-void
.end method
