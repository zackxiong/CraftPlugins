.class public Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
.super Lcom/handmark/pulltorefresh/library/d;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshListView$a;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshListView$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/handmark/pulltorefresh/library/d",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/handmark/pulltorefresh/library/a/d;

.field private c:Lcom/handmark/pulltorefresh/library/a/d;

.field private d:Landroid/widget/FrameLayout;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/d;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/d;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;Lcom/handmark/pulltorefresh/library/e$a;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/d;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;Lcom/handmark/pulltorefresh/library/e$a;)V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method protected synthetic a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/res/TypedArray;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 227
    invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/d;->a(Landroid/content/res/TypedArray;)V

    .line 229
    sget v0, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrListViewExtrasEnabled:I

    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->e:Z

    .line 231
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->e:Z

    if-eqz v0, :cond_0

    .line 232
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 236
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 237
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/handmark/pulltorefresh/library/e$b;->b:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {p0, v0, v3, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->b:Lcom/handmark/pulltorefresh/library/a/d;

    .line 238
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->b:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v0, v6}, Lcom/handmark/pulltorefresh/library/a/d;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->b:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 242
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->d:Landroid/widget/FrameLayout;

    .line 243
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/handmark/pulltorefresh/library/e$b;->c:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {p0, v0, v2, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->c:Lcom/handmark/pulltorefresh/library/a/d;

    .line 244
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->c:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v0, v6}, Lcom/handmark/pulltorefresh/library/a/d;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->d:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->c:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    sget v0, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrScrollingWhileRefreshingEnabled:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    invoke-virtual {p0, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setScrollingWhileRefreshingEnabled(Z)V

    .line 255
    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 73
    iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getShowViewWhileRefreshing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    :cond_0
    invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/d;->a(Z)V

    .line 128
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    invoke-super {p0, v2}, Lcom/handmark/pulltorefresh/library/d;->a(Z)V

    .line 83
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getCurrentMode()Lcom/handmark/pulltorefresh/library/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/e$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 94
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getHeaderLayout()Lcom/handmark/pulltorefresh/library/a/d;

    move-result-object v4

    .line 95
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->b:Lcom/handmark/pulltorefresh/library/a/d;

    .line 96
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->c:Lcom/handmark/pulltorefresh/library/a/d;

    .line 98
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getHeaderSize()I

    move-result v5

    add-int/2addr v0, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move v1, v2

    .line 103
    :goto_1
    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/a/d;->i()V

    .line 104
    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/a/d;->e()V

    .line 107
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/handmark/pulltorefresh/library/a/d;->setVisibility(I)V

    .line 110
    invoke-virtual {v4, v2}, Lcom/handmark/pulltorefresh/library/a/d;->setVisibility(I)V

    .line 111
    invoke-virtual {v4}, Lcom/handmark/pulltorefresh/library/a/d;->g()V

    .line 113
    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->k()V

    .line 119
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setHeaderScroll(I)V

    .line 123
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 126
    invoke-virtual {p0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(I)V

    goto :goto_0

    .line 86
    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getFooterLayout()Lcom/handmark/pulltorefresh/library/a/d;

    move-result-object v5

    .line 87
    iget-object v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->c:Lcom/handmark/pulltorefresh/library/a/d;

    .line 88
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->b:Lcom/handmark/pulltorefresh/library/a/d;

    .line 89
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 90
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getFooterSize()I

    move-result v6

    sub-int/2addr v0, v6

    .line 91
    goto :goto_1

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 209
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$b;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 213
    :goto_0
    return-object v0

    .line 211
    :cond_0
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$a;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0
.end method

.method protected b(ZZ)Lcom/handmark/pulltorefresh/library/b;
    .locals 3

    .prologue
    .line 190
    invoke-super {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/d;->b(ZZ)Lcom/handmark/pulltorefresh/library/b;

    move-result-object v0

    .line 192
    iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->e:Z

    if-eqz v1, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getMode()Lcom/handmark/pulltorefresh/library/e$b;

    move-result-object v1

    .line 195
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/e$b;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->b:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/b;->a(Lcom/handmark/pulltorefresh/library/a/d;)V

    .line 198
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/e$b;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->c:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/b;->a(Lcom/handmark/pulltorefresh/library/a/d;)V

    .line 203
    :cond_1
    return-object v0
.end method

.method protected c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v0

    .line 221
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    .line 222
    return-object v0
.end method

.method protected c()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 135
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->e:Z

    if-nez v0, :cond_0

    .line 136
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/d;->c()V

    .line 186
    :goto_0
    return-void

    .line 144
    :cond_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getCurrentMode()Lcom/handmark/pulltorefresh/library/e$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/e$b;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 155
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getHeaderLayout()Lcom/handmark/pulltorefresh/library/a/d;

    move-result-object v5

    .line 156
    iget-object v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->b:Lcom/handmark/pulltorefresh/library/a/d;

    .line 157
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getHeaderSize()I

    move-result v0

    neg-int v3, v0

    .line 159
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_3

    :goto_1
    move v0, v1

    move v1, v3

    move-object v3, v4

    move-object v4, v5

    .line 165
    :goto_2
    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/a/d;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 168
    invoke-virtual {v4}, Lcom/handmark/pulltorefresh/library/a/d;->j()V

    .line 171
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/a/d;->setVisibility(I)V

    .line 178
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getState()Lcom/handmark/pulltorefresh/library/e$j;

    move-result-object v0

    sget-object v3, Lcom/handmark/pulltorefresh/library/e$j;->e:Lcom/handmark/pulltorefresh/library/e$j;

    if-eq v0, v3, :cond_1

    .line 179
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 180
    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setHeaderScroll(I)V

    .line 185
    :cond_1
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/d;->c()V

    goto :goto_0

    .line 147
    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getFooterLayout()Lcom/handmark/pulltorefresh/library/a/d;

    move-result-object v6

    .line 148
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->c:Lcom/handmark/pulltorefresh/library/a/d;

    .line 149
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 150
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getFooterSize()I

    move-result v4

    .line 151
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_2

    move v0, v1

    :goto_3
    move v2, v3

    move v1, v4

    move-object v3, v5

    move-object v4, v6

    .line 152
    goto :goto_2

    :cond_2
    move v0, v2

    .line 151
    goto :goto_3

    :cond_3
    move v1, v2

    .line 159
    goto :goto_1

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/e$h;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$h;->a:Lcom/handmark/pulltorefresh/library/e$h;

    return-object v0
.end method
