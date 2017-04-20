.class Lcom/yf/gattlib/server/android/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/a/f;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/server/android/GattServerService;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/server/android/GattServerService;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/yf/gattlib/server/android/i;->a:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GattServerService service_uuid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GattServerService service_uuid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 345
    const-string v0, "rx_service_uuid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/yf/gattlib/server/android/i;->a:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-static {v0}, Lcom/yf/gattlib/server/android/GattServerService;->f(Lcom/yf/gattlib/server/android/GattServerService;)V

    .line 347
    iget-object v0, p0, Lcom/yf/gattlib/server/android/i;->a:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-static {v0}, Lcom/yf/gattlib/server/android/GattServerService;->a(Lcom/yf/gattlib/server/android/GattServerService;)Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->n()V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    const-string v0, "dfu_service_uuid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/yf/gattlib/server/android/i;->a:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-static {v0}, Lcom/yf/gattlib/server/android/GattServerService;->a(Lcom/yf/gattlib/server/android/GattServerService;)Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->m()V

    goto :goto_0
.end method
