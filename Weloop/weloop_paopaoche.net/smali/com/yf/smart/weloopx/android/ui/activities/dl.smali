.class Lcom/yf/smart/weloopx/android/ui/activities/dl;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/d/b$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dl;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dl;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    .line 150
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dl;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dl;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/FirstGuideActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dl;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 155
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "FIRST_GUIDE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 157
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 142
    if-nez p2, :cond_0

    .line 143
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dl;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    .line 145
    :cond_0
    return-void
.end method
