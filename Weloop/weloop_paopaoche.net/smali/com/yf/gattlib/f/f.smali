.class Lcom/yf/gattlib/f/f;
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
    .line 372
    iput-object p1, p0, Lcom/yf/gattlib/f/f;->a:Lcom/yf/gattlib/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 376
    const-string v0, "GattInstance Runnable GetInfo"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lcom/yf/gattlib/f/f;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0}, Lcom/yf/gattlib/f/b;->e(Lcom/yf/gattlib/f/b;)Lcom/yf/gattlib/client/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/c;->i()V

    .line 378
    return-void
.end method
