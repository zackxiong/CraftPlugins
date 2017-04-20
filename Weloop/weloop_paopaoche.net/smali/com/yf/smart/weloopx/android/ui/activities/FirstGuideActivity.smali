.class public Lcom/yf/smart/weloopx/android/ui/activities/FirstGuideActivity;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"

# interfaces
.implements Lcom/yf/smart/weloopx/android/ui/c/bi$a;


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Lcom/yf/smart/weloopx/android/ui/a/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/FirstGuideActivity;->finish()V

    .line 40
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FirstGuideActivity;->b:Lcom/yf/smart/weloopx/android/ui/a/g;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/a/g;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/FirstGuideActivity;->finish()V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FirstGuideActivity;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/FirstGuideActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 35
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/FirstGuideActivity;->requestWindowFeature(I)Z

    .line 23
    const v0, 0x7f03006d

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/FirstGuideActivity;->setContentView(I)V

    .line 24
    const v0, 0x7f0d021d

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/FirstGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FirstGuideActivity;->a:Landroid/support/v4/view/ViewPager;

    .line 25
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/a/g;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/FirstGuideActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/android/ui/a/g;-><init>(Landroid/app/FragmentManager;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FirstGuideActivity;->b:Lcom/yf/smart/weloopx/android/ui/a/g;

    .line 26
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FirstGuideActivity;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/FirstGuideActivity;->b:Lcom/yf/smart/weloopx/android/ui/a/g;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/ag;)V

    .line 27
    return-void
.end method
