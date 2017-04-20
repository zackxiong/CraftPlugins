.class public Lcom/yf/smart/weloopx/android/ui/activities/fp;
.super Lcom/yf/smart/weloopx/android/ui/c/g;
.source "ProGuard"


# instance fields
.field private a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Ljava/lang/String;

.field private d:Lcom/yf/smart/weloopx/android/ui/widget/u;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;-><init>()V

    .line 26
    const-string v0, "RankingFragment"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fp;->c:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/fr;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fr;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/fp;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fp;->d:Lcom/yf/smart/weloopx/android/ui/widget/u;

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/g;->onAttach(Landroid/app/Activity;)V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onAttach"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/g;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onCreate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/yf/smart/weloopx/android/ui/c/g;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onCreateView()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 61
    const v0, 0x7f030091

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    const v0, 0x7f0d016e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    const v2, 0x7f0701cd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 64
    const v0, 0x7f0d017d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    const v0, 0x7f0d013c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fp;->a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    .line 66
    const v0, 0x7f0d001d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fp;->b:Landroid/support/v4/view/ViewPager;

    .line 67
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fp;->b:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/a/m;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/fp;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yf/smart/weloopx/android/ui/a/m;-><init>(Landroid/app/FragmentManager;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/ag;)V

    .line 68
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fp;->a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/fp;->b:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/fp;->d:Lcom/yf/smart/weloopx/android/ui/widget/u;

    invoke-virtual {v0, v2, v3}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->a(Landroid/support/v4/view/ViewPager;Lcom/yf/smart/weloopx/android/ui/widget/u;)V

    .line 69
    const v0, 0x7f0d017e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 70
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 71
    const v2, 0x7f02003c

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 72
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/activities/fq;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fq;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/fp;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-object v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onResume()V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onStart()V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onStart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 44
    return-void
.end method
