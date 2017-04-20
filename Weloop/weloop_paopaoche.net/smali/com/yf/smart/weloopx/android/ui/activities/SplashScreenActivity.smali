.class public Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/yf/smart/weloopx/g/d;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const-string v0, "SplashScreenActivity"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->a:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/gd;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/gd;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->d:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->e()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 121
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 122
    const-string v1, "accessToken"

    invoke-virtual {v0, v1, p1}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v1, Lcom/b/a/b;

    invoke-direct {v1}, Lcom/b/a/b;-><init>()V

    .line 124
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->k()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/android/ui/activities/ge;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ge;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 165
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->h()V

    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->i()V

    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->setContentView(I)V

    .line 68
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->f()V

    .line 69
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 79
    const v0, 0x7f0d011e

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    :try_start_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->j()V

    .line 100
    const-string v0, "flag_first"

    invoke-virtual {p0, v0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "FIRST"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->b()V

    goto :goto_0

    .line 110
    :cond_1
    new-instance v1, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->b:Lcom/yf/smart/weloopx/g/d;

    .line 111
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->b:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v1, p0}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->h()V

    goto :goto_0

    .line 117
    :cond_2
    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 170
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->finish()V

    .line 171
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 175
    const-string v0, "SplashScreenActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/d/a;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/d/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->a()V

    .line 184
    :goto_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->finish()V

    .line 185
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->a()V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/activitys/WelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 190
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->finish()V

    .line 191
    return-void
.end method

.method private k()Z
    .locals 3

    .prologue
    .line 194
    const-string v0, "flag_first"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 195
    const-string v1, "FIRST"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 201
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/c;->e(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/UserData;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getNickname()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    :goto_0
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 219
    invoke-static {}, Lcom/yf/smart/weloopx/app/a;->a()Lcom/yf/smart/weloopx/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/app/a;->b()V

    .line 220
    return-void

    .line 206
    :cond_0
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getWeight()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getStature()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getBirthday()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getCalorieValue()I

    move-result v0

    if-nez v0, :cond_3

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/activitys/TargetSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    const-string v1, "to_main"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 214
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    const-string v1, "LOGIN_SUCCESS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 225
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/d/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/d/a;->i()Ljava/lang/Class;

    move-result-object v0

    .line 231
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 232
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->finish()V

    .line 233
    return-void

    .line 228
    :cond_0
    const-class v0, Lcom/yf/smart/weloopx/activitys/RegisterStart;

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/d/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/d/a;->i()Ljava/lang/Class;

    move-result-object v0

    .line 238
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 242
    :goto_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->finish()V

    .line 243
    return-void

    .line 240
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/activitys/RegisterStart;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->requestWindowFeature(I)Z

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const-string v0, "SplashScreenActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->c:Landroid/os/Handler;

    .line 51
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->d()V

    .line 52
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->g()V

    .line 53
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "SplashScreenActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 76
    return-void
.end method
