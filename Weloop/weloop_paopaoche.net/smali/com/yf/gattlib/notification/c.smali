.class public Lcom/yf/gattlib/notification/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/notification/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/notification/c$1;,
        Lcom/yf/gattlib/notification/c$e;,
        Lcom/yf/gattlib/notification/c$c;,
        Lcom/yf/gattlib/notification/c$d;,
        Lcom/yf/gattlib/notification/c$b;,
        Lcom/yf/gattlib/notification/c$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/yf/gattlib/notification/i;

.field private c:Lcom/yf/gattlib/notification/l;

.field private d:Lcom/yf/gattlib/notification/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, ""

    sput-object v0, Lcom/yf/gattlib/notification/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/yf/gattlib/notification/i;

    invoke-direct {v0}, Lcom/yf/gattlib/notification/i;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/notification/c;->b:Lcom/yf/gattlib/notification/i;

    .line 22
    new-instance v0, Lcom/yf/gattlib/notification/l;

    invoke-direct {v0}, Lcom/yf/gattlib/notification/l;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/notification/c;->c:Lcom/yf/gattlib/notification/l;

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 28
    new-instance v0, Lcom/yf/gattlib/notification/c$e;

    invoke-direct {v0, p0, v2}, Lcom/yf/gattlib/notification/c$e;-><init>(Lcom/yf/gattlib/notification/c;Lcom/yf/gattlib/notification/c$1;)V

    iput-object v0, p0, Lcom/yf/gattlib/notification/c;->d:Lcom/yf/gattlib/notification/c$a;

    .line 38
    :goto_0
    return-void

    .line 29
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_2

    .line 30
    const-string v0, "htc"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    new-instance v0, Lcom/yf/gattlib/notification/c$b;

    invoke-direct {v0, p0, v2}, Lcom/yf/gattlib/notification/c$b;-><init>(Lcom/yf/gattlib/notification/c;Lcom/yf/gattlib/notification/c$1;)V

    iput-object v0, p0, Lcom/yf/gattlib/notification/c;->d:Lcom/yf/gattlib/notification/c$a;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/yf/gattlib/notification/c$d;

    invoke-direct {v0, p0, v2}, Lcom/yf/gattlib/notification/c$d;-><init>(Lcom/yf/gattlib/notification/c;Lcom/yf/gattlib/notification/c$1;)V

    iput-object v0, p0, Lcom/yf/gattlib/notification/c;->d:Lcom/yf/gattlib/notification/c$a;

    goto :goto_0

    .line 36
    :cond_2
    new-instance v0, Lcom/yf/gattlib/notification/c$c;

    invoke-direct {v0, p0, v2}, Lcom/yf/gattlib/notification/c$c;-><init>(Lcom/yf/gattlib/notification/c;Lcom/yf/gattlib/notification/c$1;)V

    iput-object v0, p0, Lcom/yf/gattlib/notification/c;->d:Lcom/yf/gattlib/notification/c$a;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)B
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/gattlib/notification/c;->b:Lcom/yf/gattlib/notification/i;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/notification/i;->a(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method private a(Landroid/widget/RemoteViews;Lcom/yf/gattlib/notification/NotificationContent;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yf/gattlib/notification/c;->d:Lcom/yf/gattlib/notification/c$a;

    invoke-interface {v0, p1, p2}, Lcom/yf/gattlib/notification/c$a;->a(Landroid/widget/RemoteViews;Lcom/yf/gattlib/notification/NotificationContent;)V

    .line 118
    return-void
.end method

.method private a(Lcom/yf/gattlib/notification/NotificationContent;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p1, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p1, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p1, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    iput-object v0, p1, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    .line 108
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p1, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    .line 111
    :cond_1
    iget-object v0, p1, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p1, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    .line 114
    :cond_2
    return-void

    .line 104
    :cond_3
    iget-object v0, p1, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p1, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 121
    const-string v0, "Touch for more information"

    .line 122
    const-string v1, "\u6b63\u5728\u8fd0\u884c"

    .line 123
    const-string v2, ":\u4e0b\u8f7d"

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/yf/gattlib/notification/m;)Lcom/yf/gattlib/notification/NotificationContent;
    .locals 5

    .prologue
    .line 65
    new-instance v1, Lcom/yf/gattlib/notification/NotificationContent;

    invoke-direct {v1}, Lcom/yf/gattlib/notification/NotificationContent;-><init>()V

    .line 66
    invoke-virtual {p1}, Lcom/yf/gattlib/notification/m;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/yf/gattlib/notification/NotificationContent;->e:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/yf/gattlib/notification/c;->c:Lcom/yf/gattlib/notification/l;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/notification/l;->a(Lcom/yf/gattlib/notification/m;)I

    move-result v0

    iput v0, v1, Lcom/yf/gattlib/notification/NotificationContent;->a:I

    .line 68
    invoke-virtual {p1}, Lcom/yf/gattlib/notification/m;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/gattlib/notification/c;->a(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, v1, Lcom/yf/gattlib/notification/NotificationContent;->b:B

    .line 70
    invoke-virtual {p1}, Lcom/yf/gattlib/notification/m;->a()Landroid/app/Notification;

    move-result-object v2

    .line 72
    iget-object v0, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    iget-object v0, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 75
    :goto_0
    if-eqz v0, :cond_3

    .line 76
    invoke-direct {p0, v0, v1}, Lcom/yf/gattlib/notification/c;->a(Landroid/widget/RemoteViews;Lcom/yf/gattlib/notification/NotificationContent;)V

    .line 81
    :cond_0
    :goto_1
    iget-object v3, v1, Lcom/yf/gattlib/notification/NotificationContent;->e:Ljava/lang/String;

    const-string v4, "com.tencent.mm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    iget-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v2, v1, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    iput-object v0, v1, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    .line 87
    iput-object v0, v1, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    .line 91
    :cond_1
    invoke-direct {p0, v1}, Lcom/yf/gattlib/notification/c;->a(Lcom/yf/gattlib/notification/NotificationContent;)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNotificationContent content.title = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", content.message = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 94
    return-object v1

    .line 72
    :cond_2
    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 77
    :cond_3
    iget-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 78
    iget-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method public a(Lcom/yf/gattlib/notification/e;)Lcom/yf/gattlib/notification/e;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p1, Lcom/yf/gattlib/notification/e;->b:Lcom/yf/gattlib/notification/m;

    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-object p1

    .line 45
    :cond_1
    iget-object v0, p1, Lcom/yf/gattlib/notification/e;->b:Lcom/yf/gattlib/notification/m;

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/notification/c;->a(Lcom/yf/gattlib/notification/m;)Lcom/yf/gattlib/notification/NotificationContent;

    move-result-object v0

    iput-object v0, p1, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    .line 48
    iget-object v0, p1, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    iget-object v0, v0, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/yf/gattlib/notification/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    :cond_2
    sget-object p1, Lcom/yf/gattlib/notification/e;->a:Lcom/yf/gattlib/notification/e;

    goto :goto_0
.end method
