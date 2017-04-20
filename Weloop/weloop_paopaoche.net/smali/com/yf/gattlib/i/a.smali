.class public final Lcom/yf/gattlib/i/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lcom/yf/gattlib/i/b;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/i/b;-><init>(Lcom/yf/gattlib/i/a;)V

    iput-object v0, p0, Lcom/yf/gattlib/i/a;->a:Landroid/content/BroadcastReceiver;

    .line 26
    iget-object v0, p0, Lcom/yf/gattlib/i/a;->a:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yf/gattlib/i/a;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/yf/gattlib/i/a;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/gattlib/i/a;->a:Landroid/content/BroadcastReceiver;

    .line 37
    :cond_0
    return-void
.end method
