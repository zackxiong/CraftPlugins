.class public final Lcom/yf/gattlib/notification/m;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/app/Notification;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/notification/m;->a:Landroid/app/Notification;

    .line 16
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    iput v0, p0, Lcom/yf/gattlib/notification/m;->b:I

    .line 17
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/notification/m;->c:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yf/gattlib/notification/m;->a:Landroid/app/Notification;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/yf/gattlib/notification/m;->b:I

    .line 34
    return-void
.end method

.method public a(Landroid/app/Notification;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/yf/gattlib/notification/m;->a:Landroid/app/Notification;

    .line 26
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/yf/gattlib/notification/m;->c:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/yf/gattlib/notification/m;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yf/gattlib/notification/m;->c:Ljava/lang/String;

    return-object v0
.end method
