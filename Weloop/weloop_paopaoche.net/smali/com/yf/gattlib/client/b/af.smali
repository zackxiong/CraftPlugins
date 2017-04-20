.class Lcom/yf/gattlib/client/b/af;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/client/b/ae;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/client/b/ae;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/yf/gattlib/client/b/af;->a:Lcom/yf/gattlib/client/b/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/yf/gattlib/client/b/ax;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/ax;-><init>()V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/ax;->f()Lcom/yf/gattlib/client/b/e;

    .line 17
    return-void
.end method
