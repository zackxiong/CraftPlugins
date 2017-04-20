.class public Lcom/yf/gattlib/slidingFragment/SlidingMenu;
.super Landroid/widget/RelativeLayout;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;,
        Lcom/yf/gattlib/slidingFragment/SlidingMenu$a;,
        Lcom/yf/gattlib/slidingFragment/SlidingMenu$c;,
        Lcom/yf/gattlib/slidingFragment/SlidingMenu$b;,
        Lcom/yf/gattlib/slidingFragment/SlidingMenu$e;,
        Lcom/yf/gattlib/slidingFragment/SlidingMenu$d;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/yf/gattlib/slidingFragment/a;

.field private c:Lcom/yf/gattlib/slidingFragment/c;

.field private d:Lcom/yf/gattlib/slidingFragment/SlidingMenu$d;

.field private e:Lcom/yf/gattlib/slidingFragment/SlidingMenu$b;


# direct methods
.method static synthetic a(Lcom/yf/gattlib/slidingFragment/SlidingMenu;)Lcom/yf/gattlib/slidingFragment/SlidingMenu$d;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->d:Lcom/yf/gattlib/slidingFragment/SlidingMenu$d;

    return-object v0
.end method

.method static synthetic b(Lcom/yf/gattlib/slidingFragment/SlidingMenu;)Lcom/yf/gattlib/slidingFragment/SlidingMenu$b;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->e:Lcom/yf/gattlib/slidingFragment/SlidingMenu$b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->a(Z)V

    .line 572
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->b:Lcom/yf/gattlib/slidingFragment/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/yf/gattlib/slidingFragment/a;->a(IZ)V

    .line 582
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1091
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 1092
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 1093
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 1094
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 1095
    iget-boolean v4, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->a:Z

    if-nez v4, :cond_0

    .line 1096
    const-string v4, "SlidingMenu"

    const-string v5, "setting padding!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->setPadding(IIII)V

    .line 1099
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getBehindOffset()I
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0}, Lcom/yf/gattlib/slidingFragment/c;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return v0
.end method

.method public getBehindScrollScale()F
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0}, Lcom/yf/gattlib/slidingFragment/c;->getScrollScale()F

    move-result v0

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->b:Lcom/yf/gattlib/slidingFragment/a;

    invoke-virtual {v0}, Lcom/yf/gattlib/slidingFragment/a;->getContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0}, Lcom/yf/gattlib/slidingFragment/c;->getContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0}, Lcom/yf/gattlib/slidingFragment/c;->getMode()I

    move-result v0

    return v0
.end method

.method public getSecondaryMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0}, Lcom/yf/gattlib/slidingFragment/c;->getSecondaryContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTouchModeAbove()I
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->b:Lcom/yf/gattlib/slidingFragment/a;

    invoke-virtual {v0}, Lcom/yf/gattlib/slidingFragment/a;->getTouchMode()I

    move-result v0

    return v0
.end method

.method public getTouchmodeMarginThreshold()I
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0}, Lcom/yf/gattlib/slidingFragment/c;->getMarginThreshold()I

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1078
    check-cast p1, Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;

    .line 1079
    invoke-virtual {p1}, Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1080
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->b:Lcom/yf/gattlib/slidingFragment/a;

    invoke-virtual {p1}, Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/slidingFragment/a;->setCurrentItem(I)V

    .line 1081
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1066
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1067
    new-instance v1, Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;

    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->b:Lcom/yf/gattlib/slidingFragment/a;

    invoke-virtual {v2}, Lcom/yf/gattlib/slidingFragment/a;->getCurrentItem()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;-><init>(Landroid/os/Parcelable;I)V

    .line 1068
    return-object v1
.end method

.method public setAboveOffset(I)V
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->b:Lcom/yf/gattlib/slidingFragment/a;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/a;->setAboveOffset(I)V

    .line 672
    return-void
.end method

.method public setAboveOffsetRes(I)V
    .locals 1

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 682
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->setAboveOffset(I)V

    .line 683
    return-void
.end method

.method public setBehindCanvasTransformer(Lcom/yf/gattlib/slidingFragment/SlidingMenu$a;)V
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/c;->setCanvasTransformer(Lcom/yf/gattlib/slidingFragment/SlidingMenu$a;)V

    .line 771
    return-void
.end method

.method public setBehindOffset(I)V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/c;->setWidthOffset(I)V

    .line 649
    return-void
.end method

.method public setBehindOffsetRes(I)V
    .locals 1

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 661
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->setBehindOffset(I)V

    .line 662
    return-void
.end method

.method public setBehindScrollScale(F)V
    .locals 2

    .prologue
    .line 757
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 758
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollScale must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/c;->setScrollScale(F)V

    .line 761
    return-void
.end method

.method public setBehindWidth(I)V
    .locals 5

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 697
    :try_start_0
    const-class v1, Landroid/view/Display;

    .line 698
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Point;

    aput-object v4, v2, v3

    .line 699
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 700
    const-string v4, "getSize"

    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 701
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget v0, v3, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :goto_0
    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->setBehindOffset(I)V

    .line 707
    return-void

    .line 703
    :catch_0
    move-exception v1

    .line 704
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public setBehindWidthRes(I)V
    .locals 1

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 718
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->setBehindWidth(I)V

    .line 719
    return-void
