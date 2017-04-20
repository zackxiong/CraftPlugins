.class Lcom/yf/smart/weloopx/android/ui/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/b;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/b;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c;->b:Lcom/yf/smart/weloopx/android/ui/b;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/c;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 91
    :try_start_0
    invoke-static {}, Lcom/yf/gattlib/c/f;->G()Z

    move-result v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c;->b:Lcom/yf/smart/weloopx/android/ui/b;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/b;->a(Lcom/yf/smart/weloopx/android/ui/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 111
    :goto_0
    return-void

    .line 98
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c;->b:Lcom/yf/smart/weloopx/android/ui/b;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/b;->a(Lcom/yf/smart/weloopx/android/ui/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 102
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 103
    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c;->b:Lcom/yf/smart/weloopx/android/ui/b;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/b;->a(Lcom/yf/smart/weloopx/android/ui/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 109
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c;->a:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    throw v0
.end method
