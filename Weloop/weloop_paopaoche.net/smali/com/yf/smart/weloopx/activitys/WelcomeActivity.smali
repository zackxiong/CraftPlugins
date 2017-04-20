.class public Lcom/yf/smart/weloopx/activitys/WelcomeActivity;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/activitys/WelcomeActivity$b;,
        Lcom/yf/smart/weloopx/activitys/WelcomeActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/WelcomeActivity;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/WelcomeActivity;->a:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 34
    const v0, 0x7f0d0169

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/WelcomeActivity;->a:Landroid/view/ViewGroup;

    .line 35
    const v0, 0x7f0d0168

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 37
    new-instance v1, Lcom/yf/smart/weloopx/activitys/WelcomeActivity$a;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/WelcomeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/yf/smart/weloopx/activitys/WelcomeActivity$a;-><init>(Lcom/yf/smart/weloopx/activitys/WelcomeActivity;Landroid/app/FragmentManager;)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/ag;)V

    .line 39
    new-instance v2, Lcom/yf/smart/weloopx/activitys/ai;

    invoke-direct {v2, p0, v1}, Lcom/yf/smart/weloopx/activitys/ai;-><init>(Lcom/yf/smart/weloopx/activitys/WelcomeActivity;Lcom/yf/smart/weloopx/activitys/WelcomeActivity$a;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 57
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/WelcomeActivity;->requestWindowFeature(I)Z

    .line 29
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/WelcomeActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/WelcomeActivity;->a()V

    .line 31
    return-void
.end method

.method public onEnterClicked(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/d/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/d/a;->i()Ljava/lang/Class;

    move-result-object v0

    .line 63
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/activitys/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 65
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/WelcomeActivity;->finish()V

    .line 71
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/activitys/RegisterStart;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/WelcomeActivity;->finish()V

    goto :goto_0
.end method
