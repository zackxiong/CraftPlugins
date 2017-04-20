.class public Lcom/yf/gattlib/notification/NLService;
.super Landroid/service/notification/NotificationListenerService;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/notification/NLService$1;,
        Lcom/yf/gattlib/notification/NLService$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/yf/gattlib/notification/NLService$a;

.field private c:Lcom/yf/gattlib/notification/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/yf/gattlib/notification/NLService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/notification/NLService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 89
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/yf/gattlib/notification/NLService;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 120
    const-string v0, "callback action"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 123
    const-string v0, "com.yf.gattlib.intent.action.NLSERVICE_RESULT"

    move-object v1, v0

    .line 126
    :goto_0
    const-string v0, "command"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v3, "get notification"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 129
    const-string v0, "notification uuid"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 131
    sget-object v3, Lcom/yf/gattlib/notification/NLService;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    if-nez v0, :cond_1

    .line 183
    :cond_0
    :goto_1
    return-void

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/yf/gattlib/notification/NLService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 137
    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 138
    iget-object v6, p0, Lcom/yf/gattlib/notification/NLService;->c:Lcom/yf/gattlib/notification/f;

    new-instance v7, Lcom/yf/gattlib/notification/m;

    invoke-direct {v7, v5}, Lcom/yf/gattlib/notification/m;-><init>(Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v6, v7, v0}, Lcom/yf/gattlib/notification/f;->a(Lcom/yf/gattlib/notification/m;I)Lcom/yf/gattlib/notification/e;

    move-result-object v5

    .line 140
    invoke-static {v5}, Lcom/yf/gattlib/notification/e;->a(Lcom/yf/gattlib/notification/e;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 141
    sget-object v2, Lcom/yf/gattlib/notification/NLService;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get notification 2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    const-string v1, "command"

    const-string v2, "get notification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v1, "notification"

    iget-object v2, v5, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 148
    invoke-direct {p0, p2, v0}, Lcom/yf/gattlib/notification/NLService;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 149
    invoke-direct {p0, v0}, Lcom/yf/gattlib/notification/NLService;->a(Landroid/content/Intent;)V

    goto :goto_1

    .line 137
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 155
    :cond_3
    const-string v3, "get all notification"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 157
    invoke-virtual {p0}, Lcom/yf/gattlib/notification/NLService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 159
    array-length v0, v3

    new-array v4, v0, [Lcom/yf/gattlib/notification/NotificationContent;

    .line 161
    array-length v5, v3

    move v0, v2

    :goto_3
    if-ge v0, v5, :cond_5

    aget-object v6, v3, v0

    .line 162
    iget-object v7, p0, Lcom/yf/gattlib/notification/NLService;->c:Lcom/yf/gattlib/notification/f;

    new-instance v8, Lcom/yf/gattlib/notification/m;

    invoke-direct {v8, v6}, Lcom/yf/gattlib/notification/m;-><init>(Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v7, v8}, Lcom/yf/gattlib/notification/f;->a(Lcom/yf/gattlib/notification/m;)Lcom/yf/gattlib/notification/e;

    move-result-object v6

    .line 164
    invoke-static {v6}, Lcom/yf/gattlib/notification/e;->a(Lcom/yf/gattlib/notification/e;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 161
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 167
    :cond_4
    iget-object v6, v6, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    aput-object v6, v4, v2

    goto :goto_4

    .line 169
    :cond_5
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yf/gattlib/notification/NotificationContent;

    .line 171
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    const-string v1, "command"

    const-string v3, "get all notification"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-direct {p0, p2, v2}, Lcom/yf/gattlib/notification/NLService;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 175
    const-string v1, "all notification"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 177
    invoke-direct {p0, v2}, Lcom/yf/gattlib/notification/NLService;->a(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 180
    :cond_6
    sget-object v1, Lcom/yf/gattlib/notification/NLService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/a/a;->b(Landroid/content/Intent;)V

    .line 80
    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 83
    const-string v0, "user data 1"

    const-string v1, "user data 1"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v0, "user data 2"

    const-string v1, "user data 2"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/yf/gattlib/notification/NLService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/yf/gattlib/notification/NLService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/yf/gattlib/notification/f;->a()Lcom/yf/gattlib/notification/f;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/notification/NLService;->c:Lcom/yf/gattlib/notification/f;

    .line 39
    iget-object v0, p0, Lcom/yf/gattlib/notification/NLService;->c:Lcom/yf/gattlib/notification/f;

    const-string v1, "NLService"

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/notification/f;->a(Ljava/lang/String;)Z

    .line 40
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/yf/gattlib/notification/NLService$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yf/gattlib/notification/NLService$a;-><init>(Lcom/yf/gattlib/notification/NLService;Lcom/yf/gattlib/notification/NLService$1;)V

    iput-object v0, p0, Lcom/yf/gattlib/notification/NLService;->b:Lcom/yf/gattlib/notification/NLService$a;

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    const-string v1, "com.yf.gattlib.intent.action.NLSERVICE_COMMAND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/notification/NLService;->b:Lcom/yf/gattlib/notification/NLService$a;

    invoke-virtual {v1, v2, v0}, Lcom/yf/gattlib/a/a;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 47
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    .line 32
    sget-object v0, Lcom/yf/gattlib/notification/NLService;->a:Ljava/lang/String;

    const-string v1, "NLService running..."

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/yf/gattlib/notification/NLService;->b()V

    .line 34
    invoke-direct {p0}, Lcom/yf/gattlib/notification/NLService;->c()V

    .line 35
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/yf/gattlib/notification/NLService;->a:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/yf/gattlib/notification/NLService;->c:Lcom/yf/gattlib/notification/f;

    invoke-virtual {v0}, Lcom/yf/gattlib/notification/f;->b()V

    .line 53
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/notification/NLService;->b:Lcom/yf/gattlib/notification/NLService$a;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/a/a;->b(Landroid/content/BroadcastReceiver;)V

    .line 54
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    .line 55
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yf/gattlib/notification/NLService;->c:Lcom/yf/gattlib/notification/f;

    const-string v1, "NLService"

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/notification/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/notification/NLService;->c:Lcom/yf/gattlib/notification/f;

    new-instance v1, Lcom/yf/gattlib/notification/m;

    invoke-direct {v1, p1}, Lcom/yf/gattlib/notification/m;-><init>(Landroid/service/notification/StatusBarNotification;)V

    const-string v2, "posted"

    invoke-static {v0, v1, v2}, Lcom/yf/gattlib/notification/a;->a(Lcom/yf/gattlib/notification/f;Lcom/yf/gattlib/notification/m;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method
