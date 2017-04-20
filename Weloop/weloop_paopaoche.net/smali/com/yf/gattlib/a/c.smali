.class Lcom/yf/gattlib/a/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/a/b;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/a/b;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/yf/gattlib/a/c;->a:Lcom/yf/gattlib/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yf.gattlib.intent.action.GATT_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/yf/gattlib/a/c;->a:Lcom/yf/gattlib/a/b;

    invoke-static {v1}, Lcom/yf/gattlib/a/b;->a(Lcom/yf/gattlib/a/b;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    iget-object v1, p0, Lcom/yf/gattlib/a/c;->a:Lcom/yf/gattlib/a/b;

    invoke-static {v1}, Lcom/yf/gattlib/a/b;->a(Lcom/yf/gattlib/a/b;)Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/yf/gattlib/server/android/GattServerService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yf/gattlib/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/yf/gattlib/a/c;->a:Lcom/yf/gattlib/a/b;

    invoke-static {v1}, Lcom/yf/gattlib/a/b;->a(Lcom/yf/gattlib/a/b;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 163
    :cond_0
    return-void
.end method
