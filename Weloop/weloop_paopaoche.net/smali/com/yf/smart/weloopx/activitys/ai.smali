.class Lcom/yf/smart/weloopx/activitys/ai;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/WelcomeActivity$a;

.field final synthetic b:Lcom/yf/smart/weloopx/activitys/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/WelcomeActivity;Lcom/yf/smart/weloopx/activitys/WelcomeActivity$a;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/ai;->b:Lcom/yf/smart/weloopx/activitys/WelcomeActivity;

    iput-object p2, p0, Lcom/yf/smart/weloopx/activitys/ai;->a:Lcom/yf/smart/weloopx/activitys/WelcomeActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ai;->b:Lcom/yf/smart/weloopx/activitys/WelcomeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/activitys/WelcomeActivity;->a(Lcom/yf/smart/weloopx/activitys/WelcomeActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 43
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ai;->b:Lcom/yf/smart/weloopx/activitys/WelcomeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/activitys/WelcomeActivity;->a(Lcom/yf/smart/weloopx/activitys/WelcomeActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v1, p1, :cond_0

    const v0, 0x7f020120

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 42
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 43
    :cond_0
    const v0, 0x7f020121

    goto :goto_1

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ai;->a:Lcom/yf/smart/weloopx/activitys/WelcomeActivity$a;

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/activitys/WelcomeActivity$a;->d(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/activitys/WelcomeActivity$b;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/WelcomeActivity$b;->a()V

    .line 48
    return-void
.end method

.method public a(IFI)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
