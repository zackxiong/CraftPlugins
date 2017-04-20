.class Lcom/yf/gattlib/server/android/GattServerService$a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/server/android/GattServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field final synthetic b:Lcom/yf/gattlib/server/android/GattServerService;


# direct methods
.method private constructor <init>(Lcom/yf/gattlib/server/android/GattServerService;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/yf/gattlib/server/android/GattServerService$a;->b:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/gattlib/server/android/GattServerService;Lcom/yf/gattlib/server/android/g;)V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/yf/gattlib/server/android/GattServerService$a;-><init>(Lcom/yf/gattlib/server/android/GattServerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 224
    const-string v0, "GattServerService"

    const-string v1, "Connecter, 1 run connection "

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "Connecter, 1 run connection "

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService$a;->b:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-static {v0}, Lcom/yf/gattlib/b/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const-string v0, "GattServerService"

    const-string v1, "Connecter 1.1 isBLEEnabled is false"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "Connecter 1.1 isBLEEnabled is false"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 229
    invoke-static {}, Lcom/yf/gattlib/b/d;->a()Lcom/yf/gattlib/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/b/d;->c()V

    .line 230
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService$a;->b:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-virtual {v0}, Lcom/yf/gattlib/server/android/GattServerService;->e()V

    .line 252
    :goto_0
    return-void

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecter 2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/server/android/GattServerService$a;->b:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-static {v1}, Lcom/yf/gattlib/server/android/GattServerService;->a(Lcom/yf/gattlib/server/android/GattServerService;)Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/server/android/GattServerService$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yf/gattlib/f/b;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/server/android/GattServerService$a;->b:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-static {v1}, Lcom/yf/gattlib/server/android/GattServerService;->a(Lcom/yf/gattlib/server/android/GattServerService;)Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/f/b;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    const-string v1, "GattServerService"

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService$a;->b:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-static {v0}, Lcom/yf/gattlib/server/android/GattServerService;->a(Lcom/yf/gattlib/server/android/GattServerService;)Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/server/android/GattServerService$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/f/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService$a;->b:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-static {v0}, Lcom/yf/gattlib/server/android/GattServerService;->a(Lcom/yf/gattlib/server/android/GattServerService;)Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    const-string v0, "GattServerService"

    const-string v1, "Connecter 2.1 run connection "

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "Connecter 2.1 run connection "

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GattServerService 3. Connecter run , ConnectDeviceCommand excute, address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/server/android/GattServerService$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 243
    const-string v0, "GattServerService ConnectDeviceCommand.excute"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService$a;->b:Lcom/yf/gattlib/server/android/GattServerService;

    new-instance v1, Lcom/yf/gattlib/server/android/d;

    invoke-direct {v1}, Lcom/yf/gattlib/server/android/d;-><init>()V

    iget-object v2, p0, Lcom/yf/gattlib/server/android/GattServerService$a;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/yf/gattlib/server/android/d;->a(Ljava/lang/String;ZZZ)Lcom/yf/gattlib/server/android/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/server/android/e;->a(Landroid/content/Context;Lcom/yf/gattlib/server/android/d;)V

    .line 247
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService$a;->b:Lcom/yf/gattlib/server/android/GattServerService;

    iget-object v1, p0, Lcom/yf/gattlib/server/android/GattServerService$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yf/gattlib/server/android/GattServerService$a;->b:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-static {v2}, Lcom/yf/gattlib/server/android/GattServerService;->b(Lcom/yf/gattlib/server/android/GattServerService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/yf/gattlib/server/android/GattServerService;->a(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 249
    :cond_1
    invoke-static {}, Lcom/yf/gattlib/b/d;->a()Lcom/yf/gattlib/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/b/d;->c()V

    .line 250
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService$a;->b:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-virtual {v0}, Lcom/yf/gattlib/server/android/GattServerService;->e()V

    goto/16 :goto_0
.end method
