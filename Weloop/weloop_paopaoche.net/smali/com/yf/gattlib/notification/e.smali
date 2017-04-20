.class public Lcom/yf/gattlib/notification/e;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:Lcom/yf/gattlib/notification/e;


# instance fields
.field public b:Lcom/yf/gattlib/notification/m;

.field public c:Lcom/yf/gattlib/notification/NotificationContent;

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/yf/gattlib/notification/e;

    invoke-direct {v0}, Lcom/yf/gattlib/notification/e;-><init>()V

    sput-object v0, Lcom/yf/gattlib/notification/e;->a:Lcom/yf/gattlib/notification/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yf/gattlib/notification/e;)Z
    .locals 1

    .prologue
    .line 13
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    iget-object v0, v0, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    iget-object v0, v0, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/yf/gattlib/notification/e;)Z
    .locals 1

    .prologue
    .line 19
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/yf/gattlib/notification/e;->b:Lcom/yf/gattlib/notification/m;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
