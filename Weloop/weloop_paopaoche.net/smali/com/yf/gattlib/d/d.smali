.class Lcom/yf/gattlib/d/d;
.super Lcom/yf/gattlib/l/a;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/gattlib/d/b;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/d/b;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/yf/gattlib/d/d;->a:Lcom/yf/gattlib/d/b;

    invoke-direct {p0}, Lcom/yf/gattlib/l/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 129
    const-string v0, "com.yf.gattlib.intent.action.ACTION_GATT_INIT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/yf/gattlib/d/d;->a:Lcom/yf/gattlib/d/b;

    invoke-static {v0}, Lcom/yf/gattlib/d/b;->e(Lcom/yf/gattlib/d/b;)Lcom/yf/gattlib/d/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/yf/gattlib/d/d;->a:Lcom/yf/gattlib/d/b;

    invoke-static {v0}, Lcom/yf/gattlib/d/b;->e(Lcom/yf/gattlib/d/b;)Lcom/yf/gattlib/d/b$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/gattlib/d/b$a;->a()V

    .line 134
    :cond_0
    return-void
.end method
