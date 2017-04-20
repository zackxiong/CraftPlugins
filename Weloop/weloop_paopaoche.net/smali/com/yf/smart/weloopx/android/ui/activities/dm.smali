.class Lcom/yf/smart/weloopx/android/ui/activities/dm;
.super Lcom/yf/smart/weloopx/b/b/u;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dm;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 633
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
    .line 614
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 615
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 617
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v2, Lcom/yf/smart/weloopx/data/models/CheckAccessTokenModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/CheckAccessTokenModel;

    .line 619
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/CheckAccessTokenModel;->getTokenIsValid()Ljava/lang/String;

    move-result-object v0

    .line 620
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/c;->b(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dm;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    const v1, 0x7f070134

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;I)V

    .line 623
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dm;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    const-class v2, Lcom/yf/smart/weloopx/activitys/RegisterStart;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 624
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dm;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 625
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dm;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->finish()V

    .line 628
    :cond_0
    return-void
.end method
