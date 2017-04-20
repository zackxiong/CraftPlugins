.class final Lcom/yf/smart/weloopx/c/q;
.super Lcom/yf/gattlib/client/b/bn;
.source "ProGuard"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bn;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "pl.gatti.dgcam.ACTION_TAKE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    const-string v1, "EXTRA_CODE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/a/a;->a(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method protected e()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "pl.gatti.dgcam.ACTION_TAKE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    const-string v1, "EXTRA_CODE"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/a/a;->a(Landroid/content/Intent;)V

    .line 86
    return-void
.end method
