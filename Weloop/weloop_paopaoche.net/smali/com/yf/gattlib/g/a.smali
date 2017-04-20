.class public Lcom/yf/gattlib/g/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/yf/gattlib/g/b;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/g/b;-><init>(Lcom/yf/gattlib/g/a;)V

    iput-object v0, p0, Lcom/yf/gattlib/g/a;->a:Landroid/content/BroadcastReceiver;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/gattlib/g/a;->b:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/yf/gattlib/g/a;->b:Z

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/yf/gattlib/g/a;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/gattlib/g/a;->b:Z

    .line 24
    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/yf/gattlib/g/a;->b:Z

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/yf/gattlib/g/a;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/gattlib/g/a;->b:Z

    .line 32
    :cond_0
    return-void
.end method
