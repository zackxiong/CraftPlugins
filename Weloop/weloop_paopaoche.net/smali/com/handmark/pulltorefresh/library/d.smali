.class public abstract Lcom/handmark/pulltorefresh/library/d;
.super Lcom/handmark/pulltorefresh/library/e;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/d$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/AbsListView;",
        ">",
        "Lcom/handmark/pulltorefresh/library/e",
        "<TT;>;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private b:Z

.field private c:Landroid/widget/AbsListView$OnScrollListener;

.field private d:Lcom/handmark/pulltorefresh/library/e$c;

.field private e:Landroid/view/View;

.field private f:Lcom/handmark/pulltorefresh/library/a/c;

.field private g:Lcom/handmark/pulltorefresh/library/a/c;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/e;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/d;->i:Z

    .line 71
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/d;->i:Z

    .line 76
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/e;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/d;->i:Z

    .line 81
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;Lcom/handmark/pulltorefresh/library/e$a;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/e;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;Lcom/handmark/pulltorefresh/library/e$a;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/d;->i:Z

    .line 86
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 87
    return-void
.end method

.method private static a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 45
    if-eqz p0, :cond_0

    .line 46
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    instance-of v1, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 49
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 55
    :cond_0
    :goto_0
    return-object v0

    .line 51
    :cond_1
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private getShowIndicatorInternal()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/d;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 336
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/d;->getMode()Lcom/handmark/pulltorefresh/library/e$b;

    move-result-object v0

    .line 337
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/d;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 339
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/e$b;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/d;->f:Lcom/handmark/pulltorefresh/library/a/c;

    if-nez v2, :cond_2

    .line 341
    new-instance v2, Lcom/handmark/pulltorefresh/library/a/c;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/d;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/handmark/pulltorefresh/library/e$b;->b:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-direct {v2, v3, v4}, Lcom/handmark/pulltorefresh/library/a/c;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;)V

    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/d;->f:Lcom/handmark/pulltorefresh/library/a/c;

    .line 342
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 344
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/d;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yf/ui/R$dimen;->indicator_right_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 345
    const/16 v3, 0x35

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 346
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/d;->f:Lcom/handmark/pulltorefresh/library/a/c;

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/e$b;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/d;->g:Lcom/handmark/pulltorefresh/library/a/c;

    if-nez v2, :cond_3

    .line 356
    new-instance v0, Lcom/handmark/pulltorefresh/library/a/c;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/d;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/handmark/pulltorefresh/library/e$b;->c:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-direct {v0, v2, v3}, Lcom/handmark/pulltorefresh/library/a/c;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->g:Lcom/handmark/pulltorefresh/library/a/c;

    .line 357
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 359
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yf/ui/R$dimen;->indicator_right_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 360
    const/16 v2, 0x55

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 361
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/d;->g:Lcom/handmark/pulltorefresh/library/a/c;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    :cond_1
    :goto_1
    return-void

    .line 348
    :cond_2
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/e$b;->c()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/d;->f:Lcom/handmark/pulltorefresh/library/a/c;

    if-eqz v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/d;->f:Lcom/handmark/pulltorefresh/library/a/c;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 351
    iput-object v6, p0, Lcom/handmark/pulltorefresh/library/d;->f:Lcom/handmark/pulltorefresh/library/a/c;

    goto :goto_0

    .line 363
    :cond_3
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/e$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->g:Lcom/handmark/pulltorefresh/library/a/c;

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->g:Lcom/handmark/pulltorefresh/library/a/c;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 366
    iput-object v6, p0, Lcom/handmark/pulltorefresh/library/d;->g:Lcom/handmark/pulltorefresh/library/a/c;

    goto :goto_1
.end method

.method private o()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 375
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    :cond_0
    const-string v0, "PullToRefresh"

    const-string v2, "isFirstItemVisible. Empty View."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 400
    :goto_0
    return v0

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-gt v0, v1, :cond_3

    .line 393
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_3

    .line 395
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getTop()I

    move-result v0

    if-lt v3, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    .line 400
    goto :goto_0
.end method

.method private p()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 404
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 406
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    :cond_0
    const-string v0, "PullToRefresh"

    const-string v2, "isLastItemVisible. Empty View."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 436
    :goto_0
    return v0

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 413
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    .line 416
    const-string v0, "PullToRefresh"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLastItemVisible. Last Item Position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Last Visible Pos: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    add-int/lit8 v0, v3, -0x1

    if-lt v4, v0, :cond_3

    .line 428
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v3, v4, v0

    .line 429
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_3

    .line 431
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getBottom()I

    move-result v0

    if-gt v3, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    .line 436
    goto :goto_0
.end method

.method private q()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 440
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->f:Lcom/handmark/pulltorefresh/library/a/c;

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/d;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/d;->f:Lcom/handmark/pulltorefresh/library/a/c;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 442
    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/d;->f:Lcom/handmark/pulltorefresh/library/a/c;

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->g:Lcom/handmark/pulltorefresh/library/a/c;

    if-eqz v0, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/d;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/d;->g:Lcom/handmark/pulltorefresh/library/a/c;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 447
    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/d;->g:Lcom/handmark/pulltorefresh/library/a/c;

    .line 449
    :cond_1
    return-void
