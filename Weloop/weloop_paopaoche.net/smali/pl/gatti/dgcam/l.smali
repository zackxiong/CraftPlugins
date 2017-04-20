.class Lpl/gatti/dgcam/l;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field final synthetic a:Lpl/gatti/dgcam/DgCamActivityForTommy2;


# direct methods
.method constructor <init>(Lpl/gatti/dgcam/DgCamActivityForTommy2;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lpl/gatti/dgcam/l;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 270
    const-string v0, "DgCamActivityForTommy2 \u63a5\u6536\u5230receiver"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lpl/gatti/dgcam/l;->a:Lpl/gatti/dgcam/DgCamActivityForTommy2;

    invoke-static {v0, p2}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->a(Lpl/gatti/dgcam/DgCamActivityForTommy2;Landroid/content/Intent;)V

    .line 272
    return-void
.end method
