.class Lcom/yf/gattlib/server/android/g;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/gattlib/server/android/GattServerService;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/server/android/GattServerService;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/yf/gattlib/server/android/g;->a:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 258
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GattServerService 1. mBTReceiver action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 260
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 263
    packed-switch v0, :pswitch_data_0

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 265
    :pswitch_0
    const-string v0, "GattServerService Bluetooth off"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 266
    const-string v0, "GattServerService Bluetooth off"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 269
    :pswitch_1
    const-string v0, "GattServerService Turning Bluetooth off..."

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 270
    const-string v0, "GattServerService Turning Bluetooth off..."

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/yf/gattlib/server/android/g;->a:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-virtual {v0}, Lcom/yf/gattlib/server/android/GattServerService;->e()V

    .line 272
    iget-object v0, p0, Lcom/yf/gattlib/server/android/g;->a:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-virtual {v0}, Lcom/yf/gattlib/server/android/GattServerService;->c()V

    goto :goto_0

    .line 275
    :pswitch_2
    const-string v0, "GattServerService Bluetooth on"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 276
    const-string v0, "GattServerService Bluetooth on"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/yf/gattlib/server/android/g;->a:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-static {v0}, Lcom/yf/gattlib/server/android/GattServerService;->c(Lcom/yf/gattlib/server/android/GattServerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yf/gattlib/server/android/h;

    invoke-direct {v1, p0}, Lcom/yf/gattlib/server/android/h;-><init>(Lcom/yf/gattlib/server/android/g;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 285
    :pswitch_3
    const-string v0, "GattServerService Turning Bluetooth on..."

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 286
    const-string v0, "GattServerService Turning Bluetooth on..."

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 289
    :cond_1
    const-string v1, "com.yf.gattlib.intent.action.CONNECTION_STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const-string v0, "connection_type"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 291
    const-string v1, "GattServer.extract.DEVICE_NEW_STATE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ACTION_CONNECTION_STATE_CHANGE, newState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fromType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GattServerService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 295
    const-string v2, "GattServerService"

    invoke-static {v2, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x2

    if-eq v0, v1, :cond_0

    .line 298
    if-nez v1, :cond_2

    .line 299
    iget-object v0, p0, Lcom/yf/gattlib/server/android/g;->a:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-static {v0}, Lcom/yf/gattlib/server/android/GattServerService;->a(Lcom/yf/gattlib/server/android/GattServerService;)Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->o()V

    .line 300
    iget-object v0, p0, Lcom/yf/gattlib/server/android/g;->a:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-static {v0}, Lcom/yf/gattlib/server/android/GattServerService;->d(Lcom/yf/gattlib/server/android/GattServerService;)V

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/yf/gattlib/server/android/g;->a:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-static {v0}, Lcom/yf/gattlib/server/android/GattServerService;->a(Lcom/yf/gattlib/server/android/GattServerService;)Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->i()Z

    move-result v0

    if-nez v0, :cond_3

    .line 304
    const-string v0, "GattServerService"

    const-string v1, "ACTION_CONNECTION_STATE_CHANGE,  reconnection is false"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v0, "ACTION_CONNECTION_STATE_CHANGE,  reconnection is false"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 311
    :cond_3
    const-string v0, "GattServer.extract.DEVICE_ADDRESS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/yf/gattlib/server/android/g;->a:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-static {v1, v0}, Lcom/yf/gattlib/server/android/GattServerService;->a(Lcom/yf/gattlib/server/android/GattServerService;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 314
    const-string v1, "GattServerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_CONNECTION_STATE_CHANGE,  not address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_CONNECTION_STATE_CHANGE,  not address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 319
    :cond_4
    iget-object v1, p0, Lcom/yf/gattlib/server/android/g;->a:Lcom/yf/gattlib/server/android/GattServerService;

    iget-object v2, p0, Lcom/yf/gattlib/server/android/g;->a:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-static {v2}, Lcom/yf/gattlib/server/android/GattServerService;->e(Lcom/yf/gattlib/server/android/GattServerService;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/yf/gattlib/server/android/GattServerService;->a(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