.end method

.method public setContent(I)V
    .locals 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 384
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->b:Lcom/yf/gattlib/slidingFragment/a;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/a;->setContent(Landroid/view/View;)V

    .line 394
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->a()V

    .line 395
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/c;->setFadeDegree(F)V

    .line 900
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/c;->setFadeEnabled(Z)V

    .line 889
    return-void
.end method

.method public setMenu(I)V
    .locals 2

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->setMenu(Landroid/view/View;)V

    .line 415
    return-void
.end method

.method public setMenu(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/c;->setContent(Landroid/view/View;)V

    .line 425
    return-void
.end method

.method public setMode(I)V
    .locals 2

    .prologue
    .line 494
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 495
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SlidingMenu mode must be LEFT, RIGHT, or LEFT_RIGHT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/c;->setMode(I)V

    .line 499
    return-void
.end method

.method public setOnCloseListener(Lcom/yf/gattlib/slidingFragment/SlidingMenu$b;)V
    .locals 0

    .prologue
    .line 992
    iput-object p1, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->e:Lcom/yf/gattlib/slidingFragment/SlidingMenu$b;

    .line 993
    return-void
.end method

.method public setOnClosedListener(Lcom/yf/gattlib/slidingFragment/SlidingMenu$c;)V
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->b:Lcom/yf/gattlib/slidingFragment/a;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/a;->setOnClosedListener(Lcom/yf/gattlib/slidingFragment/SlidingMenu$c;)V

    .line 1017
    return-void
.end method

.method public setOnOpenListener(Lcom/yf/gattlib/slidingFragment/SlidingMenu$d;)V
    .locals 0

    .prologue
    .line 980
    iput-object p1, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->d:Lcom/yf/gattlib/slidingFragment/SlidingMenu$d;

    .line 981
    return-void
.end method

.method public setOnOpenedListener(Lcom/yf/gattlib/slidingFragment/SlidingMenu$e;)V
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->b:Lcom/yf/gattlib/slidingFragment/a;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/a;->setOnOpenedListener(Lcom/yf/gattlib/slidingFragment/SlidingMenu$e;)V

    .line 1005
    return-void
.end method

.method public setSecondaryMenu(I)V
    .locals 2

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->setSecondaryMenu(Landroid/view/View;)V

    .line 446
    return-void
.end method

.method public setSecondaryMenu(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/c;->setSecondaryContent(Landroid/view/View;)V

    .line 457
    return-void
.end method

.method public setSecondaryShadowDrawable(I)V
    .locals 1

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 849
    return-void
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/c;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 859
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/c;->setSelectedView(Landroid/view/View;)V

    .line 920
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/c;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 941
    return-void
.end method

.method public setSelectorDrawable(I)V
    .locals 2

    .prologue
    .line 929
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/slidingFragment/c;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 931
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/slidingFragment/c;->setSelectorEnabled(Z)V

    .line 910
    return-void
.end method

.method public setShadowDrawable(I)V
    .locals 1

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 828
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/c;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 838
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/c;->setShadowWidth(I)V

    .line 879
    return-void
.end method

.method public setShadowWidthRes(I)V
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->setShadowWidth(I)V

    .line 869
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->b:Lcom/yf/gattlib/slidingFragment/a;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/a;->setSlidingEnabled(Z)V

    .line 476
    return-void
.end method

.method public setStatic(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 518
    if-eqz p1, :cond_0

    .line 519
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->setSlidingEnabled(Z)V

    .line 520
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->b:Lcom/yf/gattlib/slidingFragment/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/slidingFragment/a;->setCustomViewBehind(Lcom/yf/gattlib/slidingFragment/c;)V

    .line 521
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->b:Lcom/yf/gattlib/slidingFragment/a;

    invoke-virtual {v0, v2}, Lcom/yf/gattlib/slidingFragment/a;->setCurrentItem(I)V

    .line 529
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->b:Lcom/yf/gattlib/slidingFragment/a;

    invoke-virtual {v0, v2}, Lcom/yf/gattlib/slidingFragment/a;->setCurrentItem(I)V

    .line 526
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->b:Lcom/yf/gattlib/slidingFragment/a;

    iget-object v1, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/slidingFragment/a;->setCustomViewBehind(Lcom/yf/gattlib/slidingFragment/c;)V

    .line 527
    invoke-virtual {p0, v2}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->setSlidingEnabled(Z)V

    goto :goto_0
.end method

.method public setTouchModeAbove(I)V
    .locals 2

    .prologue
    .line 792
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 794
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->b:Lcom/yf/gattlib/slidingFragment/a;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/a;->setTouchMode(I)V

    .line 799
    return-void
.end method

.method public setTouchModeBehind(I)V
    .locals 2

    .prologue
    .line 811
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 813
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/c;->setTouchMode(I)V

    .line 818
    return-void
.end method

.method public setTouchmodeMarginThreshold(I)V
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->c:Lcom/yf/gattlib/slidingFragment/c;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/slidingFragment/c;->setMarginThreshold(I)V

    .line 746
    return-void
.end method
