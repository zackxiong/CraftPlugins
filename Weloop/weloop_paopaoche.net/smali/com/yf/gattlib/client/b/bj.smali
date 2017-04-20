.class Lcom/yf/gattlib/client/b/bj;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/client/b/be$b;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/client/b/be$b;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yf/gattlib/client/b/bj;->a:Lcom/yf/gattlib/client/b/be$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bj;->a:Lcom/yf/gattlib/client/b/be$b;

    iget-object v1, p0, Lcom/yf/gattlib/client/b/bj;->a:Lcom/yf/gattlib/client/b/be$b;

    invoke-static {v1}, Lcom/yf/gattlib/client/b/be$b;->a(Lcom/yf/gattlib/client/b/be$b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/client/b/bj;->a:Lcom/yf/gattlib/client/b/be$b;

    invoke-static {v2}, Lcom/yf/gattlib/client/b/be$b;->b(Lcom/yf/gattlib/client/b/be$b;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/yf/gattlib/client/b/be$b;->a(Ljava/lang/String;J)V

    .line 51
    return-void
.end method
