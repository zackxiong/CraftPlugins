.class Lcom/yf/smart/weloopx/android/ui/activities/ge;
.super Lcom/b/a/d/a/d;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/d/a/d",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ge;->a:Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJZ)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ge;->a:Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;)V

    .line 163
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
    .line 138
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 139
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ge;->a:Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;)V

    .line 158
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ge;->a:Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;)V

    goto :goto_0

    .line 149
    :cond_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 150
    const-class v2, Lcom/yf/smart/weloopx/data/models/CheckAccessTokenModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/CheckAccessTokenModel;

    .line 151
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/CheckAccessTokenModel;->getTokenIsValid()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ge;->a:Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;)V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ge;->a:Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;->c()V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method
