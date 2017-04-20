.class public Lcom/yf/gattlib/notification/SMSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/yf/gattlib/notification/SMSReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/notification/SMSReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 50
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 53
    :cond_0
    new-instance v0, Lcom/yf/gattlib/notification/NotificationContent;

    invoke-direct {v0}, Lcom/yf/gattlib/notification/NotificationContent;-><init>()V

    .line 55
    invoke-static {p1, p2}, Lcom/yf/gattlib/k/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    iput-object p2, v0, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    .line 63
    :goto_1
    iput-object p3, v0, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    .line 65
    const/4 v1, 0x4

    iput-byte v1, v0, Lcom/yf/gattlib/notification/NotificationContent;->b:B

    .line 66
    const v1, 0x186a2

    iput v1, v0, Lcom/yf/gattlib/notification/NotificationContent;->a:I

    .line 67
    const-string v1, "com.yf.sms.dummy"

    iput-object v1, v0, Lcom/yf/gattlib/notification/NotificationContent;->e:Ljava/lang/String;

    .line 69
    const-string v1, "posted"

    invoke-static {v0, v1}, Lcom/yf/gattlib/notification/a;->a(Lcom/yf/gattlib/notification/NotificationContent;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_1
    iput-object v1, v0, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    const-string v0, "pdus"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 26
    if-nez v0, :cond_1

    .line 27
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v0

    .line 28
    sget-object v1, Lcom/yf/gattlib/notification/SMSReceiver;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pdus is null and size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    array-length v1, v0

    new-array v4, v1, [Landroid/telephony/SmsMessage;

    move v2, v3

    .line 32
    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_2

    .line 33
    aget-object v1, v0, v2

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    aput-object v1, v4, v2

    .line 32
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 35
    :cond_2
    array-length v1, v4

    move v0, v3

    :goto_2
    if-ge v0, v1, :cond_3

    aget-object v2, v4, v0

    .line 36
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 37
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 38
    sget-object v6, Lcom/yf/gattlib/notification/SMSReceiver;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "<888>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 40
    :cond_3
    array-length v0, v4

    if-lez v0, :cond_0

    aget-object v0, v4, v3

    if-eqz v0, :cond_0

    .line 41
    aget-object v0, v4, v3

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 42
    aget-object v1, v4, v3

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-direct {p0, p1, v0, v1}, Lcom/yf/gattlib/notification/SMSReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
