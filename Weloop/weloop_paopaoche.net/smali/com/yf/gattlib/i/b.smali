.class Lcom/yf/gattlib/i/b;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/gattlib/i/a;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/i/a;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/yf/gattlib/i/b;->a:Lcom/yf/gattlib/i/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/yf/gattlib/client/b/az;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/az;-><init>()V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/az;->f()Lcom/yf/gattlib/client/b/e;

    .line 23
    return-void
.end method
