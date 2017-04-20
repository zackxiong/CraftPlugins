.class public Lcom/yf/gattlib/slidingFragment/a;
.super Landroid/view/ViewGroup;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/slidingFragment/a$a;
    }
.end annotation


# static fields
.field private static final e:Landroid/view/animation/Interpolator;


# instance fields
.field private A:F

.field protected a:I

.field protected b:Landroid/view/VelocityTracker;

.field protected c:I

.field protected d:I

.field private f:Landroid/view/View;

.field private g:I

.field private h:Landroid/widget/Scroller;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:F

.field private o:F

.field private p:F

.field private q:I

.field private r:I

.field private s:Lcom/yf/gattlib/slidingFragment/c;

.field private t:Z

.field private u:Lcom/yf/gattlib/slidingFragment/a$a;

.field private v:Lcom/yf/gattlib/slidingFragment/a$a;

.field private w:Lcom/yf/gattlib/slidingFragment/SlidingMenu$c;

.field private x:Lcom/yf/gattlib/slidingFragment/SlidingMenu$e;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/yf/gattlib/slidingFragment/b;

    invoke-direct {v0}, Lcom/yf/gattlib/slidingFragment/b;-><init>()V

    sput-object v0, Lcom/yf/gattlib/slidingFragment/a;->e:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private a(FII)I
    .locals 3

    .prologue
    .line 862
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/a;->g:I

    .line 863
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/yf/gattlib/slidingFragment/a;->r:I

    if-le v1, v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/yf/gattlib/slidingFragment/a;->q:I

    if-le v1, v2, :cond_2

    .line 865
    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 866
    add-int/lit8 v0, v0, -0x1

    .line 873
    :cond_0
    :goto_0
    return v0

    .line 867
    :cond_1
    if-gez p2, :cond_0

    if-gez p3, :cond_0

    .line 868
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 871
    :cond_2
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/a;->g:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;I)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 639
    invoke-static {p1, p2}, Landroid/support/v4/view/x;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 640
    if-ne v0, v1, :cond_0

    .line 641
    iput v1, p0, Lcom/yf/gattlib/slidingFragment/a;->a:I

    .line 642
    :cond_0
    return v0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 352
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 353
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 354
    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(F)Z
    .locals 1

    .prologue
    .line 627
    .line 628
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->s:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/c;->b(F)Z

    move-result v0

    .line 635
    :goto_0
    return v0

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->s:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/c;->a(F)Z

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 610
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/yf/gattlib/slidingFragment/a;->A:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 611
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 612
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->s:Lcom/yf/gattlib/slidingFragment/c;

    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    iget v3, p0, Lcom/yf/gattlib/slidingFragment/a;->g:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/yf/gattlib/slidingFragment/c;->a(Landroid/view/View;IF)Z

    move-result v0

    .line 623
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 614
    :cond_1
    iget v2, p0, Lcom/yf/gattlib/slidingFragment/a;->d:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 620
    :pswitch_1
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->s:Lcom/yf/gattlib/slidingFragment/c;

    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/yf/gattlib/slidingFragment/c;->b(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0

    .line 616
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/yf/gattlib/slidingFragment/a;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 614
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private c(I)V
    .locals 4

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->getWidth()I

    move-result v0

    .line 541
    div-int v1, p1, v0

    .line 542
    rem-int v2, p1, v0

    .line 543
    int-to-float v3, v2

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 545
    invoke-virtual {p0, v1, v0, v2}, Lcom/yf/gattlib/slidingFragment/a;->a(IFI)V

    .line 546
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 827
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/a;->a:I

    .line 828
    invoke-direct {p0, p1, v0}, Lcom/yf/gattlib/slidingFragment/a;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 829
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/x;->c(Landroid/view/MotionEvent;)I

    move-result v0

    .line 832
    if-ge v1, v0, :cond_0

    .line 835
    invoke-static {p1, v1}, Landroid/support/v4/view/x;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 836
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/a;->o:F

    sub-float v3, v2, v0

    .line 837
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 838
    invoke-static {p1, v1}, Landroid/support/v4/view/x;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 839
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/a;->p:F

    sub-float v0, v1, v0

    .line 840
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 841
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/yf/gattlib/slidingFragment/a;->m:I

    div-int/lit8 v0, v0, 0x2

    :goto_1
    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_3

    cmpl-float v0, v4, v5

    if-lez v0, :cond_3

    invoke-direct {p0, v3}, Lcom/yf/gattlib/slidingFragment/a;->b(F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 843
    invoke-direct {p0}, Lcom/yf/gattlib/slidingFragment/a;->e()V

    .line 844
    iput v2, p0, Lcom/yf/gattlib/slidingFragment/a;->o:F

    .line 845
    iput v1, p0, Lcom/yf/gattlib/slidingFragment/a;->p:F

    .line 846
    invoke-direct {p0, v6}, Lcom/yf/gattlib/slidingFragment/a;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 841
    :cond_2
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/a;->m:I

    goto :goto_1

    .line 848
    :cond_3
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/a;->m:I

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_0

    .line 849
    iput-boolean v6, p0, Lcom/yf/gattlib/slidingFragment/a;->l:Z

    goto :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 576
    iget-boolean v0, p0, Lcom/yf/gattlib/slidingFragment/a;->j:Z

    .line 577
    if-eqz v0, :cond_2

    .line 579
    invoke-direct {p0, v4}, Lcom/yf/gattlib/slidingFragment/a;->setScrollingCacheEnabled(Z)V

    .line 580
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 581
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->getScrollX()I

    move-result v0

    .line 582
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->getScrollY()I

    move-result v1

    .line 583
    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/a;->h:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 584
    iget-object v3, p0, Lcom/yf/gattlib/slidingFragment/a;->h:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 585
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 586
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/yf/gattlib/slidingFragment/a;->scrollTo(II)V

    .line 588
    :cond_1
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 589
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->x:Lcom/yf/gattlib/slidingFragment/SlidingMenu$e;

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->x:Lcom/yf/gattlib/slidingFragment/SlidingMenu$e;

    invoke-interface {v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu$e;->a()V

    .line 596
    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/yf/gattlib/slidingFragment/a;->j:Z

    .line 597
    return-void

    .line 592
    :cond_3
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->w:Lcom/yf/gattlib/slidingFragment/SlidingMenu$c;

    if-eqz v0, :cond_2

    .line 593
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->w:Lcom/yf/gattlib/slidingFragment/SlidingMenu$c;

    invoke-interface {v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu$c;->a()V

    goto :goto_0
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 895
    invoke-static {p1}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 896
    invoke-static {p1, v0}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 897
    iget v2, p0, Lcom/yf/gattlib/slidingFragment/a;->a:I

    if-ne v1, v2, :cond_0

    .line 900
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 901
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/x;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/yf/gattlib/slidingFragment/a;->o:F

    .line 902
    invoke-static {p1, v0}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/yf/gattlib/slidingFragment/a;->a:I

    .line 904
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->b:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 908
    :cond_0
    return-void

    .line 900
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 911
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/gattlib/slidingFragment/a;->k:Z

    .line 912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/gattlib/slidingFragment/a;->z:Z

    .line 913
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 916
    iput-boolean v0, p0, Lcom/yf/gattlib/slidingFragment/a;->z:Z

    .line 917
    iput-boolean v0, p0, Lcom/yf/gattlib/slidingFragment/a;->k:Z

    .line 918
    iput-boolean v0, p0, Lcom/yf/gattlib/slidingFragment/a;->l:Z

    .line 919
    const/4 v0, -0x1

    iput v0, p0, Lcom/yf/gattlib/slidingFragment/a;->a:I

    .line 921
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->b:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 923
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->b:Landroid/view/VelocityTracker;

    .line 925
    :cond_0
    return-void
.end method

.method private getLeftBound()I
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->s:Lcom/yf/gattlib/slidingFragment/c;

    iget-object v1, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/slidingFragment/c;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private getRightBound()I
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->s:Lcom/yf/gattlib/slidingFragment/c;

    iget-object v1, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/slidingFragment/c;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .prologue
    .line 928
    iget-boolean v0, p0, Lcom/yf/gattlib/slidingFragment/a;->i:Z

    if-eq v0, p1, :cond_0

    .line 929
    iput-boolean p1, p0, Lcom/yf/gattlib/slidingFragment/a;->i:Z

    .line 940
    :cond_0
    return-void
.end method


# virtual methods
.method a(F)F
    .locals 4

    .prologue
    .line 319
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 320
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 321
    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 2

    .prologue
    .line 325
    packed-switch p1, :pswitch_data_0

    .line 332
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 328
    :pswitch_0
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->s:Lcom/yf/gattlib/slidingFragment/c;

    iget-object v1, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/yf/gattlib/slidingFragment/c;->a(Landroid/view/View;I)I

    move-result v0

    goto :goto_0

    .line 330
    :pswitch_1
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(IFI)V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->u:Lcom/yf/gattlib/slidingFragment/a$a;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->u:Lcom/yf/gattlib/slidingFragment/a$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/yf/gattlib/slidingFragment/a$a;->a(IFI)V

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->v:Lcom/yf/gattlib/slidingFragment/a$a;

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->v:Lcom/yf/gattlib/slidingFragment/a$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/yf/gattlib/slidingFragment/a$a;->a(IFI)V

    .line 573
    :cond_1
    return-void
.end method

.method a(III)V
    .locals 10

    .prologue
    const/16 v5, 0x258

    const/4 v6, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    .line 412
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 414
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yf/gattlib/slidingFragment/a;->setScrollingCacheEnabled(Z)V

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->getScrollX()I

    move-result v1

    .line 418
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->getScrollY()I

    move-result v2

    .line 419
    sub-int v3, p1, v1

    .line 420
    sub-int v4, p2, v2

    .line 421
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    .line 422
    invoke-direct {p0}, Lcom/yf/gattlib/slidingFragment/a;->d()V

    .line 423
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->x:Lcom/yf/gattlib/slidingFragment/SlidingMenu$e;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->x:Lcom/yf/gattlib/slidingFragment/SlidingMenu$e;

    invoke-interface {v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu$e;->a()V

    goto :goto_0

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->w:Lcom/yf/gattlib/slidingFragment/SlidingMenu$c;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->w:Lcom/yf/gattlib/slidingFragment/SlidingMenu$c;

    invoke-interface {v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu$c;->a()V

    goto :goto_0

    .line 433
    :cond_3
    invoke-direct {p0, v6}, Lcom/yf/gattlib/slidingFragment/a;->setScrollingCacheEnabled(Z)V

    .line 434
    iput-boolean v6, p0, Lcom/yf/gattlib/slidingFragment/a;->j:Z

    .line 436
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->getBehindWidth()I

    move-result v0

    .line 437
    div-int/lit8 v6, v0, 0x2

    .line 438
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v9

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 439
    int-to-float v8, v6

    int-to-float v6, v6

    invoke-virtual {p0, v7}, Lcom/yf/gattlib/slidingFragment/a;->a(F)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    .line 443
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 444
    if-lez v7, :cond_4

    .line 445
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 451
    :goto_1
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 453
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->h:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 454
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->invalidate()V

    goto :goto_0

    .line 447
    :cond_4
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v0, v0

    div-float v0, v6, v0

    .line 448
    add-float/2addr v0, v9

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v0, v6

    float-to-int v0, v0

    move v0, v5

    .line 449
    goto :goto_1
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/yf/gattlib/slidingFragment/a;->a(IZZ)V

    .line 222
    return-void
.end method

.method a(IZZ)V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/yf/gattlib/slidingFragment/a;->a(IZZI)V

    .line 230
    return-void
.end method

.method a(IZZI)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 234
    if-nez p3, :cond_0

    iget v0, p0, Lcom/yf/gattlib/slidingFragment/a;->g:I

    if-ne v0, p1, :cond_0

    .line 235
    invoke-direct {p0, v1}, Lcom/yf/gattlib/slidingFragment/a;->setScrollingCacheEnabled(Z)V

    .line 256
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->s:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/c;->a(I)I

    move-result v2

    .line 241
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/a;->g:I

    if-eq v0, v2, :cond_3

    const/4 v0, 0x1

    .line 242
    :goto_1
    iput v2, p0, Lcom/yf/gattlib/slidingFragment/a;->g:I

    .line 243
    iget v3, p0, Lcom/yf/gattlib/slidingFragment/a;->g:I

    invoke-virtual {p0, v3}, Lcom/yf/gattlib/slidingFragment/a;->a(I)I

    move-result v3

    .line 244
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/yf/gattlib/slidingFragment/a;->u:Lcom/yf/gattlib/slidingFragment/a$a;

    if-eqz v4, :cond_1

    .line 245
    iget-object v4, p0, Lcom/yf/gattlib/slidingFragment/a;->u:Lcom/yf/gattlib/slidingFragment/a$a;

    invoke-interface {v4, v2}, Lcom/yf/gattlib/slidingFragment/a$a;->a(I)V

    .line 247
    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->v:Lcom/yf/gattlib/slidingFragment/a$a;

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->v:Lcom/yf/gattlib/slidingFragment/a$a;

    invoke-interface {v0, v2}, Lcom/yf/gattlib/slidingFragment/a$a;->a(I)V

    .line 250
    :cond_2
    if-eqz p2, :cond_4

    .line 251
    invoke-virtual {p0, v3, v1, p4}, Lcom/yf/gattlib/slidingFragment/a;->a(III)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 241
    goto :goto_1

    .line 253
    :cond_4
    invoke-direct {p0}, Lcom/yf/gattlib/slidingFragment/a;->d()V

    .line 254
    invoke-virtual {p0, v3, v1}, Lcom/yf/gattlib/slidingFragment/a;->scrollTo(II)V

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 348
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/a;->g:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yf/gattlib/slidingFragment/a;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 999
    const/4 v0, 0x0

    .line 1000
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1001
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1023
    :cond_0
    :goto_0
    return v0

    .line 1003
    :sswitch_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/a;->b(I)Z

    move-result v0

    goto :goto_0

    .line 1006
    :sswitch_1
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/a;->b(I)Z

    move-result v0

    goto :goto_0

    .line 1009
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 1013
    invoke-static {p1}, Landroid/support/v4/view/k;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1014
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/a;->b(I)Z

    move-result v0

    goto :goto_0

    .line 1015
    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/k;->a(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1017
    invoke-virtual {p0, v3}, Lcom/yf/gattlib/slidingFragment/a;->b(I)Z

    move-result v0

    goto :goto_0

    .line 1001
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1064
    iget v1, p0, Lcom/yf/gattlib/slidingFragment/a;->g:I

    if-lez v1, :cond_0

    .line 1065
    iget v1, p0, Lcom/yf/gattlib/slidingFragment/a;->g:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yf/gattlib/slidingFragment/a;->a(IZ)V

    .line 1068
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Z
    .locals 5

    .prologue
    const/16 v4, 0x42

    const/16 v3, 0x11

    .line 1027
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1028
    if-ne v0, p0, :cond_0

    .line 1029
    const/4 v0, 0x0

    .line 1031
    :cond_0
    const/4 v1, 0x0

    .line 1033
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 1035
    if-eqz v2, :cond_4

    if-eq v2, v0, :cond_4

    .line 1036
    if-ne p1, v3, :cond_2

    .line 1037
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 1056
    :goto_0
    if-eqz v0, :cond_1

    .line 1057
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/yf/gattlib/slidingFragment/a;->playSoundEffect(I)V

    .line 1060
    :cond_1
    return v0

    .line 1038
    :cond_2
    if-ne p1, v4, :cond_8

    .line 1042
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-gt v1, v0, :cond_3

    .line 1044
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->c()Z

    move-result v0

    goto :goto_0

    .line 1046
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 1049
    :cond_4
    if-eq p1, v3, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1051
    :cond_5
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->b()Z

    move-result v0

    goto :goto_0

    .line 1052
    :cond_6
    if-eq p1, v4, :cond_7

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 1054
    :cond_7
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->c()Z

    move-result v0

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1072
    iget v1, p0, Lcom/yf/gattlib/slidingFragment/a;->g:I

    if-ge v1, v0, :cond_0

    .line 1073
    iget v1, p0, Lcom/yf/gattlib/slidingFragment/a;->g:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/yf/gattlib/slidingFragment/a;->a(IZ)V

    .line 1076
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 517
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 518
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 519
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->getScrollX()I

    move-result v0

    .line 520
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->getScrollY()I

    move-result v1

    .line 521
    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/a;->h:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 522
    iget-object v3, p0, Lcom/yf/gattlib/slidingFragment/a;->h:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 524
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 525
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/yf/gattlib/slidingFragment/a;->scrollTo(II)V

    .line 526
    invoke-direct {p0, v2}, Lcom/yf/gattlib/slidingFragment/a;->c(I)V

    .line 530
    :cond_1
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->invalidate()V

    .line 537
    :goto_0
    return-void

    .line 536
    :cond_2
    invoke-direct {p0}, Lcom/yf/gattlib/slidingFragment/a;->d()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 882
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 884
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->s:Lcom/yf/gattlib/slidingFragment/c;

    iget-object v1, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/yf/gattlib/slidingFragment/c;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 885
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->s:Lcom/yf/gattlib/slidingFragment/c;

    iget-object v1, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/yf/gattlib/slidingFragment/c;->a(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 886
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->s:Lcom/yf/gattlib/slidingFragment/c;

    iget-object v1, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/yf/gattlib/slidingFragment/c;->b(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 887
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 986
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yf/gattlib/slidingFragment/a;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->s:Lcom/yf/gattlib/slidingFragment/c;

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x0

    .line 365
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->s:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0}, Lcom/yf/gattlib/slidingFragment/c;->getBehindWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    return-object v0
.end method

.method public getContentLeft()I
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/a;->g:I

    return v0
.end method

.method protected getPercentOpen()F
    .locals 2

    .prologue
    .line 877
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/a;->A:F

    iget-object v1, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->getBehindWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTouchMode()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/a;->d:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 650
    iget-boolean v2, p0, Lcom/yf/gattlib/slidingFragment/a;->t:Z

    if-nez v2, :cond_1

    .line 700
    :cond_0
    :goto_0
    return v0

    .line 653
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 659
    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    if-eq v2, v1, :cond_2

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/yf/gattlib/slidingFragment/a;->l:Z

    if-eqz v3, :cond_3

    .line 662
    :cond_2
    invoke-direct {p0}, Lcom/yf/gattlib/slidingFragment/a;->f()V

    goto :goto_0

    .line 666
    :cond_3
    sparse-switch v2, :sswitch_data_0

    .line 694
    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/yf/gattlib/slidingFragment/a;->k:Z

    if-nez v2, :cond_6

    .line 695
    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/a;->b:Landroid/view/VelocityTracker;

    if-nez v2, :cond_5

    .line 696
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/yf/gattlib/slidingFragment/a;->b:Landroid/view/VelocityTracker;

    .line 698
    :cond_5
    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/a;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 700
    :cond_6
    iget-boolean v2, p0, Lcom/yf/gattlib/slidingFragment/a;->k:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/yf/gattlib/slidingFragment/a;->z:Z

    if-eqz v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    .line 668
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/yf/gattlib/slidingFragment/a;->c(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 671
    :sswitch_1
    invoke-static {p1}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;)I

    move-result v2

    .line 672
    invoke-static {p1, v2}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/yf/gattlib/slidingFragment/a;->a:I

    .line 673
    iget v3, p0, Lcom/yf/gattlib/slidingFragment/a;->a:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 675
    invoke-static {p1, v2}, Landroid/support/v4/view/x;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/yf/gattlib/slidingFragment/a;->n:F

    iput v3, p0, Lcom/yf/gattlib/slidingFragment/a;->o:F

    .line 676
    invoke-static {p1, v2}, Landroid/support/v4/view/x;->d(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/yf/gattlib/slidingFragment/a;->p:F

    .line 677
    invoke-direct {p0, p1}, Lcom/yf/gattlib/slidingFragment/a;->b(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 678
    iput-boolean v0, p0, Lcom/yf/gattlib/slidingFragment/a;->k:Z

    .line 679
    iput-boolean v0, p0, Lcom/yf/gattlib/slidingFragment/a;->l:Z

    .line 680
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/a;->s:Lcom/yf/gattlib/slidingFragment/c;

    iget-object v3, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    iget v4, p0, Lcom/yf/gattlib/slidingFragment/a;->g:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/yf/gattlib/slidingFragment/a;->A:F

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/yf/gattlib/slidingFragment/c;->b(Landroid/view/View;IF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 683
    iput-boolean v1, p0, Lcom/yf/gattlib/slidingFragment/a;->z:Z

    goto :goto_1

    .line 686
    :cond_8
    iput-boolean v1, p0, Lcom/yf/gattlib/slidingFragment/a;->l:Z

    goto :goto_1

    .line 690
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/yf/gattlib/slidingFragment/a;->d(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 666
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 501
    sub-int v0, p4, p2

    .line 502
    sub-int v1, p5, p3

    .line 503
    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 504
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 475
    invoke-static {v2, p1}, Lcom/yf/gattlib/slidingFragment/a;->getDefaultSize(II)I

    move-result v0

    .line 476
    invoke-static {v2, p2}, Lcom/yf/gattlib/slidingFragment/a;->getDefaultSize(II)I

    move-result v1

    .line 477
    invoke-virtual {p0, v0, v1}, Lcom/yf/gattlib/slidingFragment/a;->setMeasuredDimension(II)V

    .line 479
    invoke-static {p1, v2, v0}, Lcom/yf/gattlib/slidingFragment/a;->getChildMeasureSpec(III)I

    move-result v0

    .line 480
    invoke-static {p2, v2, v1}, Lcom/yf/gattlib/slidingFragment/a;->getChildMeasureSpec(III)I

    move-result v1

    .line 482
    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 483
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 487
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 489
    if-eq p1, p3, :cond_0

    .line 494
    invoke-direct {p0}, Lcom/yf/gattlib/slidingFragment/a;->d()V

    .line 495
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/a;->g:I

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/a;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yf/gattlib/slidingFragment/a;->scrollTo(II)V

    .line 497
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x1

    .line 706
    iget-boolean v1, p0, Lcom/yf/gattlib/slidingFragment/a;->t:Z

    if-nez v1, :cond_1

    .line 823
    :cond_0
    :goto_0
    return v0

    .line 709
    :cond_1
    iget-boolean v1, p0, Lcom/yf/gattlib/slidingFragment/a;->k:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/yf/gattlib/slidingFragment/a;->b(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 717
    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/a;->b:Landroid/view/VelocityTracker;

    if-nez v2, :cond_3

    .line 718
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/yf/gattlib/slidingFragment/a;->b:Landroid/view/VelocityTracker;

    .line 720
    :cond_3
    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/a;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 722
    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    move v0, v3

    .line 823
    goto :goto_0

    .line 728
    :pswitch_1
    invoke-direct {p0}, Lcom/yf/gattlib/slidingFragment/a;->d()V

    .line 731
    invoke-static {p1}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 732
    invoke-static {p1, v0}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/yf/gattlib/slidingFragment/a;->a:I

    .line 733
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/yf/gattlib/slidingFragment/a;->n:F

    iput v0, p0, Lcom/yf/gattlib/slidingFragment/a;->o:F

    goto :goto_1

    .line 736
    :pswitch_2
    iget-boolean v1, p0, Lcom/yf/gattlib/slidingFragment/a;->k:Z

    if-nez v1, :cond_5

    .line 737
    invoke-direct {p0, p1}, Lcom/yf/gattlib/slidingFragment/a;->c(Landroid/view/MotionEvent;)V

    .line 738
    iget-boolean v1, p0, Lcom/yf/gattlib/slidingFragment/a;->l:Z

    if-nez v1, :cond_0

    .line 741
    :cond_5
    iget-boolean v0, p0, Lcom/yf/gattlib/slidingFragment/a;->k:Z

    if-eqz v0, :cond_4

    .line 743
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/a;->a:I

    invoke-direct {p0, p1, v0}, Lcom/yf/gattlib/slidingFragment/a;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 745
    iget v1, p0, Lcom/yf/gattlib/slidingFragment/a;->a:I

    if-eq v1, v5, :cond_4

    .line 747
    invoke-static {p1, v0}, Landroid/support/v4/view/x;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 748
    iget v1, p0, Lcom/yf/gattlib/slidingFragment/a;->o:F

    sub-float/2addr v1, v0

    .line 749
    iput v0, p0, Lcom/yf/gattlib/slidingFragment/a;->o:F

    .line 750
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    .line 751
    add-float v2, v0, v1

    .line 752
    invoke-direct {p0}, Lcom/yf/gattlib/slidingFragment/a;->getLeftBound()I

    move-result v0

    int-to-float v0, v0

    .line 753
    invoke-direct {p0}, Lcom/yf/gattlib/slidingFragment/a;->getRightBound()I

    move-result v1

    int-to-float v1, v1

    .line 754
    cmpg-float v4, v2, v0

    if-gez v4, :cond_6

    .line 760
    :goto_2
    iget v1, p0, Lcom/yf/gattlib/slidingFragment/a;->o:F

    float-to-int v2, v0

    int-to-float v2, v2

    sub-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/yf/gattlib/slidingFragment/a;->o:F

    .line 761
    float-to-int v1, v0

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/yf/gattlib/slidingFragment/a;->scrollTo(II)V

    .line 762
    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/yf/gattlib/slidingFragment/a;->c(I)V

    goto :goto_1

    .line 756
    :cond_6
    cmpl-float v0, v2, v1

    if-lez v0, :cond_9

    move v0, v1

    .line 757
    goto :goto_2

    .line 766
    :pswitch_3
    iget-boolean v0, p0, Lcom/yf/gattlib/slidingFragment/a;->k:Z

    if-eqz v0, :cond_8

    .line 767
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->b:Landroid/view/VelocityTracker;

    .line 768
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/yf/gattlib/slidingFragment/a;->c:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 769
    iget v1, p0, Lcom/yf/gattlib/slidingFragment/a;->a:I

    invoke-static {v0, v1}, Landroid/support/v4/view/ai;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 771
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->getScrollX()I

    move-result v1

    .line 776
    iget v2, p0, Lcom/yf/gattlib/slidingFragment/a;->g:I

    invoke-virtual {p0, v2}, Lcom/yf/gattlib/slidingFragment/a;->a(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/a;->getBehindWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 778
    iget v2, p0, Lcom/yf/gattlib/slidingFragment/a;->a:I

    invoke-direct {p0, p1, v2}, Lcom/yf/gattlib/slidingFragment/a;->a(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 780
    iget v4, p0, Lcom/yf/gattlib/slidingFragment/a;->a:I

    if-eq v4, v5, :cond_7

    .line 781
    invoke-static {p1, v2}, Landroid/support/v4/view/x;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 783
    iget v4, p0, Lcom/yf/gattlib/slidingFragment/a;->n:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 784
    invoke-direct {p0, v1, v0, v2}, Lcom/yf/gattlib/slidingFragment/a;->a(FII)I

    move-result v1

    .line 786
    invoke-virtual {p0, v1, v3, v3, v0}, Lcom/yf/gattlib/slidingFragment/a;->a(IZZI)V

    .line 792
    :goto_3
    iput v5, p0, Lcom/yf/gattlib/slidingFragment/a;->a:I

    .line 793
    invoke-direct {p0}, Lcom/yf/gattlib/slidingFragment/a;->f()V

    goto/16 :goto_1

    .line 789
    :cond_7
    iget v1, p0, Lcom/yf/gattlib/slidingFragment/a;->g:I

    invoke-virtual {p0, v1, v3, v3, v0}, Lcom/yf/gattlib/slidingFragment/a;->a(IZZI)V

    goto :goto_3

    .line 794
    :cond_8
    iget-boolean v0, p0, Lcom/yf/gattlib/slidingFragment/a;->z:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->s:Lcom/yf/gattlib/slidingFragment/c;

    iget-object v1, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    iget v2, p0, Lcom/yf/gattlib/slidingFragment/a;->g:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/yf/gattlib/slidingFragment/a;->A:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v4}, Lcom/yf/gattlib/slidingFragment/c;->b(Landroid/view/View;IF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 798
    invoke-virtual {p0, v3}, Lcom/yf/gattlib/slidingFragment/a;->setCurrentItem(I)V

    .line 799
    invoke-direct {p0}, Lcom/yf/gattlib/slidingFragment/a;->f()V

    goto/16 :goto_1

    .line 803
    :pswitch_4
    iget-boolean v0, p0, Lcom/yf/gattlib/slidingFragment/a;->k:Z

    if-eqz v0, :cond_4

    .line 804
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/a;->g:I

    invoke-virtual {p0, v0, v3, v3}, Lcom/yf/gattlib/slidingFragment/a;->a(IZZ)V

    .line 805
    iput v5, p0, Lcom/yf/gattlib/slidingFragment/a;->a:I

    .line 806
    invoke-direct {p0}, Lcom/yf/gattlib/slidingFragment/a;->f()V

    goto/16 :goto_1

    .line 810
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 811
    invoke-static {p1, v0}, Landroid/support/v4/view/x;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/yf/gattlib/slidingFragment/a;->o:F

    .line 812
    invoke-static {p1, v0}, Landroid/support/v4/view/x;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/yf/gattlib/slidingFragment/a;->a:I

    goto/16 :goto_1

    .line 816
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/yf/gattlib/slidingFragment/a;->d(Landroid/view/MotionEvent;)V

    .line 817
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/a;->a:I

    invoke-direct {p0, p1, v0}, Lcom/yf/gattlib/slidingFragment/a;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 818
    iget v1, p0, Lcom/yf/gattlib/slidingFragment/a;->a:I

    if-eq v1, v5, :cond_4

    .line 820
    invoke-static {p1, v0}, Landroid/support/v4/view/x;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/yf/gattlib/slidingFragment/a;->o:F

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto/16 :goto_2

    .line 722
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public scrollTo(II)V
    .locals 2

    .prologue
    .line 855
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 856
    int-to-float v0, p1

    iput v0, p0, Lcom/yf/gattlib/slidingFragment/a;->A:F

    .line 857
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->s:Lcom/yf/gattlib/slidingFragment/c;

    iget-object v1, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/yf/gattlib/slidingFragment/c;->a(Landroid/view/View;II)V

    .line 859
    return-void
.end method

.method public setAboveOffset(I)V
    .locals 4

    .prologue
    .line 511
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 513
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/a;->removeView(Landroid/view/View;)V

    .line 460
    :cond_0
    iput-object p1, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    .line 461
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/a;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/a;->addView(Landroid/view/View;)V

    .line 462
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    .line 208
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/yf/gattlib/slidingFragment/a;->a(IZZ)V

    .line 209
    return-void
.end method

.method public setCustomViewBehind(Lcom/yf/gattlib/slidingFragment/c;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/yf/gattlib/slidingFragment/a;->s:Lcom/yf/gattlib/slidingFragment/c;

    .line 470
    return-void
.end method

.method public setOnClosedListener(Lcom/yf/gattlib/slidingFragment/SlidingMenu$c;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/yf/gattlib/slidingFragment/a;->w:Lcom/yf/gattlib/slidingFragment/SlidingMenu$c;

    .line 280
    return-void
.end method

.method public setOnOpenedListener(Lcom/yf/gattlib/slidingFragment/SlidingMenu$e;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/yf/gattlib/slidingFragment/a;->x:Lcom/yf/gattlib/slidingFragment/SlidingMenu$e;

    .line 276
    return-void
.end method

.method public setOnPageChangeListener(Lcom/yf/gattlib/slidingFragment/a$a;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/yf/gattlib/slidingFragment/a;->u:Lcom/yf/gattlib/slidingFragment/a$a;

    .line 267
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 0

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/yf/gattlib/slidingFragment/a;->t:Z

    .line 386
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0

    .prologue
    .line 602
    iput p1, p0, Lcom/yf/gattlib/slidingFragment/a;->d:I

    .line 603
    return-void
.end method
