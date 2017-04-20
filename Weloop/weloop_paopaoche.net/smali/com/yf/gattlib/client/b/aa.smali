.class Lcom/yf/gattlib/client/b/aa;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yf/gattlib/client/b/z;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/client/b/z;I)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/yf/gattlib/client/b/aa;->b:Lcom/yf/gattlib/client/b/z;

    iput p2, p0, Lcom/yf/gattlib/client/b/aa;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/yf/gattlib/client/b/aa;->b:Lcom/yf/gattlib/client/b/z;

    iget v2, p0, Lcom/yf/gattlib/client/b/aa;->a:I

    invoke-static {v1, v0, v2}, Lcom/yf/gattlib/client/b/z;->a(Lcom/yf/gattlib/client/b/z;Lcom/yf/gattlib/a/b;I)V

    .line 64
    return-void
.end method
