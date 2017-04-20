.class Lcom/yf/smart/weloopx/android/ui/activities/dj;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/di;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/di;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dj;->a:Lcom/yf/smart/weloopx/android/ui/activities/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dj;->a:Lcom/yf/smart/weloopx/android/ui/activities/di;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/di;->a(Lcom/yf/smart/weloopx/android/ui/activities/di;)Lcom/yf/smart/weloopx/android/ui/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/a/f;->c()V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoalFragment viewPager.getCurrentItem = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dj;->a:Lcom/yf/smart/weloopx/android/ui/activities/di;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/di;->b(Lcom/yf/smart/weloopx/android/ui/activities/di;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dailyFragmentAdapter.getCount()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dj;->a:Lcom/yf/smart/weloopx/android/ui/activities/di;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/di;->a(Lcom/yf/smart/weloopx/android/ui/activities/di;)Lcom/yf/smart/weloopx/android/ui/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/a/f;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dj;->a:Lcom/yf/smart/weloopx/android/ui/activities/di;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/di;->b(Lcom/yf/smart/weloopx/android/ui/activities/di;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dj;->a:Lcom/yf/smart/weloopx/android/ui/activities/di;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/di;->a(Lcom/yf/smart/weloopx/android/ui/activities/di;)Lcom/yf/smart/weloopx/android/ui/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/a/f;->b()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dj;->a:Lcom/yf/smart/weloopx/android/ui/activities/di;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/di;->a(Lcom/yf/smart/weloopx/android/ui/activities/di;)Lcom/yf/smart/weloopx/android/ui/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/a/f;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 133
    if-gez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dj;->a:Lcom/yf/smart/weloopx/android/ui/activities/di;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/di;->b(Lcom/yf/smart/weloopx/android/ui/activities/di;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 138
    :cond_1
    return-void
.end method
