.class public Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$1;,
        Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$b;,
        Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Landroid/support/v4/view/ViewPager$f;

.field private final d:Lcom/yf/smart/weloopx/android/ui/widget/v;

.field private e:Lcom/yf/smart/weloopx/android/ui/widget/u;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->setFillViewport(Z)V

    .line 57
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->a:I

    .line 58
    iput v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->f:I

    .line 59
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/widget/v;

    invoke-direct {v0, p1}, Lcom/yf/smart/weloopx/android/ui/widget/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->d:Lcom/yf/smart/weloopx/android/ui/widget/v;

    .line 60
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->d:Lcom/yf/smart/weloopx/android/ui/widget/v;

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v2, v1}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->addView(Landroid/view/View;II)V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;)Lcom/yf/smart/weloopx/android/ui/widget/v;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->d:Lcom/yf/smart/weloopx/android/ui/widget/v;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 92
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/ag;

    move-result-object v2

    .line 93
    new-instance v3, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$b;

    invoke-direct {v3, p0, v5}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$b;-><init>(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$1;)V

    .line 95
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/support/v4/view/ag;->b()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->e:Lcom/yf/smart/weloopx/android/ui/widget/u;

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->d:Lcom/yf/smart/weloopx/android/ui/widget/v;

    invoke-virtual {v1, v0, v5, v4}, Lcom/yf/smart/weloopx/android/ui/widget/u;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_1

    .line 98
    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->d:Lcom/yf/smart/weloopx/android/ui/widget/v;

    invoke-virtual {v4, v1}, Lcom/yf/smart/weloopx/android/ui/widget/v;->addView(Landroid/view/View;)V

    .line 102
    :cond_0
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->d:Lcom/yf/smart/weloopx/android/ui/widget/v;

    if-ne v1, v4, :cond_0

    .line 100
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->d:Lcom/yf/smart/weloopx/android/ui/widget/v;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/widget/v;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 104
    :cond_2
    return-void
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 116
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->f:I

    if-ne p1, v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->d:Lcom/yf/smart/weloopx/android/ui/widget/v;

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/android/ui/widget/v;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_1

    .line 122
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->e:Lcom/yf/smart/weloopx/android/ui/widget/u;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/yf/smart/weloopx/android/ui/widget/u;->a(ILandroid/view/View;Z)V

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->d:Lcom/yf/smart/weloopx/android/ui/widget/v;

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->f:I

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/v;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_2

    .line 126
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->e:Lcom/yf/smart/weloopx/android/ui/widget/u;

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->f:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/yf/smart/weloopx/android/ui/widget/u;->a(ILandroid/view/View;Z)V

    .line 128
    :cond_2
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->f:I

    goto :goto_0
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->d:Lcom/yf/smart/weloopx/android/ui/widget/v;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/widget/v;->getChildCount()I

    move-result v0

    .line 133
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->d:Lcom/yf/smart/weloopx/android/ui/widget/v;

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/android/ui/widget/v;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    .line 141
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 143
    :cond_2
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->a:I

    sub-int/2addr v0, v1

    .line 146
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->scrollTo(II)V

    .line 147
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->a(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;II)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->a(II)V

    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$f;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->c:Landroid/support/v4/view/ViewPager$f;

    return-object v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->b:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v4/view/ViewPager;Lcom/yf/smart/weloopx/android/ui/widget/u;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->d:Lcom/yf/smart/weloopx/android/ui/widget/v;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/widget/v;->removeAllViews()V

    .line 81
    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->e:Lcom/yf/smart/weloopx/android/ui/widget/u;

    .line 82
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->d:Lcom/yf/smart/weloopx/android/ui/widget/v;

    invoke-virtual {v0, p2}, Lcom/yf/smart/weloopx/android/ui/widget/v;->a(Lcom/yf/smart/weloopx/android/ui/widget/u;)V

    .line 84
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->b:Landroid/support/v4/view/ViewPager;

    .line 85
    if-eqz p1, :cond_0

    .line 86
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$a;-><init>(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$1;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 87
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->a()V

    .line 89
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 110
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->b:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->a(II)V

    .line 113
    :cond_0
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->c:Landroid/support/v4/view/ViewPager$f;

    .line 72
    return-void
.end method
