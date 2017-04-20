.class Lcom/yf/smart/weloopx/activitys/ah;
.super Lcom/yf/smart/weloopx/b/b/p;
.source "ProGuard"


# instance fields
.field final synthetic a:Landroid/app/DialogFragment;

.field final synthetic b:Lcom/yf/smart/weloopx/data/models/UserData;

.field final synthetic c:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;Landroid/app/DialogFragment;Lcom/yf/smart/weloopx/data/models/UserData;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/ah;->c:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    iput-object p2, p0, Lcom/yf/smart/weloopx/activitys/ah;->a:Landroid/app/DialogFragment;

    iput-object p3, p0, Lcom/yf/smart/weloopx/activitys/ah;->b:Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ah;->a:Landroid/app/DialogFragment;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 285
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ah;->c:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    const v1, 0x7f070214

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->d(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;I)V

    .line 287
    return-void
.end method

.method public a(Lcom/b/a/d/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/e",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ah;->a:Landroid/app/DialogFragment;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 262
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ah;->c:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    invoke-static {v0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->e(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ah;->c:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    const-class v2, Lcom/yf/smart/weloopx/activitys/TargetSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    const-string v1, "to_main"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 266
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ah;->c:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    invoke-static {v1}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->f(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/ah;->c:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    invoke-static {v2}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->g(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 267
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ah;->c:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->startActivity(Landroid/content/Intent;)V

    .line 276
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ah;->c:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ah;->b:Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->a(Lcom/yf/smart/weloopx/data/models/UserData;)V

    .line 280
    :goto_1
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ah;->c:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ah;->c:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    const v2, 0x7f070255

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/da;->a(Landroid/app/FragmentManager;Ljava/lang/String;)Z

    move-result v0

    .line 272
    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ah;->c:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->finish()V

    goto :goto_0

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ah;->c:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    const v1, 0x7f070214

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->c(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;I)V

    goto :goto_1
.end method
