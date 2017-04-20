.class Lcom/yf/gattlib/f/j;
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
    .line 428
    iput-object p1, p0, Lcom/yf/gattlib/f/j;->a:Lcom/yf/gattlib/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 432
    const-string v0, "SyncPhoneName"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 433
    new-instance v0, Lcom/yf/gattlib/client/b/az;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/az;-><init>()V

    new-instance v1, Lcom/yf/gattlib/f/b$a;

    iget-object v2, p0, Lcom/yf/gattlib/f/j;->a:Lcom/yf/gattlib/f/b;

    const-string v3, "sync phone name"

    invoke-direct {v1, v2, v3}, Lcom/yf/gattlib/f/b$a;-><init>(Lcom/yf/gattlib/f/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/b/az;->c(Lcom/yf/gattlib/client/b/a/c;)Lcom/yf/gattlib/client/b/e;

    .line 435
    return-void
.end method
