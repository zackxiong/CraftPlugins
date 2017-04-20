.class public abstract Lcom/yf/gattlib/notification/q;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# static fields
.field private static a:I

.field private static b:Ljava/util/Date;

.field private static c:Z

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput v0, Lcom/yf/gattlib/notification/q;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 58
    sget v0, Lcom/yf/gattlib/notification/q;->a:I

    if-ne v0, p2, :cond_0

    .line 94
    :goto_0
    return-void

    .line 62
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 93
    :goto_1
    sput p2, Lcom/yf/gattlib/notification/q;->a:I

    goto :goto_0

    .line 64
    :pswitch_0
    sput-boolean v1, Lcom/yf/gattlib/notification/q;->c:Z

    .line 65
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/yf/gattlib/notification/q;->b:Ljava/util/Date;

    .line 66
    sput-object p3, Lcom/yf/gattlib/notification/q;->d:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/yf/gattlib/notification/q;->b:Ljava/util/Date;

    invoke-virtual {p0, p1, p3, v0}, Lcom/yf/gattlib/notification/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_1

    .line 71
    :pswitch_1
    sget v0, Lcom/yf/gattlib/notification/q;->a:I

    if-ne v0, v1, :cond_1

    .line 72
    sget-object v0, Lcom/yf/gattlib/notification/q;->d:Ljava/lang/String;

    sget-object v1, Lcom/yf/gattlib/notification/q;->b:Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/yf/gattlib/notification/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    goto :goto_1

    .line 74
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yf/gattlib/notification/q;->c:Z

    .line 75
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/yf/gattlib/notification/q;->b:Ljava/util/Date;

    .line 76
    sget-object v0, Lcom/yf/gattlib/notification/q;->d:Ljava/lang/String;

    sget-object v1, Lcom/yf/gattlib/notification/q;->b:Ljava/util/Date;

    invoke-virtual {p0, p1, v0, v1}, Lcom/yf/gattlib/notification/q;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_1

    .line 81
    :pswitch_2
    sget v0, Lcom/yf/gattlib/notification/q;->a:I

    if-ne v0, v1, :cond_2

    .line 83
    sget-object v0, Lcom/yf/gattlib/notification/q;->d:Ljava/lang/String;

    sget-object v1, Lcom/yf/gattlib/notification/q;->b:Ljava/util/Date;

    invoke-virtual {p0, p1, v0, v1}, Lcom/yf/gattlib/notification/q;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_1

    .line 85
    :cond_2
    sget-boolean v0, Lcom/yf/gattlib/notification/q;->c:Z

    if-eqz v0, :cond_3

    .line 86
    sget-object v0, Lcom/yf/gattlib/notification/q;->d:Ljava/lang/String;

    sget-object v1, Lcom/yf/gattlib/notification/q;->b:Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/yf/gattlib/notification/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    goto :goto_1

    .line 89
    :cond_3
    sget-object v0, Lcom/yf/gattlib/notification/q;->d:Ljava/lang/String;

    sget-object v1, Lcom/yf/gattlib/notification/q;->b:Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/yf/gattlib/notification/q;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    goto :goto_1

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method protected c(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/notification/q;->d:Ljava/lang/String;

    .line 44
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "incoming_number"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 42
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v0, v2}, Lcom/yf/gattlib/notification/q;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_2
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 35
    const/4 v0, 0x2

    goto :goto_1

    .line 37
    :cond_3
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    const/4 v0, 0x1

    goto :goto_1
.end method
