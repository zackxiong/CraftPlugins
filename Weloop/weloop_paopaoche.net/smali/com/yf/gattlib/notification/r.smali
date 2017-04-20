.class public Lcom/yf/gattlib/notification/r;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/notification/k;


# instance fields
.field private a:Lcom/yf/gattlib/notification/NotificationContent;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yf/gattlib/notification/e;)Lcom/yf/gattlib/notification/e;
    .locals 4

    .prologue
    .line 12
    iget-object v0, p1, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/yf/gattlib/notification/e;->e:I

    if-eqz v0, :cond_1

    .line 27
    :cond_0
    :goto_0
    return-object p1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/notification/r;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yf/gattlib/notification/r;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/yf/gattlib/notification/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yf/gattlib/notification/r;->a:Lcom/yf/gattlib/notification/NotificationContent;

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, p1, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    iget-object v1, p0, Lcom/yf/gattlib/notification/r;->a:Lcom/yf/gattlib/notification/NotificationContent;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/notification/NotificationContent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/yf/gattlib/notification/r;->c:J

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 20
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    goto :goto_0

    .line 24
    :cond_2
    iget-object v0, p1, Lcom/yf/gattlib/notification/e;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/yf/gattlib/notification/r;->b:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    iput-object v0, p0, Lcom/yf/gattlib/notification/r;->a:Lcom/yf/gattlib/notification/NotificationContent;

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yf/gattlib/notification/r;->c:J

    goto :goto_0
.end method
