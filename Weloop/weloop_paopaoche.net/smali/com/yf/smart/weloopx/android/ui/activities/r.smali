.class public Lcom/yf/smart/weloopx/android/ui/activities/r;
.super Landroid/app/Activity;
.source "ProGuard"


# instance fields
.field private final a:Ljava/lang/String;

.field public v:Lcom/yf/smart/weloopx/android/ui/c/aw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/r;->a:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 131
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 133
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 134
    const-string v1, "Activity"

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    const-string v1, "mFragments"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 136
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 138
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 141
    const-string v2, "noteStateNotSaved"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 142
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v0, "DLOutState"

    const-string v1, "Successful call for noteStateNotSaved!!!"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    const-string v1, "DLOutState"

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/yf/smart/weloopx/data/models/ServerResult;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    .line 68
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/d/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/ServerResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/ServerResult;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yf/smart/weloopx/f/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->startActivity(Landroid/content/Intent;)V

    .line 52
    return-void
.end method

.method protected b(I)V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/t;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/t;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/r;I)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    .line 57
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 58
    const-class v1, Lcom/yf/smart/weloopx/data/models/ServerResult;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/ServerResult;

    .line 59
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->a(Lcom/yf/smart/weloopx/data/models/ServerResult;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 63
    :goto_0
    return-object p1

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/android/ui/c/aw;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/r;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/r;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/android/ui/c/aw;->e(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method protected e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/s;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/s;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/r;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/r;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 81
    return-void
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 112
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 119
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->a()V

    .line 120
    return-void
.end method
