.class final Lcom/yf/smart/weloopx/c/p;
.super Lcom/yf/gattlib/client/b/a;
.source "ProGuard"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(II)V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "pl.gatti.dgcam.ACTION_TAKE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    const-string v1, "EXTRA_CODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    const-string v1, "FLASH_CHANNEL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    const-string v1, "OPERATION_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/a/a;->a(Landroid/content/Intent;)V

    .line 66
    return-void
.end method
