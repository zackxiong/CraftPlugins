.class public Lcom/yf/gattlib/server/android/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/server/android/a;


# instance fields
.field private a:Lcom/yf/gattlib/server/android/GattServerService;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/server/android/GattServerService;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/yf/gattlib/server/android/f;->a:Lcom/yf/gattlib/server/android/GattServerService;

    .line 32
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    invoke-static {p1}, Lcom/yf/gattlib/server/android/f;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 71
    const-class v1, Lcom/yf/gattlib/server/android/GattServerService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 73
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->f()Lcom/yf/gattlib/server/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->f()Lcom/yf/gattlib/server/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/gattlib/server/a;->a(Ljava/lang/String;)V

    .line 50
    :cond_0
    const-string v0, "ConnectDeviceCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/yf/gattlib/client/f;->a()Lcom/yf/gattlib/client/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->d()V

    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    const-class v0, Lcom/yf/gattlib/db/Relationship;

    invoke-static {v0}, Lcom/roscopeco/ormdroid/Entity;->query(Ljava/lang/Class;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    const-string v1, "left"

    invoke-static {v1, p0}, Lcom/roscopeco/ormdroid/Query;->eql(Ljava/lang/String;Ljava/lang/Object;)Lcom/roscopeco/ormdroid/Query$SQLExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roscopeco/ormdroid/Query;->where(Lcom/roscopeco/ormdroid/Query$SQLExpression;)Lcom/roscopeco/ormdroid/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roscopeco/ormdroid/Query;->executeMulti()Ljava/util/List;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/db/Relationship;

    .line 57
    invoke-virtual {v0}, Lcom/yf/gattlib/db/Relationship;->delete()V

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {}, Lcom/yf/gattlib/db/LastConnection;->obtainLastConnection()Lcom/yf/gattlib/db/LastConnection;

    move-result-object v0

    .line 61
    iget-object v1, v0, Lcom/yf/gattlib/db/LastConnection;->device:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    invoke-virtual {v0}, Lcom/yf/gattlib/db/LastConnection;->delete()V

    .line 66
    :cond_2
    invoke-static {}, Lcom/yf/gattlib/p/g;->c()Lcom/yf/gattlib/p/g$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/gattlib/p/g$d;->b()V

    .line 67
    return-void
.end method

.method public static b(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lcom/yf/gattlib/p/g;->a()V

    .line 77
    const-string v0, "disconnect"

    invoke-static {v0}, Lcom/yf/gattlib/server/android/c;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 78
    const-string v1, "EXTRA_DEVICE_ADDRESS"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "disconnect"

    return-object v0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 36
    const-string v0, "EXTRA_DEVICE_ADDRESS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/yf/gattlib/server/android/f;->a:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-virtual {v1}, Lcom/yf/gattlib/server/android/GattServerService;->e()V

    .line 39
    invoke-static {}, Lcom/yf/gattlib/b/d;->a()Lcom/yf/gattlib/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/b/d;->c()V

    .line 40
    invoke-static {v0}, Lcom/yf/gattlib/server/android/f;->a(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x1

    return v0
.end method
