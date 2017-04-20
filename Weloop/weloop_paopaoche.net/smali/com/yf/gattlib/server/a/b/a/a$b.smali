.class Lcom/yf/gattlib/server/a/b/a/a$b;
.super Lcom/yf/gattlib/l/a;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/server/a/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/gattlib/server/a/b/a/a;


# direct methods
.method private constructor <init>(Lcom/yf/gattlib/server/a/b/a/a;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/yf/gattlib/server/a/b/a/a$b;->a:Lcom/yf/gattlib/server/a/b/a/a;

    invoke-direct {p0}, Lcom/yf/gattlib/l/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/gattlib/server/a/b/a/a;Lcom/yf/gattlib/server/a/b/a/b;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/yf/gattlib/server/a/b/a/a$b;-><init>(Lcom/yf/gattlib/server/a/b/a/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 159
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a$b;->a:Lcom/yf/gattlib/server/a/b/a/a;

    invoke-static {v0}, Lcom/yf/gattlib/server/a/b/a/a;->a(Lcom/yf/gattlib/server/a/b/a/a;)Lcom/yf/gattlib/server/a/b/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/server/a/b/a/d;->b()V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a$b;->a:Lcom/yf/gattlib/server/a/b/a/a;

    invoke-static {v0}, Lcom/yf/gattlib/server/a/b/a/a;->b(Lcom/yf/gattlib/server/a/b/a/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a$b;->a:Lcom/yf/gattlib/server/a/b/a/a;

    invoke-static {v0}, Lcom/yf/gattlib/server/a/b/a/a;->a(Lcom/yf/gattlib/server/a/b/a/a;)Lcom/yf/gattlib/server/a/b/a/d;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/yf/gattlib/server/a/b/a/d;->a(J)V

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 170
    const-string v1, "com.yf.gattlib.intent.action.MY_ACTION_RESULT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.yf.gattlib.intent.action.NLSERVICE_RESULT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 172
    :goto_1
    if-eqz v0, :cond_0

    .line 176
    const-string v0, "get notification"

    const-string v1, "command"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "notification"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/notification/NotificationContent;

    .line 182
    const-string v1, "notification flag"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    iget-object v2, p0, Lcom/yf/gattlib/server/a/b/a/a$b;->a:Lcom/yf/gattlib/server/a/b/a/a;

    invoke-static {v2, v0, v1}, Lcom/yf/gattlib/server/a/b/a/a;->a(Lcom/yf/gattlib/server/a/b/a/a;Lcom/yf/gattlib/notification/NotificationContent;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
