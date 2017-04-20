.class Lpl/gatti/dgcam/c;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field final synthetic a:Lpl/gatti/dgcam/DgCamActivity;


# direct methods
.method constructor <init>(Lpl/gatti/dgcam/DgCamActivity;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lpl/gatti/dgcam/c;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lpl/gatti/dgcam/c;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-static {v0, p2}, Lpl/gatti/dgcam/DgCamActivity;->a(Lpl/gatti/dgcam/DgCamActivity;Landroid/content/Intent;)V

    .line 89
    return-void
.end method
