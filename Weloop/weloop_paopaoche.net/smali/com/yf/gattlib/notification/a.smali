.class public final Lcom/yf/gattlib/notification/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Lcom/yf/gattlib/notification/NotificationContent;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yf.gattlib.intent.action.NLSERVICE_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v1, "command"

    const-string v2, "get notification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v1, "notification"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 28
    const-string v1, "notification flag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/a/a;->b(Landroid/content/Intent;)V

    .line 30
    return-void
.end method

.method public static a(Lcom/yf/gattlib/notification/f;Lcom/yf/gattlib/notification/m;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/yf/gattlib/notification/f;->a(Lcom/yf/gattlib/notification/m;Ljava/lang/String;)Lcom/yf/gattlib/notification/e;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/yf/gattlib/notification/e;->a(Lcom/yf/gattlib/notification/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    :goto_0
    return-void

    .line 15
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.yf.gattlib.intent.action.NLSERVICE_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v2, "command"

    const-string v3, "get notification"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    const-string v2, "notification"

    iget-object v0, v0, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 19
    const-string v0, "notification flag"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/a/a;->b(Landroid/content/Intent;)V

    goto :goto_0
.end method
