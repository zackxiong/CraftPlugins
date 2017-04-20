.class Lcom/baidu/location/D$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/D;


# direct methods
.method private constructor <init>(Lcom/baidu/location/D;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/D$a;->a:Lcom/baidu/location/D;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/D;Lcom/baidu/location/D$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/D$a;-><init>(Lcom/baidu/location/D;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/16 v6, 0x29

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/D$a;->a:Lcom/baidu/location/D;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/baidu/location/D;->a(Lcom/baidu/location/D;J)J

    iget-object v0, p0, Lcom/baidu/location/D$a;->a:Lcom/baidu/location/D;

    invoke-static {v0}, Lcom/baidu/location/D;->a(Lcom/baidu/location/D;)V

    invoke-static {}, Lcom/baidu/location/n;->bv()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-static {}, Lcom/baidu/location/r;->bO()Lcom/baidu/location/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/r;->bR()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/baidu/location/r;->bO()Lcom/baidu/location/r;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/location/r;->hj:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    const-string v0, "baidu_location_service"

    const-string v1, "WifiScan finished, in callback."

    invoke-static {v0, v1}, Lcom/baidu/location/K;->do(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/baidu/location/an;->do()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const-string v0, "baidu_location_service"

    const-string v1, "in wifi scan callback, upload the wifilist info!"

    invoke-static {v0, v1}, Lcom/baidu/location/K;->do(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/an;->if()Lcom/baidu/location/aj$a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/D$a;->a:Lcom/baidu/location/D;

    invoke-virtual {v1}, Lcom/baidu/location/D;->cn()Lcom/baidu/location/D$b;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/an;->a()Landroid/location/Location;

    move-result-object v2

    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/T;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/location/Z;->do(Lcom/baidu/location/aj$a;Lcom/baidu/location/D$b;Landroid/location/Location;Ljava/lang/String;)V

    goto :goto_0
.end method
