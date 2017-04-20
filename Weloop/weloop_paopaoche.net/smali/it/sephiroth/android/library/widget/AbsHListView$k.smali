.class public Lit/sephiroth/android/library/widget/AbsHListView$k;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/AbsHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;

.field private b:Lit/sephiroth/android/library/widget/AbsHListView$l;

.field private c:I

.field private d:[Landroid/view/View;

.field private e:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/support/v4/f/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/j",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 1

    .prologue
    .line 5451
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5465
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->d:[Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView$k;Lit/sephiroth/android/library/widget/AbsHListView$l;)Lit/sephiroth/android/library/widget/AbsHListView$l;
    .locals 0

    .prologue
    .line 5451
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->b:Lit/sephiroth/android/library/widget/AbsHListView$l;

    return-object p1
.end method

.method private f()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 5760
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->d:[Landroid/view/View;

    array-length v5, v0

    .line 5761
    iget v6, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    .line 5762
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:[Ljava/util/ArrayList;

    move v4, v1

    .line 5763
    :goto_0
    if-ge v4, v6, :cond_1

    .line 5764
    aget-object v8, v7, v4

    .line 5765
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5766
    sub-int v9, v0, v5

    .line 5767
    add-int/lit8 v0, v0, -0x1

    move v2, v1

    .line 5768
    :goto_1
    if-ge v2, v9, :cond_0

    .line 5769
    iget-object v10, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v10, v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->e(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    .line 5768
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    .line 5763
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 5773
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Landroid/support/v4/f/j;

    if-eqz v0, :cond_3

    .line 5774
    :goto_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Landroid/support/v4/f/j;

    invoke-virtual {v0}, Landroid/support/v4/f/j;->b()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 5775
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Landroid/support/v4/f/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/j;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5778
    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5779
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Landroid/support/v4/f/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/j;->a(I)V

    .line 5780
    add-int/lit8 v1, v1, -0x1

    .line 5774
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 5784
    :cond_3
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 5496
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 5497
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->g:Ljava/util/ArrayList;

    .line 5498
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 5499
    :goto_0
    if-ge v2, v4, :cond_2

    .line 5500
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 5499
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 5503
    :cond_0
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    move v3, v1

    .line 5504
    :goto_1
    if-ge v3, v4, :cond_2

    .line 5505
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:[Ljava/util/ArrayList;

    aget-object v5, v0, v3

    .line 5506
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v1

    .line 5507
    :goto_2
    if-ge v2, v6, :cond_1

    .line 5508
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 5507
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 5504
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 5512
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Landroid/support/v4/f/j;

    if-eqz v0, :cond_3

    .line 5513
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Landroid/support/v4/f/j;

    invoke-virtual {v0}, Landroid/support/v4/f/j;->b()I

    move-result v2

    .line 5514
    :goto_3
    if-ge v1, v2, :cond_3

    .line 5515
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Landroid/support/v4/f/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/j;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 5514
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 5518
    :cond_3
    return-void
.end method

.method public a(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5482
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 5483
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5486
    :cond_0
    new-array v2, p1, [Ljava/util/ArrayList;

    move v0, v1

    .line 5487
    :goto_0
    if-ge v0, p1, :cond_1

    .line 5488
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v0

    .line 5487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5490
    :cond_1
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    .line 5491
    aget-object v0, v2, v1

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->g:Ljava/util/ArrayList;

    .line 5492
    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:[Ljava/util/ArrayList;

    .line 5493
    return-void
.end method

.method public a(II)V
    .locals 5

    .prologue
    .line 5558
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->d:[Landroid/view/View;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 5559
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->d:[Landroid/view/View;

    .line 5561
    :cond_0
    iput p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->c:I

    .line 5563
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->d:[Landroid/view/View;

    .line 5564
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 5565
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5566
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$f;

    .line 5568
    if-eqz v0, :cond_1

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$f;->a:I

    const/4 v4, -0x2

    if-eq v0, v4, :cond_1

    .line 5571
    aput-object v3, v2, v1

    .line 5564
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5574
    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 5639
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$f;

    .line 5640
    if-nez v0, :cond_1

    .line 5683
    :cond_0
    :goto_0
    return-void

    .line 5644
    :cond_1
    iput p2, v0, Lit/sephiroth/android/library/widget/AbsHListView$f;->d:I

    .line 5648
    iget v1, v0, Lit/sephiroth/android/library/widget/AbsHListView$f;->a:I

    .line 5650
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    .line 5652
    :goto_1
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_8

    .line 5653
    :cond_2
    const/4 v2, -0x2

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_5

    .line 5654
    :cond_3
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    .line 5655
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->h:Ljava/util/ArrayList;

    .line 5657
    :cond_4
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5659
    :cond_5
    if-eqz v0, :cond_0

    .line 5660
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Landroid/support/v4/f/j;

    if-nez v0, :cond_6

    .line 5661
    new-instance v0, Landroid/support/v4/f/j;

    invoke-direct {v0}, Landroid/support/v4/f/j;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Landroid/support/v4/f/j;

    .line 5663
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 5664
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Landroid/support/v4/f/j;

    invoke-virtual {v0, p2, p1}, Landroid/support/v4/f/j;->b(ILjava/lang/Object;)V

    goto :goto_0

    .line 5650
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 5669
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 5670
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    .line 5671
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5676
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_9

    .line 5677
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 5680
    :cond_9
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->b:Lit/sephiroth/android/library/widget/AbsHListView$l;

    if-eqz v0, :cond_0

    .line 5681
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->b:Lit/sephiroth/android/library/widget/AbsHListView$l;

    invoke-interface {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$l;->a(Landroid/view/View;)V

    goto :goto_0

    .line 5673
    :cond_a
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:[Ljava/util/ArrayList;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public b()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 5528
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5529
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->g:Ljava/util/ArrayList;

    .line 5530
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 5531
    :goto_0
    if-ge v1, v4, :cond_2

    .line 5532
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    add-int/lit8 v0, v4, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v5, v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    .line 5531
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5535
    :cond_0
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    move v3, v2

    .line 5536
    :goto_1
    if-ge v3, v4, :cond_2

    .line 5537
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:[Ljava/util/ArrayList;

    aget-object v5, v0, v3

    .line 5538
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v2

    .line 5539
    :goto_2
    if-ge v1, v6, :cond_1

    .line 5540
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    add-int/lit8 v0, v6, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v7, v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    .line 5539
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 5536
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 5544
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Landroid/support/v4/f/j;

    if-eqz v0, :cond_3

    .line 5545
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Landroid/support/v4/f/j;

    invoke-virtual {v0}, Landroid/support/v4/f/j;->c()V

    .line 5547
    :cond_3
    return-void
.end method

.method public b(I)Z
    .locals 1

    .prologue
    .line 5521
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5584
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->c:I

    sub-int v2, p1, v0

    .line 5585
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->d:[Landroid/view/View;

    .line 5586
    if-ltz v2, :cond_0

    array-length v0, v3

    if-ge v2, v0, :cond_0

    .line 5587
    aget-object v0, v3, v2

    .line 5588
    aput-object v1, v3, v2

    .line 5591
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method c()V
    .locals 1

    .prologue
    .line 5611
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Landroid/support/v4/f/j;

    if-eqz v0, :cond_0

    .line 5612
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Landroid/support/v4/f/j;

    invoke-virtual {v0}, Landroid/support/v4/f/j;->c()V

    .line 5614
    :cond_0
    return-void
.end method

.method d(I)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5595
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Landroid/support/v4/f/j;

    if-nez v1, :cond_1

    .line 5604
    :cond_0
    :goto_0
    return-object v0

    .line 5598
    :cond_1
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Landroid/support/v4/f/j;

    invoke-virtual {v1, p1}, Landroid/support/v4/f/j;->d(I)I

    move-result v1

    .line 5599
    if-ltz v1, :cond_0

    .line 5602
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Landroid/support/v4/f/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/j;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5603
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Landroid/support/v4/f/j;

    invoke-virtual {v2, v1}, Landroid/support/v4/f/j;->a(I)V

    goto :goto_0
.end method

.method public d()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 5689
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 5697
    :goto_0
    return-void

    .line 5692
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 5693
    :goto_1
    if-ge v1, v3, :cond_1

    .line 5694
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v4, v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->c(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    .line 5693
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 5696
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method e(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 5620
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5621
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->g:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 5628
    :goto_0
    return-object v0

    .line 5623
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 5624
    if-ltz v0, :cond_1

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 5625
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:[Ljava/util/ArrayList;

    aget-object v0, v1, v0

    invoke-static {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 5628
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 5704
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->d:[Landroid/view/View;

    .line 5705
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->b:Lit/sephiroth/android/library/widget/AbsHListView$l;

    if-eqz v1, :cond_5

    move v1, v0

    .line 5706
    :goto_0
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    if-le v3, v0, :cond_6

    move v3, v0

    .line 5708
    :goto_1
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->g:Ljava/util/ArrayList;

    .line 5709
    array-length v0, v7

    .line 5710
    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_2
    if-ltz v6, :cond_b

    .line 5711
    aget-object v8, v7, v6

    .line 5712
    if-eqz v8, :cond_4

    .line 5713
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$f;

    .line 5714
    iget v9, v0, Lit/sephiroth/android/library/widget/AbsHListView$f;->a:I

    .line 5716
    aput-object v11, v7, v6

    .line 5718
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v4, v10, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    .line 5719
    :goto_3
    invoke-virtual {p0, v9}, Lit/sephiroth/android/library/widget/AbsHListView$k;->b(I)Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz v4, :cond_8

    .line 5721
    :cond_0
    const/4 v0, -0x2

    if-ne v9, v0, :cond_1

    if-eqz v4, :cond_2

    .line 5723
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0, v8, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->d(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    .line 5725
    :cond_2
    if-eqz v4, :cond_4

    .line 5726
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Landroid/support/v4/f/j;

    if-nez v0, :cond_3

    .line 5727
    new-instance v0, Landroid/support/v4/f/j;

    invoke-direct {v0}, Landroid/support/v4/f/j;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Landroid/support/v4/f/j;

    .line 5729
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->i:Landroid/support/v4/f/j;

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->c:I

    add-int/2addr v4, v6

    invoke-virtual {v0, v4, v8}, Landroid/support/v4/f/j;->b(ILjava/lang/Object;)V

    .line 5710
    :cond_4
    :goto_4
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_2

    :cond_5
    move v1, v2

    .line 5705
    goto :goto_0

    :cond_6
    move v3, v2

    .line 5706
    goto :goto_1

    :cond_7
    move v4, v2

    .line 5718
    goto :goto_3

    .line 5734
    :cond_8
    if-eqz v3, :cond_c

    .line 5735
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:[Ljava/util/ArrayList;

    aget-object v4, v4, v9

    .line 5737
    :goto_5
    invoke-virtual {v8}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 5738
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->c:I

    add-int/2addr v5, v6

    iput v5, v0, Lit/sephiroth/android/library/widget/AbsHListView$f;->d:I

    .line 5739
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5741
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v0, v5, :cond_9

    .line 5742
    invoke-virtual {v8, v11}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 5745
    :cond_9
    if-eqz v1, :cond_a

    .line 5746
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->b:Lit/sephiroth/android/library/widget/AbsHListView$l;

    invoke-interface {v0, v8}, Lit/sephiroth/android/library/widget/AbsHListView$l;->a(Landroid/view/View;)V

    :cond_a
    move-object v5, v4

    goto :goto_4

    .line 5751
    :cond_b
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->f()V

    .line 5752
    return-void

    :cond_c
    move-object v4, v5

    goto :goto_5
.end method

.method f(I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 5809
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 5810
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->g:Ljava/util/ArrayList;

    .line 5811
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 5812
    :goto_0
    if-ge v2, v4, :cond_2

    .line 5813
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 5812
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 5816
    :cond_0
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->f:I

    move v3, v1

    .line 5817
    :goto_1
    if-ge v3, v4, :cond_2

    .line 5818
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->e:[Ljava/util/ArrayList;

    aget-object v5, v0, v3

    .line 5819
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v1

    .line 5820
    :goto_2
    if-ge v2, v6, :cond_1

    .line 5821
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 5820
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 5817
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 5826
    :cond_2
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$k;->d:[Landroid/view/View;

    .line 5827
    array-length v3, v2

    move v0, v1

    .line 5828
    :goto_3
    if-ge v0, v3, :cond_4

    .line 5829
    aget-object v1, v2, v0

    .line 5830
    if-eqz v1, :cond_3

    .line 5831
    invoke-virtual {v1, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 5828
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5834
    :cond_4
    return-void
.end method
