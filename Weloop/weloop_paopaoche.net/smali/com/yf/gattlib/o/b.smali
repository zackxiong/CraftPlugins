.class Lcom/yf/gattlib/o/b;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/gattlib/o/a;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/o/a;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/yf/gattlib/o/b;->a:Lcom/yf/gattlib/o/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/yf/gattlib/client/b/bb;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/bb;-><init>()V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/bb;->f()Lcom/yf/gattlib/client/b/e;

    .line 27
    return-void
.end method
