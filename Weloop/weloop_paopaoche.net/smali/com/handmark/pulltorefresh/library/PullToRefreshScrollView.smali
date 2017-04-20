.class public Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
.super Lcom/handmark/pulltorefresh/library/e;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/handmark/pulltorefresh/library/e",
        "<",
        "Landroid/widget/ScrollView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/e;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/e;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;Lcom/handmark/pulltorefresh/library/e$a;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/e;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;Lcom/handmark/pulltorefresh/library/e$a;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ScrollView;
    .locals 2

    .prologue
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 54
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView$a;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    :goto_0
    sget v1, Lcom/yf/ui/R$id;->scrollview:I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setId(I)V

    .line 60
    return-object v0

    .line 56
    :cond_0
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 72
    goto :goto_0

    :cond_1
    move v0, v1

    .line 74
    goto :goto_0
.end method

.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/e$h;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$h;->a:Lcom/handmark/pulltorefresh/library/e$h;

    return-object v0
.end method
