.class public Lcom/yf/gattlib/d/a;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/yf/gattlib/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/d/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/yf/gattlib/server/android/GattServerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yf/gattlib/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 40
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0, p2}, Lcom/yf/gattlib/d/a;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-direct {p0, p1}, Lcom/yf/gattlib/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    sget-object v0, Lcom/yf/gattlib/d/a;->a:Ljava/lang/String;

    const-string v1, "GattServerService is running"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_1
    invoke-static {p1}, Lcom/yf/gattlib/b/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    invoke-static {p1}, Lcom/yf/gattlib/b/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    sget-object v0, Lcom/yf/gattlib/d/a;->a:Ljava/lang/String;

    const-string v1, "boot completed, start GattServerService"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->m()Z

    goto :goto_0

    .line 32
    :cond_2
    sget-object v0, Lcom/yf/gattlib/d/a;->a:Ljava/lang/String;

    const-string v1, "Unsupported BLE"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_3
    sget-object v0, Lcom/yf/gattlib/d/a;->a:Ljava/lang/String;

    const-string v1, "BLE is not enabled"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
