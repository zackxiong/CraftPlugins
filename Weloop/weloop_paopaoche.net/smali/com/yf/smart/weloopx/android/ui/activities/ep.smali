.class Lcom/yf/smart/weloopx/android/ui/activities/ep;
.super Lcom/yf/smart/weloopx/b/b/g;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/el;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/el;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ep;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yf/smart/weloopx/data/models/UserProfileResult;)V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ep;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->d(Lcom/yf/smart/weloopx/android/ui/activities/el;)V

    .line 530
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ep;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/el;->a(Lcom/yf/smart/weloopx/android/ui/activities/el;Lcom/yf/smart/weloopx/data/models/UserProfileResult;)Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    .line 531
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ep;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->h(Lcom/yf/smart/weloopx/android/ui/activities/el;)V

    .line 532
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ep;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->d(Lcom/yf/smart/weloopx/android/ui/activities/el;)V

    .line 537
    invoke-static {p1}, Lcom/yf/smart/weloopx/f/n;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/event/InvalidAccessTokenEvent;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/event/InvalidAccessTokenEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/lib/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    invoke-static {p1}, Lcom/yf/smart/weloopx/f/n;->e(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/ServerResult;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ep;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/f/n;->a(Lcom/yf/smart/weloopx/data/models/ServerResult;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 543
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ep;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->b(Lcom/yf/smart/weloopx/android/ui/activities/el;Ljava/lang/String;)V

    goto :goto_0
.end method
