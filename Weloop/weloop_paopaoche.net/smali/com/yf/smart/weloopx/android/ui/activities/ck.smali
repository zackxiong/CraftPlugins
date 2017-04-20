.class Lcom/yf/smart/weloopx/android/ui/activities/ck;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ck;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 644
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 645
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 648
    packed-switch v0, :pswitch_data_0

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 650
    :pswitch_0
    const-string v0, "DfuActivity"

    const-string v1, "Bluetooth off"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :pswitch_1
    const-string v0, "DfuActivity"

    const-string v1, "Turning Bluetooth off..."

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ck;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->G(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    goto :goto_0

    .line 657
    :pswitch_2
    const-string v0, "DfuActivity"

    const-string v1, "Bluetooth on"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :pswitch_3
    const-string v0, "DfuActivity"

    const-string v1, "Turning Bluetooth on..."

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