.end method

.method private r()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->f:Lcom/handmark/pulltorefresh/library/a/c;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/d;->i()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/d;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->f:Lcom/handmark/pulltorefresh/library/a/c;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->f:Lcom/handmark/pulltorefresh/library/a/c;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/c;->c()V

    .line 464
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->g:Lcom/handmark/pulltorefresh/library/a/c;

    if-eqz v0, :cond_1

    .line 465
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/d;->i()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/d;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->g:Lcom/handmark/pulltorefresh/library/a/c;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->g:Lcom/handmark/pulltorefresh/library/a/c;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/c;->c()V

    .line 475
    :cond_1
    :goto_1
    return-void

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->f:Lcom/handmark/pulltorefresh/library/a/c;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->f:Lcom/handmark/pulltorefresh/library/a/c;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/c;->b()V

    goto :goto_0

    .line 470
    :cond_3
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->g:Lcom/handmark/pulltorefresh/library/a/c;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->g:Lcom/handmark/pulltorefresh/library/a/c;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/c;->b()V

    goto :goto_1
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 248
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/e;->a()V

    .line 250
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/d;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    sget-object v0, Lcom/handmark/pulltorefresh/library/d$1;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/d;->getCurrentMode()Lcom/handmark/pulltorefresh/library/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/e$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 253
    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->g:Lcom/handmark/pulltorefresh/library/a/c;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/c;->e()V

    goto :goto_0

    .line 256
    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->f:Lcom/handmark/pulltorefresh/library/a/c;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/c;->e()V

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Landroid/content/res/TypedArray;)V
    .locals 2

    .prologue
    .line 304
    sget v1, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrShowIndicator:I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/d;->h:Z

    .line 305
    return-void

    .line 304
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 1

    .prologue
    .line 266
    invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/e;->a(Z)V

    .line 268
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/d;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/d;->r()V

    .line 271
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 275
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/e;->b()V

    .line 277
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/d;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    sget-object v0, Lcom/handmark/pulltorefresh/library/d$1;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/d;->getCurrentMode()Lcom/handmark/pulltorefresh/library/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/e$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 280
    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->g:Lcom/handmark/pulltorefresh/library/a/c;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/c;->d()V

    goto :goto_0

    .line 283
    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->f:Lcom/handmark/pulltorefresh/library/a/c;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/c;->d()V

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 294
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/e;->c()V

    .line 296
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/d;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/d;->r()V

    .line 299
    :cond_0
    return-void
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/d;->o()Z

    move-result v0

    return v0
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/d;->p()Z

    move-result v0

    return v0
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 325
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/e;->f()V

    .line 328
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/d;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/d;->n()V

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/d;->q()V

    goto :goto_0
.end method

.method public getShowIndicator()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/d;->h:Z

    return v0
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    .line 107
    const-string v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First Visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Visible Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Total Items:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->d:Lcom/handmark/pulltorefresh/library/e$c;

    if-eqz v0, :cond_0

    .line 116
    if-lez p4, :cond_3

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/d;->b:Z

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/d;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/d;->r()V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 128
    :cond_2
    return-void

    .line 116
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 3

    .prologue
    .line 317
    invoke-super {p0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/e;->onScrollChanged(IIII)V

    .line 318
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/d;->i:Z

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->e:Landroid/view/View;

    neg-int v1, p1

    neg-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 321
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 135
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->d:Lcom/handmark/pulltorefresh/library/e$c;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/d;->b:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->d:Lcom/handmark/pulltorefresh/library/e$c;

    invoke-interface {v0}, Lcom/handmark/pulltorefresh/library/e$c;->a()V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 142
    :cond_1
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 154
    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/d;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 172
    if-eqz p1, :cond_1

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 179
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 184
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/d;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Landroid/view/View;

    instance-of v0, v0, Lcom/handmark/pulltorefresh/library/a/a;

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Landroid/view/View;

    check-cast v0, Lcom/handmark/pulltorefresh/library/a/a;

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/a/a;->setEmptyViewInternal(Landroid/view/View;)V

    .line 197
    :goto_1
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/d;->e:Landroid/view/View;

    .line 198
    return-void

    .line 188
    :cond_2
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/d;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 210
    return-void
.end method

.method public final setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/e$c;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/d;->d:Lcom/handmark/pulltorefresh/library/e$c;

    .line 214
    return-void
.end method

.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/d;->c:Landroid/widget/AbsListView$OnScrollListener;

    .line 218
    return-void
.end method

.method public final setScrollEmptyView(Z)V
    .locals 0

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/d;->i:Z

    .line 222
    return-void
.end method

.method public setShowIndicator(Z)V
    .locals 1

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/d;->h:Z

    .line 235
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/d;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/d;->n()V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/d;->q()V

    goto :goto_0
.end method
