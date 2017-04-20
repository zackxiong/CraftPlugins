.class Lcom/yf/gattlib/p/m;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/gattlib/p/l;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/p/l;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/yf/gattlib/p/m;->a:Lcom/yf/gattlib/p/l;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yf/gattlib/p/l$a;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1}, Lcom/yf/gattlib/p/l$a;->a(I)V

    .line 30
    return-void
.end method
