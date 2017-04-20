.class public Lcom/yf/lib/ui/views/BottomTabLayout;
.super Landroid/widget/LinearLayout;
.source "ProGuard"


# instance fields
.field private a:Lcom/yf/lib/ui/fragments/FragmentTabHost;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yf/lib/ui/views/BottomTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yf/lib/ui/views/BottomTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-virtual {p0, v2}, Lcom/yf/lib/ui/views/BottomTabLayout;->setOrientation(I)V

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/yf/lib/R$layout;->libyf_bottom_tab_layout:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 34
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/yf/lib/ui/views/BottomTabLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/ui/fragments/FragmentTabHost;

    iput-object v0, p0, Lcom/yf/lib/ui/views/BottomTabLayout;->a:Lcom/yf/lib/ui/fragments/FragmentTabHost;

    .line 35
    sget v0, Lcom/yf/lib/R$id;->libyf_divider:I

    invoke-virtual {p0, v0}, Lcom/yf/lib/ui/views/BottomTabLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/ui/views/BottomTabLayout;->b:Landroid/view/View;

    .line 36
    sget-object v0, Lcom/yf/lib/R$styleable;->BottomTabLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 38
    :try_start_0
    sget v0, Lcom/yf/lib/R$styleable;->BottomTabLayout_libyf_BottomTabLayout_dividerHeight:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 40
    if-lez v0, :cond_0

    .line 41
    iget-object v2, p0, Lcom/yf/lib/ui/views/BottomTabLayout;->b:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object v2, p0, Lcom/yf/lib/ui/views/BottomTabLayout;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/yf/lib/ui/views/BottomTabLayout;->b:Landroid/view/View;

    sget v2, Lcom/yf/lib/R$styleable;->BottomTabLayout_libyf_BottomTabLayout_dividerDrawable:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void

    .line 48
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public getDivider()Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yf/lib/ui/views/BottomTabLayout;->b:Landroid/view/View;

    return-object v0
.end method

.method public getTabHost()Lcom/yf/lib/ui/fragments/FragmentTabHost;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yf/lib/ui/views/BottomTabLayout;->a:Lcom/yf/lib/ui/fragments/FragmentTabHost;

    return-object v0
.end method

.method public setup(Landroid/app/FragmentManager;)V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yf/lib/ui/views/BottomTabLayout;->a:Lcom/yf/lib/ui/fragments/FragmentTabHost;

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/BottomTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/yf/lib/R$id;->realtabcontent:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->a(Landroid/content/Context;Landroid/app/FragmentManager;I)V

    .line 58
    iget-object v0, p0, Lcom/yf/lib/ui/views/BottomTabLayout;->a:Lcom/yf/lib/ui/fragments/FragmentTabHost;

    invoke-virtual {v0}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    return-void
.end method
