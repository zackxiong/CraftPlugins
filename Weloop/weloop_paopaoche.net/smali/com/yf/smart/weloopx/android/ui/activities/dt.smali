.class Lcom/yf/smart/weloopx/android/ui/activities/dt;
.super Lcom/yf/smart/weloopx/b/b/g;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dt;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yf/smart/weloopx/data/models/UserProfileResult;)V
    .locals 6

    .prologue
    const v5, 0x7f0702b6

    const/4 v4, 0x1

    .line 906
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/c;->e(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/UserData;

    move-result-object v0

    .line 908
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getStature()I

    move-result v1

    .line 909
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getWeight()I

    move-result v2

    .line 910
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getBirthday()Ljava/lang/String;

    move-result-object v3

    .line 911
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getCalorieValue()I

    move-result v0

    .line 912
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dt;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v0, v5}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;I)V

    .line 914
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 915
    const-string v1, "set_target"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 916
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dt;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    const-class v2, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 917
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dt;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 924
    :cond_1
    :goto_0
    return-void

    .line 918
    :cond_2
    if-nez v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dt;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v0, v5}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;I)V

    .line 920
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dt;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    const-class v2, Lcom/yf/smart/weloopx/activitys/TargetSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 921
    const-string v1, "to_main"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 922
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dt;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 928
    invoke-static {p1}, Lcom/yf/smart/weloopx/f/n;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 929
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/event/InvalidAccessTokenEvent;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/event/InvalidAccessTokenEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/lib/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 946
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    const-string v0, "Internal Server Error"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/c;->e(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/UserData;

    move-result-object v0

    .line 935
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getHeadPicAddress()Ljava/lang/String;

    move-result-object v1

    .line 936
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getNickname()Ljava/lang/String;

    move-result-object v2

    .line 937
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getSex()I

    move-result v0

    .line 938
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 939
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dt;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    const v1, 0x7f0702b6

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;I)V

    .line 940
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dt;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    const-class v2, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 941
    const-string v1, "set_target"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 942
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dt;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
