.class public Lcom/yf/gattlib/notification/s;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/notification/k;


# instance fields
.field private a:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/notification/s;->a:Landroid/content/pm/PackageManager;

    .line 14
    return-void
.end method


# virtual methods
.method public a(Lcom/yf/gattlib/notification/e;)Lcom/yf/gattlib/notification/e;
    .locals 4

    .prologue
    .line 18
    invoke-static {p1}, Lcom/yf/gattlib/notification/e;->a(Lcom/yf/gattlib/notification/e;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/notification/s;->a:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Lcom/yf/gattlib/notification/e;->b:Lcom/yf/gattlib/notification/m;

    invoke-virtual {v1}, Lcom/yf/gattlib/notification/m;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/yf/gattlib/notification/s;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v1, p1, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    iget-object v1, v1, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    iget-object v2, v2, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    iget-object v1, p1, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    iget-object v1, v1, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    iget-object v2, v2, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 33
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    iput-object v0, v1, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    .line 37
    :cond_1
    :goto_1
    return-object p1

    .line 26
    :cond_2
    iget-object v1, p1, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    iget-object v1, v1, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    iget-object v2, v2, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27
    iget-object v1, p1, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    iget-object v2, p1, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    iget-object v2, v2, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    goto :goto_1

    .line 29
    :cond_3
    iget-object v1, p1, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    iget-object v3, v3, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    iget-object v3, v3, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
