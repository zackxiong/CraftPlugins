.class public Lcom/yf/gattlib/o/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    new-instance v1, Lcom/yf/gattlib/o/b;

    invoke-direct {v1, p0}, Lcom/yf/gattlib/o/b;-><init>(Lcom/yf/gattlib/o/a;)V

    iput-object v1, p0, Lcom/yf/gattlib/o/a;->a:Landroid/content/BroadcastReceiver;

    .line 29
    iget-object v1, p0, Lcom/yf/gattlib/o/a;->a:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 30
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yf/gattlib/o/a;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/yf/gattlib/o/a;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/gattlib/o/a;->a:Landroid/content/BroadcastReceiver;

    .line 38
    :cond_0
    return-void
.end method
