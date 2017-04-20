.class public Lit/sephiroth/android/library/widget/m;
.super Lit/sephiroth/android/library/widget/AbsHListView;
.source "ProGuard"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/widget/m$1;,
        Lit/sephiroth/android/library/widget/m$a;,
        Lit/sephiroth/android/library/widget/m$c;,
        Lit/sephiroth/android/library/widget/m$b;
    }
.end annotation


# instance fields
.field private aA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/m$b;",
            ">;"
        }
    .end annotation
.end field

.field private aB:Z

.field private aC:Z

.field private aD:Z

.field private aE:Z

.field private aF:Z

.field private aG:Z

.field private final aH:Landroid/graphics/Rect;

.field private aI:Landroid/graphics/Paint;

.field private final aJ:Lit/sephiroth/android/library/widget/m$a;

.field private aK:Lit/sephiroth/android/library/widget/m$c;

.field au:Landroid/graphics/drawable/Drawable;

.field av:I

.field aw:I

.field ax:Landroid/graphics/drawable/Drawable;

.field ay:Landroid/graphics/drawable/Drawable;

.field private az:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/m$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 148
    const v0, 0x7f010006

    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lit/sephiroth/android/library/widget/m;->az:Ljava/util/ArrayList;

    .line 113
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lit/sephiroth/android/library/widget/m;->aA:Ljava/util/ArrayList;

    .line 128
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/m;->aF:Z

    .line 130
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/m;->aG:Z

    .line 133
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    .line 138
    new-instance v4, Lit/sephiroth/android/library/widget/m$a;

    invoke-direct {v4, v3}, Lit/sephiroth/android/library/widget/m$a;-><init>(Lit/sephiroth/android/library/widget/m$1;)V

    iput-object v4, p0, Lit/sephiroth/android/library/widget/m;->aJ:Lit/sephiroth/android/library/widget/m$a;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 159
    sget-object v5, Lcom/yf/smart/weloopx/R$styleable;->HListView:[I

    invoke-virtual {v4, p2, v5, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 171
    if-eqz v8, :cond_5

    .line 172
    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v7

    .line 173
    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 174
    const/4 v3, 0x5

    invoke-virtual {v8, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 175
    const/4 v3, 0x6

    invoke-virtual {v8, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 176
    const/4 v3, 0x2

    invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 177
    const/4 v2, 0x3

    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 178
    const/4 v9, 0x4

    invoke-virtual {v8, v9, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 179
    const/4 v9, 0x7

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 180
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    :goto_0
    if-eqz v7, :cond_0

    .line 194
    new-instance v8, Landroid/widget/ArrayAdapter;

    const v9, 0x1090003

    invoke-direct {v8, p1, v9, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v8}, Lit/sephiroth/android/library/widget/m;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    :cond_0
    if-eqz v6, :cond_1

    .line 199
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/m;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 202
    :cond_1
    if-eqz v5, :cond_2

    .line 203
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/m;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 206
    :cond_2
    if-eqz v4, :cond_3

    .line 207
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/m;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 211
    :cond_3
    if-eqz v3, :cond_4

    .line 212
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/m;->setDividerWidth(I)V

    .line 215
    :cond_4
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/m;->aD:Z

    .line 216
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/m;->aE:Z

    .line 217
    iput v0, p0, Lit/sephiroth/android/library/widget/m;->aw:I

    .line 219
    return-void

    :cond_5
    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move v3, v2

    move v2, v1

    goto :goto_0
.end method

.method private A()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 549
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    .line 550
    iget v2, p0, Lit/sephiroth/android/library/widget/m;->V:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-le v2, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private B()Z
    .locals 4

    .prologue
    .line 557
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v0

    .line 558
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 559
    iget v2, p0, Lit/sephiroth/android/library/widget/m;->V:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 561
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 563
    iget v3, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_0

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ILandroid/view/View;I)I
    .locals 3

    .prologue
    .line 2955
    const/4 v0, 0x0

    .line 2956
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2957
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Lit/sephiroth/android/library/widget/m;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2958
    const/16 v1, 0x21

    if-ne p1, v1, :cond_1

    .line 2959
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_0

    .line 2960
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 2961
    if-lez p3, :cond_0

    .line 2962
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/m;->getArrowScrollPreviewLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 2974
    :cond_0
    :goto_0
    return v0

    .line 2966
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getWidth()I

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 2967
    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    .line 2968
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 2969
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    add-int/lit8 v1, v1, -0x1

    if-ge p3, v1, :cond_0

    .line 2970
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/m;->getArrowScrollPreviewLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private a(IIZIZ)Landroid/view/View;
    .locals 8

    .prologue
    .line 1873
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/m;->aj:Z

    if-nez v0, :cond_0

    .line 1875
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->c(I)Landroid/view/View;

    move-result-object v1

    .line 1876
    if-eqz v1, :cond_0

    .line 1879
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lit/sephiroth/android/library/widget/m;->a(Landroid/view/View;IIZIZZ)V

    .line 1891
    :goto_0
    return-object v1

    .line 1886
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->P:[Z

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/m;->a(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1889
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->P:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lit/sephiroth/android/library/widget/m;->a(Landroid/view/View;IIZIZZ)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 11

    .prologue
    .line 955
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 956
    iget v6, p0, Lit/sephiroth/android/library/widget/m;->am:I

    .line 960
    invoke-direct {p0, p4, v0, v6}, Lit/sephiroth/android/library/widget/m;->d(III)I

    move-result v7

    .line 961
    invoke-direct {p0, p4, v0, v6}, Lit/sephiroth/android/library/widget/m;->c(III)I

    move-result v8

    .line 963
    if-lez p3, :cond_2

    .line 976
    add-int/lit8 v1, v6, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/m;->a(IIZIZ)Landroid/view/View;

    move-result-object v9

    .line 978
    iget v10, p0, Lit/sephiroth/android/library/widget/m;->av:I

    .line 981
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v0

    add-int v2, v0, v10

    const/4 v3, 0x1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/m;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 984
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    if-le v1, v8, :cond_0

    .line 987
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    .line 990
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v2, v8

    .line 993
    sub-int v3, p5, p4

    div-int/lit8 v3, v3, 0x2

    .line 994
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 995
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 998
    neg-int v2, v1

    invoke-virtual {v9, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1000
    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1004
    :cond_0
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/m;->K:Z

    if-nez v1, :cond_1

    .line 1005
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->am:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/m;->h(II)Landroid/view/View;

    .line 1006
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/m;->z()V

    .line 1007
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->am:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v10

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/m;->g(II)Landroid/view/View;

    .line 1077
    :goto_0
    return-object v0

    .line 1009
    :cond_1
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->am:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v10

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/m;->g(II)Landroid/view/View;

    .line 1010
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/m;->z()V

    .line 1011
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->am:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/m;->h(II)Landroid/view/View;

    goto :goto_0

    .line 1013
    :cond_2
    if-gez p3, :cond_5

    .line 1025
    if-eqz p2, :cond_4

    .line 1027
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/m;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1035
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge v1, v7, :cond_3

    .line 1037
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v7, v1

    .line 1040
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v2, v8, v2

    .line 1043
    sub-int v3, p5, p4

    div-int/lit8 v3, v3, 0x2

    .line 1044
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1045
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1048
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1052
    :cond_3
    invoke-direct {p0, v0, v6}, Lit/sephiroth/android/library/widget/m;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 1031
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 v3, 0x0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/m;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1055
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1060
    const/4 v3, 0x1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/m;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1063
    if-ge v2, p4, :cond_6

    .line 1066
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1067
    add-int/lit8 v2, p4, 0x14

    if-ge v1, v2, :cond_6

    .line 1069
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, p4, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1074
    :cond_6
    invoke-direct {p0, v0, v6}, Lit/sephiroth/android/library/widget/m;->a(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private a(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 801
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->av:I

    .line 802
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/m;->K:Z

    if-nez v1, :cond_0

    .line 803
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/m;->h(II)Landroid/view/View;

    .line 804
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/m;->z()V

    .line 805
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lit/sephiroth/android/library/widget/m;->g(II)Landroid/view/View;

    .line 811
    :goto_0
    return-void

    .line 807
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/m;->g(II)Landroid/view/View;

    .line 808
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/m;->z()V

    .line 809
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v0, v2, v0

    invoke-direct {p0, v1, v0}, Lit/sephiroth/android/library/widget/m;->h(II)Landroid/view/View;

    goto :goto_0
.end method

.method private a(Landroid/view/View;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1183
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$f;

    .line 1184
    if-nez v0, :cond_0

    .line 1185
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$f;

    .line 1186
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1188
    :cond_0
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView$f;->a:I

    .line 1189
    const/4 v1, 0x1

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/AbsHListView$f;->c:Z

    .line 1191
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$f;->height:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1192
    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$f;->width:I

    .line 1194
    if-lez v0, :cond_1

    .line 1195
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1199
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1200
    return-void

    .line 1197
    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;IIZ)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2566
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 2567
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newSelectedPosition needs to be valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2578
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->am:I

    iget v3, p0, Lit/sephiroth/android/library/widget/m;->V:I

    sub-int/2addr v0, v3

    .line 2579
    iget v3, p0, Lit/sephiroth/android/library/widget/m;->V:I

    sub-int v3, p3, v3

    .line 2581
    const/16 v4, 0x21

    if-ne p2, v4, :cond_3

    .line 2584
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    move v4, v3

    move v3, v0

    move v0, v1

    .line 2594
    :goto_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v7

    .line 2597
    if-eqz v5, :cond_1

    .line 2598
    if-nez p4, :cond_4

    if-eqz v0, :cond_4

    move v6, v1

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 2599
    invoke-direct {p0, v5, v4, v7}, Lit/sephiroth/android/library/widget/m;->b(Landroid/view/View;II)V

    .line 2603
    :cond_1
    if-eqz p1, :cond_2

    .line 2604
    if-nez p4, :cond_5

    if-nez v0, :cond_5

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 2605
    invoke-direct {p0, p1, v3, v7}, Lit/sephiroth/android/library/widget/m;->b(Landroid/view/View;II)V

    .line 2607
    :cond_2
    return-void

    .line 2591
    :cond_3
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v5, p1

    move-object p1, v4

    move v4, v0

    move v0, v2

    goto :goto_0

    :cond_4
    move v6, v2

    .line 2598
    goto :goto_1

    :cond_5
    move v1, v2

    .line 2604
    goto :goto_2
.end method

.method private a(Landroid/view/View;IIZIZZ)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1914
    if-eqz p6, :cond_8

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    move v1, v0

    .line 1915
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eq v1, v0, :cond_9

    const/4 v0, 0x1

    move v2, v0

    .line 1916
    :goto_1
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->F:I

    .line 1917
    if-lez v0, :cond_a

    const/4 v3, 0x3

    if-ge v0, v3, :cond_a

    iget v0, p0, Lit/sephiroth/android/library/widget/m;->A:I

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    move v3, v0

    .line 1918
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eq v3, v0, :cond_b

    const/4 v0, 0x1

    move v6, v0

    .line 1919
    :goto_3
    if-eqz p7, :cond_0

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_0
    const/4 v0, 0x1

    move v4, v0

    .line 1923
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$f;

    .line 1924
    if-nez v0, :cond_16

    .line 1925
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$f;

    move-object v5, v0

    .line 1927
    :goto_5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    iput v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$f;->a:I

    .line 1929
    if-eqz p7, :cond_1

    iget-boolean v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$f;->c:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$f;->b:Z

    if-eqz v0, :cond_e

    iget v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$f;->a:I

    const/4 v7, -0x2

    if-ne v0, v7, :cond_e

    .line 1930
    :cond_2
    if-eqz p4, :cond_d

    const/4 v0, -0x1

    :goto_6
    invoke-virtual {p0, p1, v0, v5}, Lit/sephiroth/android/library/widget/m;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1939
    :goto_7
    if-eqz v2, :cond_3

    .line 1940
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1943
    :cond_3
    if-eqz v6, :cond_4

    .line 1944
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1947
    :cond_4
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->b:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->f:Landroid/support/v4/f/j;

    if-eqz v0, :cond_5

    .line 1948
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_11

    move-object v0, p1

    .line 1949
    check-cast v0, Landroid/widget/Checkable;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->f:Landroid/support/v4/f/j;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/f/j;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1955
    :cond_5
    :goto_8
    if-eqz v4, :cond_13

    .line 1956
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->v:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget v2, v5, Lit/sephiroth/android/library/widget/AbsHListView$f;->height:I

    invoke-static {v0, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1957
    iget v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$f;->width:I

    .line 1959
    if-lez v0, :cond_12

    .line 1960
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1964
    :goto_9
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1969
    :goto_a
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1970
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1971
    if-eqz p4, :cond_14

    .line 1973
    :goto_b
    if-eqz v4, :cond_15

    .line 1974
    add-int/2addr v1, p5

    .line 1975
    add-int/2addr v0, p3

    .line 1976
    invoke-virtual {p1, p3, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1982
    :goto_c
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/m;->y:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1983
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1986
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_7

    .line 1987
    if-eqz p7, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$f;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$f;->d:I

    if-eq v0, p2, :cond_7

    .line 1988
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1991
    :cond_7
    return-void

    .line 1914
    :cond_8
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    .line 1915
    :cond_9
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_1

    .line 1917
    :cond_a
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_2

    .line 1918
    :cond_b
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_3

    .line 1919
    :cond_c
    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_4

    .line 1930
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 1932
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$f;->c:Z

    .line 1933
    iget v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$f;->a:I

    const/4 v7, -0x2

    if-ne v0, v7, :cond_f

    .line 1934
    const/4 v0, 0x1

    iput-boolean v0, v5, Lit/sephiroth/android/library/widget/AbsHListView$f;->b:Z

    .line 1936
    :cond_f
    if-eqz p4, :cond_10

    const/4 v0, -0x1

    :goto_d
    const/4 v7, 0x1

    invoke-virtual {p0, p1, v0, v5, v7}, Lit/sephiroth/android/library/widget/m;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_7

    :cond_10
    const/4 v0, 0x0

    goto :goto_d

    .line 1950
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 1951
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->f:Landroid/support/v4/f/j;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/f/j;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_8

    .line 1962
    :cond_12
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto/16 :goto_9

    .line 1966
    :cond_13
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/m;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_a

    .line 1971
    :cond_14
    sub-int/2addr p3, v0

    goto/16 :goto_b

    .line 1978
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, p3, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1979
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, p5, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_c

    :cond_16
    move-object v5, v0

    goto/16 :goto_5
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/m$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 532
    if-eqz p1, :cond_1

    .line 533
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 535
    :goto_0
    if-ge v1, v3, :cond_1

    .line 536
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/m$b;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/m$b;->a:Landroid/view/View;

    .line 537
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$f;

    .line 538
    if-eqz v0, :cond_0

    .line 539
    iput-boolean v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$f;->b:Z

    .line 535
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 543
    :cond_1
    return-void
.end method

.method private a(IILandroid/view/KeyEvent;)Z
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2176
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/m;->S:Z

    if-nez v0, :cond_1

    .line 2309
    :cond_0
    :goto_0
    return v1

    .line 2180
    :cond_1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/m;->aj:Z

    if-eqz v0, :cond_2

    .line 2181
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->e()V

    .line 2184
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    .line 2189
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    .line 2191
    if-eq v4, v2, :cond_3

    .line 2192
    sparse-switch p1, :sswitch_data_0

    :cond_3
    move v0, v1

    .line 2294
    :cond_4
    :goto_1
    if-eqz v0, :cond_1b

    move v1, v2

    .line 2295
    goto :goto_0

    .line 2194
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2195
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->o()Z

    move-result v0

    .line 2196
    if-nez v0, :cond_4

    move v3, p2

    .line 2197
    :goto_2
    add-int/lit8 p2, v3, -0x1

    if-lez v3, :cond_4

    .line 2198
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/m;->j(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    move v3, p2

    .line 2199
    goto :goto_2

    .line 2205
    :cond_5
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2206
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->o()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/m;->i(I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_1

    .line 2211
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2212
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->o()Z

    move-result v0

    .line 2213
    if-nez v0, :cond_4

    move v3, p2

    .line 2214
    :goto_3
    add-int/lit8 p2, v3, -0x1

    if-lez v3, :cond_4

    .line 2215
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/m;->j(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    move v3, p2

    .line 2216
    goto :goto_3

    .line 2222
    :cond_8
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2223
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->o()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/m;->i(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move v0, v2

    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_1

    .line 2228
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2229
    invoke-direct {p0, v5}, Lit/sephiroth/android/library/widget/m;->m(I)Z

    move-result v0

    goto :goto_1

    .line 2234
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2235
    invoke-direct {p0, v6}, Lit/sephiroth/android/library/widget/m;->m(I)Z

    move-result v0

    goto :goto_1

    .line 2241
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2242
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->o()Z

    move-result v0

    .line 2243
    if-nez v0, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 2245
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->i()V

    move v0, v2

    .line 2246
    goto/16 :goto_1

    .line 2253
    :sswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2254
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->o()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/m;->h(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_b
    :goto_4
    move v0, v2

    .line 2259
    goto/16 :goto_1

    .line 2255
    :cond_c
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2256
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->o()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/m;->h(I)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4

    .line 2262
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2263
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->o()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/m;->h(I)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    move v0, v2

    goto/16 :goto_1

    :cond_e
    move v0, v1

    goto/16 :goto_1

    .line 2264
    :cond_f
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2265
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->o()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/m;->i(I)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    move v0, v2

    goto/16 :goto_1

    :cond_11
    move v0, v1

    goto/16 :goto_1

    .line 2270
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2271
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->o()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/m;->h(I)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    move v0, v2

    goto/16 :goto_1

    :cond_13
    move v0, v1

    goto/16 :goto_1

    .line 2272
    :cond_14
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2273
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->o()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/m;->i(I)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    move v0, v2

    goto/16 :goto_1

    :cond_16
    move v0, v1

    goto/16 :goto_1

    .line 2278
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2279
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->o()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/m;->i(I)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    move v0, v2

    goto/16 :goto_1

    :cond_18
    move v0, v1

    goto/16 :goto_1

    .line 2284
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2285
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->o()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/m;->i(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    move v0, v2

    goto/16 :goto_1

    :cond_1a
    move v0, v1

    goto/16 :goto_1

    .line 2298
    :cond_1b
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 2300
    :pswitch_0
    invoke-super {p0, p1, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 2303
    :pswitch_1
    invoke-super {p0, p1, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 2306
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 2192
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 2298
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2935
    if-ne p1, p2, :cond_0

    .line 2940
    :goto_0
    return v1

    .line 2939
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2940
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lit/sephiroth/android/library/widget/m;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(III)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 826
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 827
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->am:I

    .line 831
    invoke-direct {p0, p2, v0, v1}, Lit/sephiroth/android/library/widget/m;->d(III)I

    move-result v6

    .line 832
    invoke-direct {p0, p3, v0, v1}, Lit/sephiroth/android/library/widget/m;->c(III)I

    move-result v7

    .line 834
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/m;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 837
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, v7, :cond_1

    .line 840
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v6

    .line 844
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v7

    .line 845
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 848
    neg-int v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 864
    :cond_0
    :goto_0
    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/m;->a(Landroid/view/View;I)V

    .line 866
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/m;->K:Z

    if-nez v1, :cond_2

    .line 867
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/m;->k(I)V

    .line 872
    :goto_1
    return-object v0

    .line 849
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v2, v6, :cond_0

    .line 852
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v6, v2

    .line 856
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v3, v7, v3

    .line 857
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 860
    invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 869
    :cond_2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/m;->l(I)V

    goto :goto_1
.end method

.method private b(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 3080
    add-int/lit8 v2, p2, -0x1

    .line 3081
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->P:[Z

    invoke-virtual {p0, v2, v0}, Lit/sephiroth/android/library/widget/m;->a(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3082
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v3, p0, Lit/sephiroth/android/library/widget/m;->av:I

    sub-int v3, v0, v3

    .line 3083
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->P:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lit/sephiroth/android/library/widget/m;->a(Landroid/view/View;IIZIZZ)V

    .line 3084
    return-object v1
.end method

.method private b(Landroid/view/View;II)V
    .locals 3

    .prologue
    .line 2620
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2621
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/m;->d(Landroid/view/View;)V

    .line 2622
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 2624
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/m;->e(Landroid/view/View;)V

    .line 2627
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2628
    add-int/lit8 v0, p2, 0x1

    :goto_0
    if-ge v0, p3, :cond_0

    .line 2629
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2628
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2632
    :cond_0
    return-void
.end method

.method private c(III)I
    .locals 1

    .prologue
    .line 887
    .line 888
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    add-int/lit8 v0, v0, -0x1

    if-eq p3, v0, :cond_0

    .line 889
    sub-int/2addr p1, p2

    .line 891
    :cond_0
    return p1
.end method

.method private c(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 3088
    add-int/lit8 v2, p2, 0x1

    .line 3089
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->P:[Z

    invoke-virtual {p0, v2, v0}, Lit/sephiroth/android/library/widget/m;->a(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3090
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v3, p0, Lit/sephiroth/android/library/widget/m;->av:I

    add-int/2addr v3, v0

    .line 3091
    const/4 v4, 0x1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->P:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lit/sephiroth/android/library/widget/m;->a(Landroid/view/View;IIZIZZ)V

    .line 3092
    return-object v1
.end method

.method private c(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1837
    iget-object v4, p0, Lit/sephiroth/android/library/widget/m;->az:Ljava/util/ArrayList;

    .line 1838
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 1839
    :goto_0
    if-ge v3, v5, :cond_1

    .line 1840
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/m$b;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/m$b;->a:Landroid/view/View;

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 1851
    :goto_1
    return v0

    .line 1839
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1844
    :cond_1
    iget-object v4, p0, Lit/sephiroth/android/library/widget/m;->aA:Ljava/util/ArrayList;

    .line 1845
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 1846
    :goto_2
    if-ge v3, v5, :cond_3

    .line 1847
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/m$b;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/m$b;->a:Landroid/view/View;

    if-ne p1, v0, :cond_2

    move v0, v1

    .line 1848
    goto :goto_1

    .line 1846
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    move v0, v2

    .line 1851
    goto :goto_1
.end method

.method private d(III)I
    .locals 0

    .prologue
    .line 907
    .line 908
    if-lez p3, :cond_0

    .line 909
    add-int/2addr p1, p2

    .line 911
    :cond_0
    return p1
.end method

.method private d(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2640
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2641
    if-nez v0, :cond_0

    .line 2642
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2647
    :cond_0
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->v:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2648
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2650
    if-lez v0, :cond_1

    .line 2651
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2655
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 2656
    return-void

    .line 2653
    :cond_1
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private e(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 2664
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 2665
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2667
    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 2668
    add-int/2addr v1, v2

    .line 2670
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2671
    add-int/2addr v0, v3

    .line 2673
    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 2674
    return-void
.end method

.method private f(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 2920
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v1

    .line 2921
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2922
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2923
    invoke-direct {p0, p1, v2}, Lit/sephiroth/android/library/widget/m;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2924
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->V:I

    add-int/2addr v0, v1

    return v0

    .line 2921
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2927
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 2985
    const/4 v0, 0x0

    .line 2986
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2987
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lit/sephiroth/android/library/widget/m;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2988
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 2989
    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_1

    .line 2990
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 2994
    :cond_0
    :goto_0
    return v0

    .line 2991
    :cond_1
    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v2, v1, :cond_0

    .line 2992
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private g(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 750
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->V:I

    iget v1, p0, Lit/sephiroth/android/library/widget/m;->am:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/m;->V:I

    .line 751
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->V:I

    iget v1, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/m;->V:I

    .line 752
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->V:I

    if-gez v0, :cond_0

    .line 753
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/m;->V:I

    .line 755
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->V:I

    invoke-direct {p0, v0, p1}, Lit/sephiroth/android/library/widget/m;->g(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private g(II)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 683
    const/4 v6, 0x0

    .line 685
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getLeft()I

    move-result v1

    sub-int v7, v0, v1

    move v2, p2

    move v1, p1

    .line 690
    :goto_0
    if-ge v2, v7, :cond_1

    iget v0, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    if-ge v1, v0, :cond_1

    .line 692
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->am:I

    if-ne v1, v0, :cond_0

    move v5, v3

    .line 693
    :goto_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/m;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 695
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    iget v4, p0, Lit/sephiroth/android/library/widget/m;->av:I

    add-int/2addr v2, v4

    .line 696
    if-eqz v5, :cond_2

    .line 699
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object v6, v0

    .line 700
    goto :goto_0

    .line 692
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 702
    :cond_1
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->V:I

    iget v1, p0, Lit/sephiroth/android/library/widget/m;->V:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/m;->e(II)V

    .line 703
    return-object v6

    :cond_2
    move-object v0, v6

    goto :goto_2
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 2680
    const/4 v0, 0x2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getHorizontalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private h(II)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 718
    const/4 v6, 0x0

    move v2, p2

    move v1, p1

    .line 725
    :goto_0
    if-le v2, v3, :cond_1

    if-ltz v1, :cond_1

    .line 727
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->am:I

    if-ne v1, v0, :cond_0

    const/4 v5, 0x1

    .line 728
    :goto_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/m;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 729
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v4, p0, Lit/sephiroth/android/library/widget/m;->av:I

    sub-int/2addr v2, v4

    .line 730
    if-eqz v5, :cond_2

    .line 733
    :goto_2
    add-int/lit8 v1, v1, -0x1

    move-object v6, v0

    .line 734
    goto :goto_0

    :cond_0
    move v5, v3

    .line 727
    goto :goto_1

    .line 736
    :cond_1
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/m;->V:I

    .line 737
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->V:I

    iget v1, p0, Lit/sephiroth/android/library/widget/m;->V:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/m;->e(II)V

    .line 738
    return-object v6

    :cond_2
    move-object v0, v6

    goto :goto_2
.end method

.method private i(II)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 769
    sub-int v6, p2, p1

    .line 771
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->n()I

    move-result v1

    .line 773
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/m;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 774
    iput v1, p0, Lit/sephiroth/android/library/widget/m;->V:I

    .line 776
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 777
    if-gt v2, v6, :cond_0

    .line 778
    sub-int v2, v6, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 781
    :cond_0
    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/m;->a(Landroid/view/View;I)V

    .line 783
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/m;->K:Z

    if-nez v1, :cond_1

    .line 784
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/m;->k(I)V

    .line 789
    :goto_0
    return-object v0

    .line 786
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/m;->l(I)V

    goto :goto_0
.end method

.method private j(II)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1387
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->am:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1388
    :goto_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/m;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1390
    iput p1, p0, Lit/sephiroth/android/library/widget/m;->V:I

    .line 1395
    iget v3, p0, Lit/sephiroth/android/library/widget/m;->av:I

    .line 1396
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/m;->K:Z

    if-nez v1, :cond_2

    .line 1397
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/m;->h(II)Landroid/view/View;

    move-result-object v1

    .line 1399
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/m;->z()V

    .line 1400
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lit/sephiroth/android/library/widget/m;->g(II)Landroid/view/View;

    move-result-object v2

    .line 1401
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v3

    .line 1402
    if-lez v3, :cond_0

    .line 1403
    invoke-direct {p0, v3}, Lit/sephiroth/android/library/widget/m;->k(I)V

    .line 1416
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .line 1421
    :goto_2
    return-object v0

    .line 1387
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1406
    :cond_2
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/m;->g(II)Landroid/view/View;

    move-result-object v2

    .line 1408
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/m;->z()V

    .line 1409
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v3, v4, v3

    invoke-direct {p0, v1, v3}, Lit/sephiroth/android/library/widget/m;->h(II)Landroid/view/View;

    move-result-object v1

    .line 1410
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v3

    .line 1411
    if-lez v3, :cond_0

    .line 1412
    invoke-direct {p0, v3}, Lit/sephiroth/android/library/widget/m;->l(I)V

    goto :goto_1

    .line 1418
    :cond_3
    if-eqz v1, :cond_4

    move-object v0, v1

    .line 1419
    goto :goto_2

    :cond_4
    move-object v0, v2

    .line 1421
    goto :goto_2
.end method

.method private k(II)I
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 2694
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getWidth()I

    move-result v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v1, v0, v1

    .line 2695
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 2697
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v4

    .line 2699
    const/16 v0, 0x82

    if-ne p1, v0, :cond_5

    .line 2700
    add-int/lit8 v0, v4, -0x1

    .line 2701
    if-eq p2, v6, :cond_0

    .line 2702
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->V:I

    sub-int v0, p2, v0

    .line 2705
    :cond_0
    iget v3, p0, Lit/sephiroth/android/library/widget/m;->V:I

    add-int/2addr v3, v0

    .line 2706
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2709
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_a

    .line 2710
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/m;->getArrowScrollPreviewLength()I

    move-result v0

    sub-int v0, v1, v0

    .line 2713
    :goto_0
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt v3, v0, :cond_2

    .line 2761
    :cond_1
    :goto_1
    return v2

    .line 2718
    :cond_2
    if-eq p2, v6, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getMaxScrollAmount()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 2724
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v0, v2, v0

    .line 2726
    iget v2, p0, Lit/sephiroth/android/library/widget/m;->V:I

    add-int/2addr v2, v4

    iget v3, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    if-ne v2, v3, :cond_4

    .line 2728
    add-int/lit8 v2, v4, -0x1

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v1, v2, v1

    .line 2729
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2732
    :cond_4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getMaxScrollAmount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 2735
    :cond_5
    if-eq p2, v6, :cond_9

    .line 2736
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->V:I

    sub-int v0, p2, v0

    .line 2738
    :goto_2
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->V:I

    add-int/2addr v1, v0

    .line 2739
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2741
    if-lez v1, :cond_8

    .line 2742
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/m;->getArrowScrollPreviewLength()I

    move-result v0

    add-int/2addr v0, v3

    .line 2744
    :goto_3
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 2749
    if-eq p2, v6, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getMaxScrollAmount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 2755
    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2756
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->V:I

    if-nez v1, :cond_7

    .line 2758
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v3, v1

    .line 2759
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2761
    :cond_7
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getMaxScrollAmount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    :cond_8
    move v0, v3

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_2

    :cond_a
    move v0, v1

    goto/16 :goto_0
.end method

.method private k(I)V
    .locals 4

    .prologue
    .line 1435
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->V:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 1436
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    if-lez p1, :cond_2

    .line 1439
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1442
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1445
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 1449
    sub-int v0, v1, v0

    .line 1450
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1451
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1455
    if-lez v0, :cond_2

    iget v3, p0, Lit/sephiroth/android/library/widget/m;->V:I

    if-gtz v3, :cond_0

    iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2

    .line 1456
    :cond_0
    iget v3, p0, Lit/sephiroth/android/library/widget/m;->V:I

    if-nez v3, :cond_1

    .line 1458
    iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1461
    :cond_1
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->c(I)V

    .line 1462
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->V:I

    if-lez v0, :cond_2

    .line 1465
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->V:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lit/sephiroth/android/library/widget/m;->av:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/m;->h(II)Landroid/view/View;

    .line 1467
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/m;->z()V

    .line 1472
    :cond_2
    return-void
.end method

.method private l(I)V
    .locals 6

    .prologue
    .line 1484
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->V:I

    if-nez v0, :cond_2

    if-lez p1, :cond_2

    .line 1487
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1490
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1493
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 1496
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 1500
    sub-int/2addr v0, v1

    .line 1501
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1502
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1503
    iget v4, p0, Lit/sephiroth/android/library/widget/m;->V:I

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    .line 1507
    if-lez v0, :cond_2

    .line 1508
    iget v5, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_0

    if-le v3, v2, :cond_3

    .line 1509
    :cond_0
    iget v5, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_1

    .line 1511
    sub-int v2, v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1514
    :cond_1
    neg-int v0, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->c(I)V

    .line 1515
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_2

    .line 1518
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, p0, Lit/sephiroth/android/library/widget/m;->av:I

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/m;->g(II)Landroid/view/View;

    .line 1520
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/m;->z()V

    .line 1527
    :cond_2
    :goto_0
    return-void

    .line 1522
    :cond_3
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_2

    .line 1523
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/m;->z()V

    goto :goto_0
.end method

.method private m(I)Z
    .locals 3

    .prologue
    .line 2407
    const/16 v0, 0x21

    if-eq p1, v0, :cond_0

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    .line 2408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2412
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v0

    .line 2413
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/m;->aG:Z

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    iget v0, p0, Lit/sephiroth/android/library/widget/m;->am:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2414
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2415
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 2418
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2419
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2421
    if-eqz v0, :cond_1

    .line 2423
    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2424
    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lit/sephiroth/android/library/widget/m;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2425
    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lit/sephiroth/android/library/widget/m;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2426
    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2427
    const/4 v0, 0x1

    .line 2441
    :goto_0
    return v0

    .line 2434
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2436
    if-eqz v0, :cond_2

    .line 2437
    invoke-direct {p0, v0, p0}, Lit/sephiroth/android/library/widget/m;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    .line 2441
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n(I)Z
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2474
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2546
    :cond_0
    :goto_0
    return v2

    .line 2478
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2479
    iget v5, p0, Lit/sephiroth/android/library/widget/m;->am:I

    .line 2481
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/m;->o(I)I

    move-result v7

    .line 2482
    invoke-direct {p0, p1, v7}, Lit/sephiroth/android/library/widget/m;->k(II)I

    move-result v3

    .line 2485
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/m;->aG:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/m;->p(I)Lit/sephiroth/android/library/widget/m$a;

    move-result-object v0

    move-object v8, v0

    .line 2486
    :goto_1
    if-eqz v8, :cond_2

    .line 2487
    invoke-virtual {v8}, Lit/sephiroth/android/library/widget/m$a;->a()I

    move-result v7

    .line 2488
    invoke-virtual {v8}, Lit/sephiroth/android/library/widget/m$a;->b()I

    move-result v3

    .line 2491
    :cond_2
    if-eqz v8, :cond_a

    move v0, v1

    .line 2492
    :goto_2
    if-eq v7, v9, :cond_e

    .line 2493
    if-eqz v8, :cond_b

    move v0, v1

    :goto_3
    invoke-direct {p0, v6, p1, v7, v0}, Lit/sephiroth/android/library/widget/m;->a(Landroid/view/View;IIZ)V

    .line 2494
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/m;->setSelectedPositionInt(I)V

    .line 2495
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/m;->setNextSelectedPositionInt(I)V

    .line 2496
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 2498
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/m;->aG:Z

    if-eqz v0, :cond_3

    if-nez v8, :cond_3

    .line 2501
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2502
    if-eqz v0, :cond_3

    .line 2503
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 2507
    :cond_3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->v()V

    move v0, v1

    move v6, v7

    .line 2510
    :goto_4
    if-lez v3, :cond_4

    .line 2511
    const/16 v0, 0x21

    if-ne p1, v0, :cond_c

    move v0, v3

    :goto_5
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/m;->q(I)V

    move v0, v1

    .line 2517
    :cond_4
    iget-boolean v3, p0, Lit/sephiroth/android/library/widget/m;->aG:Z

    if-eqz v3, :cond_6

    if-nez v8, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2518
    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 2519
    invoke-direct {p0, v3, p0}, Lit/sephiroth/android/library/widget/m;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-direct {p0, v3}, Lit/sephiroth/android/library/widget/m;->g(Landroid/view/View;)I

    move-result v8

    if-lez v8, :cond_6

    .line 2520
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    .line 2525
    :cond_6
    if-ne v7, v9, :cond_d

    if-eqz v5, :cond_d

    invoke-direct {p0, v5, p0}, Lit/sephiroth/android/library/widget/m;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 2527
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->m()V

    .line 2531
    iput v9, p0, Lit/sephiroth/android/library/widget/m;->M:I

    move-object v3, v4

    .line 2534
    :goto_6
    if-eqz v0, :cond_0

    .line 2535
    if-eqz v3, :cond_7

    .line 2536
    invoke-virtual {p0, v6, v3}, Lit/sephiroth/android/library/widget/m;->a(ILandroid/view/View;)V

    .line 2537
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/m;->J:I

    .line 2539
    :cond_7
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2540
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->invalidate()V

    .line 2542
    :cond_8
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->b()V

    move v2, v1

    .line 2543
    goto/16 :goto_0

    :cond_9
    move-object v8, v4

    .line 2485
    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 2491
    goto/16 :goto_2

    :cond_b
    move v0, v2

    .line 2493
    goto :goto_3

    .line 2511
    :cond_c
    neg-int v0, v3

    goto :goto_5

    :cond_d
    move-object v3, v5

    goto :goto_6

    :cond_e
    move v10, v5

    move-object v5, v6

    move v6, v10

    goto :goto_4
.end method

.method private o(I)I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 2798
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->V:I

    .line 2799
    const/16 v0, 0x82

    if-ne p1, v0, :cond_5

    .line 2800
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->am:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lit/sephiroth/android/library/widget/m;->am:I

    add-int/lit8 v0, v0, 0x1

    .line 2803
    :goto_0
    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_2

    move v0, v3

    .line 2838
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 2800
    goto :goto_0

    .line 2806
    :cond_2
    if-ge v0, v1, :cond_3

    move v0, v1

    .line 2810
    :cond_3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getLastVisiblePosition()I

    move-result v2

    .line 2811
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 2812
    :goto_2
    if-gt v0, v2, :cond_a

    .line 2813
    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_4

    sub-int v5, v0, v1

    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    .line 2812
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2819
    :cond_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 2820
    iget v2, p0, Lit/sephiroth/android/library/widget/m;->am:I

    if-eq v2, v3, :cond_7

    iget v2, p0, Lit/sephiroth/android/library/widget/m;->am:I

    add-int/lit8 v2, v2, -0x1

    .line 2823
    :goto_3
    if-ltz v2, :cond_6

    iget-object v4, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-lt v2, v4, :cond_8

    :cond_6
    move v0, v3

    .line 2824
    goto :goto_1

    .line 2820
    :cond_7
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 2826
    :cond_8
    if-le v2, v0, :cond_b

    .line 2830
    :goto_4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 2831
    :goto_5
    if-lt v0, v1, :cond_a

    .line 2832
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_9

    sub-int v4, v0, v1

    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 2831
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_a
    move v0, v3

    .line 2838
    goto :goto_1

    :cond_b
    move v0, v2

    goto :goto_4
.end method

.method private p(I)Lit/sephiroth/android/library/widget/m$a;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0x82

    const/4 v0, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 2850
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getSelectedView()Landroid/view/View;

    move-result-object v3

    .line 2852
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2853
    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2854
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2879
    :goto_0
    if-eqz v0, :cond_c

    .line 2880
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/m;->f(Landroid/view/View;)I

    move-result v1

    .line 2884
    iget v3, p0, Lit/sephiroth/android/library/widget/m;->am:I

    if-eq v3, v6, :cond_a

    iget v3, p0, Lit/sephiroth/android/library/widget/m;->am:I

    if-eq v1, v3, :cond_a

    .line 2885
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/m;->o(I)I

    move-result v3

    .line 2886
    if-eq v3, v6, :cond_a

    if-ne p1, v7, :cond_0

    if-lt v3, v1, :cond_1

    :cond_0
    const/16 v4, 0x21

    if-ne p1, v4, :cond_a

    if-le v3, v1, :cond_a

    :cond_1
    move-object v0, v2

    .line 2911
    :goto_1
    return-object v0

    .line 2856
    :cond_2
    if-ne p1, v7, :cond_6

    .line 2857
    iget v4, p0, Lit/sephiroth/android/library/widget/m;->V:I

    if-lez v4, :cond_4

    .line 2858
    :goto_2
    iget-object v4, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/m;->getArrowScrollPreviewLength()I

    move-result v0

    :goto_3
    add-int/2addr v0, v4

    .line 2860
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    if-le v4, v0, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 2864
    :cond_3
    iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2876
    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 2857
    goto :goto_2

    :cond_5
    move v0, v1

    .line 2858
    goto :goto_3

    .line 2866
    :cond_6
    iget v4, p0, Lit/sephiroth/android/library/widget/m;->V:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    if-ge v4, v5, :cond_8

    .line 2868
    :goto_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getWidth()I

    move-result v4

    iget-object v5, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/m;->getArrowScrollPreviewLength()I

    move-result v0

    :goto_6
    sub-int v0, v4, v0

    .line 2870
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    if-ge v4, v0, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v0

    .line 2874
    :cond_7
    iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    :cond_8
    move v0, v1

    .line 2866
    goto :goto_5

    :cond_9
    move v0, v1

    .line 2868
    goto :goto_6

    .line 2893
    :cond_a
    invoke-direct {p0, p1, v0, v1}, Lit/sephiroth/android/library/widget/m;->a(ILandroid/view/View;I)I

    move-result v3

    .line 2895
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getMaxScrollAmount()I

    move-result v4

    .line 2896
    if-ge v3, v4, :cond_b

    .line 2898
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 2899
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->aJ:Lit/sephiroth/android/library/widget/m$a;

    invoke-virtual {v0, v1, v3}, Lit/sephiroth/android/library/widget/m$a;->a(II)V

    .line 2900
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->aJ:Lit/sephiroth/android/library/widget/m$a;

    goto :goto_1

    .line 2901
    :cond_b
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/m;->g(Landroid/view/View;)I

    move-result v3

    if-ge v3, v4, :cond_c

    .line 2906
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 2907
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->aJ:Lit/sephiroth/android/library/widget/m$a;

    invoke-virtual {v0, v1, v4}, Lit/sephiroth/android/library/widget/m$a;->a(II)V

    .line 2908
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->aJ:Lit/sephiroth/android/library/widget/m$a;

    goto/16 :goto_1

    :cond_c
    move-object v0, v2

    .line 2911
    goto/16 :goto_1
.end method

.method private q(I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3004
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/m;->c(I)V

    .line 3006
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getWidth()I

    move-result v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v3, v0, v1

    .line 3007
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 3008
    iget-object v4, p0, Lit/sephiroth/android/library/widget/m;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 3010
    if-gez p1, :cond_3

    .line 3014
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v1

    .line 3015
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3016
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v5, v3, :cond_0

    .line 3017
    iget v5, p0, Lit/sephiroth/android/library/widget/m;->V:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    .line 3018
    iget v6, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    .line 3019
    invoke-direct {p0, v0, v5}, Lit/sephiroth/android/library/widget/m;->c(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3020
    add-int/lit8 v1, v1, 0x1

    .line 3024
    goto :goto_0

    .line 3029
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 3030
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->c(I)V

    .line 3034
    :cond_1
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 3035
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v0

    if-ge v0, v2, :cond_7

    .line 3036
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$f;

    .line 3037
    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$f;->a:I

    invoke-virtual {v4, v0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3038
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/m;->detachViewFromParent(Landroid/view/View;)V

    .line 3039
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->V:I

    invoke-virtual {v4, v1, v0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->a(Landroid/view/View;I)V

    .line 3043
    :goto_2
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3044
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->V:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lit/sephiroth/android/library/widget/m;->V:I

    move-object v1, v0

    .line 3045
    goto :goto_1

    .line 3041
    :cond_2
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/m;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_2

    .line 3048
    :cond_3
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3051
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-le v1, v2, :cond_4

    iget v1, p0, Lit/sephiroth/android/library/widget/m;->V:I

    if-lez v1, :cond_4

    .line 3052
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->V:I

    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/m;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3053
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->V:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lit/sephiroth/android/library/widget/m;->V:I

    goto :goto_3

    .line 3058
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-le v1, v2, :cond_5

    .line 3059
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->c(I)V

    .line 3062
    :cond_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 3063
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move v2, v1

    move-object v1, v0

    .line 3066
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v0, v3, :cond_7

    .line 3067
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$f;

    .line 3068
    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$f;->a:I

    invoke-virtual {v4, v0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3069
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/m;->detachViewFromParent(Landroid/view/View;)V

    .line 3070
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->V:I

    add-int/2addr v0, v2

    invoke-virtual {v4, v1, v0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->a(Landroid/view/View;I)V

    .line 3074
    :goto_5
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move v2, v1

    move-object v1, v0

    .line 3075
    goto :goto_4

    .line 3072
    :cond_6
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/m;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_5

    .line 3077
    :cond_7
    return-void
.end method

.method private z()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 232
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v2

    .line 235
    if-lez v2, :cond_2

    .line 238
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/m;->K:Z

    if-nez v1, :cond_3

    .line 241
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 243
    iget v2, p0, Lit/sephiroth/android/library/widget/m;->V:I

    if-eqz v2, :cond_0

    .line 246
    iget v2, p0, Lit/sephiroth/android/library/widget/m;->av:I

    sub-int/2addr v1, v2

    .line 248
    :cond_0
    if-gez v1, :cond_5

    .line 268
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 269
    neg-int v0, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->c(I)V

    .line 272
    :cond_2
    return-void

    .line 254
    :cond_3
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getWidth()I

    move-result v3

    iget-object v4, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 257
    iget v3, p0, Lit/sephiroth/android/library/widget/m;->V:I

    add-int/2addr v2, v3

    iget v3, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    if-ge v2, v3, :cond_4

    .line 260
    iget v2, p0, Lit/sephiroth/android/library/widget/m;->av:I

    add-int/2addr v1, v2

    .line 263
    :cond_4
    if-gtz v1, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method final a(IIIII)I
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, -0x1

    .line 1247
    iget-object v4, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    .line 1248
    if-nez v4, :cond_1

    .line 1249
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int p4, v0, v1

    .line 1301
    :cond_0
    :goto_0
    return p4

    .line 1253
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 1254
    iget v2, p0, Lit/sephiroth/android/library/widget/m;->av:I

    if-lez v2, :cond_4

    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->au:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget v2, p0, Lit/sephiroth/android/library/widget/m;->av:I

    move v3, v2

    .line 1262
    :goto_1
    if-ne p3, v8, :cond_2

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 p3, v2, -0x1

    .line 1263
    :cond_2
    iget-object v4, p0, Lit/sephiroth/android/library/widget/m;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 1264
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->y()Z

    move-result v5

    .line 1265
    iget-object v6, p0, Lit/sephiroth/android/library/widget/m;->P:[Z

    .line 1267
    :goto_2
    if-gt p2, p3, :cond_7

    .line 1268
    invoke-virtual {p0, p2, v6}, Lit/sephiroth/android/library/widget/m;->a(I[Z)Landroid/view/View;

    move-result-object v7

    .line 1270
    invoke-direct {p0, v7, p2, p1}, Lit/sephiroth/android/library/widget/m;->a(Landroid/view/View;II)V

    .line 1272
    if-lez p2, :cond_8

    .line 1274
    add-int/2addr v0, v3

    move v2, v0

    .line 1278
    :goto_3
    if-eqz v5, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$f;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$f;->a:I

    invoke-virtual {v4, v0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1279
    invoke-virtual {v4, v7, v8}, Lit/sephiroth/android/library/widget/AbsHListView$k;->a(Landroid/view/View;I)V

    .line 1282
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    .line 1284
    if-lt v0, p4, :cond_5

    .line 1287
    if-ltz p5, :cond_0

    if-le p2, p5, :cond_0

    if-lez v1, :cond_0

    if-eq v0, p4, :cond_0

    move p4, v1

    goto :goto_0

    :cond_4
    move v3, v1

    .line 1254
    goto :goto_1

    .line 1294
    :cond_5
    if-ltz p5, :cond_6

    if-lt p2, p5, :cond_6

    move v1, v0

    .line 1267
    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_7
    move p4, v0

    .line 1301
    goto :goto_0

    :cond_8
    move v2, v0

    goto :goto_3
.end method

.method a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1

    .prologue
    .line 3355
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->au:Landroid/graphics/drawable/Drawable;

    .line 3357
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3358
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3359
    return-void
.end method

.method a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    .line 3148
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 3150
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3151
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3153
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 3154
    if-ge v1, v0, :cond_0

    .line 3155
    iget v1, p3, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 3158
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3159
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3162
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lit/sephiroth/android/library/widget/n;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    new-instance v0, Lit/sephiroth/android/library/widget/m$b;

    invoke-direct {v0}, Lit/sephiroth/android/library/widget/m$b;-><init>()V

    .line 296
    iput-object p1, v0, Lit/sephiroth/android/library/widget/m$b;->a:Landroid/view/View;

    .line 297
    iput-object p2, v0, Lit/sephiroth/android/library/widget/m$b;->b:Ljava/lang/Object;

    .line 298
    iput-boolean p3, v0, Lit/sephiroth/android/library/widget/m$b;->c:Z

    .line 299
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->az:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->i:Lit/sephiroth/android/library/widget/AbsHListView$a;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->i:Lit/sephiroth/android/library/widget/AbsHListView$a;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$a;->onChanged()V

    .line 306
    :cond_1
    return-void
.end method

.method protected a(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 651
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v1

    .line 652
    if-eqz p1, :cond_1

    .line 657
    if-lez v1, :cond_0

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v2, p0, Lit/sephiroth/android/library/widget/m;->av:I

    add-int/2addr v0, v2

    .line 658
    :cond_0
    iget v2, p0, Lit/sephiroth/android/library/widget/m;->V:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1, v0}, Lit/sephiroth/android/library/widget/m;->g(II)Landroid/view/View;

    .line 659
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/m;->k(I)V

    .line 669
    :goto_0
    return-void

    .line 665
    :cond_1
    if-lez v1, :cond_2

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lit/sephiroth/android/library/widget/m;->av:I

    sub-int/2addr v0, v1

    .line 666
    :goto_1
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->V:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1, v0}, Lit/sephiroth/android/library/widget/m;->h(II)Landroid/view/View;

    .line 667
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/m;->l(I)V

    goto :goto_0

    .line 665
    :cond_2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getWidth()I

    move-result v1

    sub-int v0, v1, v0

    goto :goto_1
.end method

.method final a(IIIIII)[I
    .locals 10

    .prologue
    .line 1309
    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    .line 1310
    if-nez v2, :cond_0

    .line 1311
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 1349
    :goto_0
    return-object v0

    .line 1315
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int v4, v0, v1

    .line 1316
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int v5, v0, v1

    .line 1318
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->av:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->au:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget v0, p0, Lit/sephiroth/android/library/widget/m;->av:I

    move v3, v0

    .line 1320
    :goto_1
    const/4 v1, 0x0

    .line 1321
    const/4 v0, 0x0

    .line 1327
    const/4 v6, -0x1

    if-ne p3, v6, :cond_1

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 p3, v2, -0x1

    .line 1328
    :cond_1
    iget-object v6, p0, Lit/sephiroth/android/library/widget/m;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 1329
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->y()Z

    move-result v7

    .line 1330
    iget-object v8, p0, Lit/sephiroth/android/library/widget/m;->P:[Z

    move v2, v1

    move v1, v0

    .line 1332
    :goto_2
    if-gt p2, p3, :cond_4

    .line 1333
    invoke-virtual {p0, p2, v8}, Lit/sephiroth/android/library/widget/m;->a(I[Z)Landroid/view/View;

    move-result-object v9

    .line 1335
    invoke-direct {p0, v9, p2, p1}, Lit/sephiroth/android/library/widget/m;->a(Landroid/view/View;II)V

    .line 1338
    if-eqz v7, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$f;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$f;->a:I

    invoke-virtual {v6, v0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1339
    const/4 v0, -0x1

    invoke-virtual {v6, v9, v0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->a(Landroid/view/View;I)V

    .line 1342
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1343
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1332
    add-int/lit8 p2, p2, 0x1

    move v1, v0

    goto :goto_2

    .line 1318
    :cond_3
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1

    .line 1346
    :cond_4
    add-int/2addr v2, v4

    .line 1347
    add-int/2addr v1, v5

    .line 1349
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v3, 0x0

    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v3

    const/4 v2, 0x1

    invoke-static {v1, p5}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0
.end method

.method protected b(IZ)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 2093
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    .line 2094
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v0

    .line 2120
    :cond_1
    :goto_0
    return p1

    .line 2098
    :cond_2
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2099
    iget-boolean v3, p0, Lit/sephiroth/android/library/widget/m;->aF:Z

    if-nez v3, :cond_6

    .line 2100
    if-eqz p2, :cond_3

    .line 2101
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2102
    :goto_1
    if-ge p1, v2, :cond_4

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2103
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2106
    :cond_3
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2107
    :goto_2
    if-ltz p1, :cond_4

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2108
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 2112
    :cond_4
    if-ltz p1, :cond_5

    if-lt p1, v2, :cond_1

    :cond_5
    move p1, v0

    .line 2113
    goto :goto_0

    .line 2117
    :cond_6
    if-ltz p1, :cond_7

    if-lt p1, v2, :cond_1

    :cond_7
    move p1, v0

    .line 2118
    goto :goto_0
.end method

.method b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    .line 3165
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 3167
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3168
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3170
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 3171
    if-ge v1, v0, :cond_0

    .line 3172
    iget v1, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 3175
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3176
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3179
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 319
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lit/sephiroth/android/library/widget/m;->a(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 320
    return-void
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 1995
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d(I)I
    .locals 3

    .prologue
    .line 1355
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v1

    .line 1356
    if-lez v1, :cond_3

    .line 1357
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/m;->K:Z

    if-nez v0, :cond_1

    .line 1358
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 1359
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1360
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 1361
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->V:I

    add-int/2addr v0, v1

    .line 1373
    :goto_1
    return v0

    .line 1358
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1365
    :cond_1
    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-ltz v0, :cond_3

    .line 1366
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1367
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 1368
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->V:I

    add-int/2addr v0, v1

    goto :goto_1

    .line 1365
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1373
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->az:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/m;->a(Ljava/util/ArrayList;)V

    .line 524
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->aA:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/m;->a(Ljava/util/ArrayList;)V

    .line 526
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->d()V

    .line 528
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/m;->h:I

    .line 529
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 25

    .prologue
    .line 3183
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lit/sephiroth/android/library/widget/m;->y:Z

    if-eqz v2, :cond_0

    .line 3184
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lit/sephiroth/android/library/widget/m;->z:Z

    .line 3188
    :cond_0
    move-object/from16 v0, p0

    iget v8, v0, Lit/sephiroth/android/library/widget/m;->av:I

    .line 3189
    move-object/from16 v0, p0

    iget-object v9, v0, Lit/sephiroth/android/library/widget/m;->ax:Landroid/graphics/drawable/Drawable;

    .line 3190
    move-object/from16 v0, p0

    iget-object v10, v0, Lit/sephiroth/android/library/widget/m;->ay:Landroid/graphics/drawable/Drawable;

    .line 3191
    if-eqz v9, :cond_9

    const/4 v2, 0x1

    move v7, v2

    .line 3192
    :goto_0
    if-eqz v10, :cond_a

    const/4 v2, 0x1

    move v6, v2

    .line 3193
    :goto_1
    if-lez v8, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/m;->au:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    move v5, v2

    .line 3195
    :goto_2
    if-nez v5, :cond_1

    if-nez v7, :cond_1

    if-eqz v6, :cond_10

    .line 3197
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    .line 3198
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->getPaddingTop()I

    move-result v2

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 3199
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->getBottom()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 3201
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v12

    .line 3202
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/m;->az:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 3203
    move-object/from16 v0, p0

    iget v14, v0, Lit/sephiroth/android/library/widget/m;->ao:I

    .line 3204
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/m;->aA:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, v14, v2

    add-int/lit8 v15, v2, -0x1

    .line 3205
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/m;->aD:Z

    move/from16 v16, v0

    .line 3206
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/m;->aE:Z

    move/from16 v17, v0

    .line 3207
    move-object/from16 v0, p0

    iget v0, v0, Lit/sephiroth/android/library/widget/m;->V:I

    move/from16 v18, v0

    .line 3208
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/m;->aF:Z

    move/from16 v19, v0

    .line 3209
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    .line 3214
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->isOpaque()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-super/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isOpaque()Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    move v4, v2

    .line 3216
    :goto_3
    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/m;->aI:Landroid/graphics/Paint;

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lit/sephiroth/android/library/widget/m;->aB:Z

    if-eqz v2, :cond_2

    .line 3217
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lit/sephiroth/android/library/widget/m;->aI:Landroid/graphics/Paint;

    .line 3218
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/m;->aI:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->getCacheColorHint()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3220
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/widget/m;->aI:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    .line 3222
    const/4 v3, 0x0

    .line 3223
    const/4 v2, 0x0

    .line 3229
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->getRight()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->getLeft()I

    move-result v23

    sub-int v22, v22, v23

    sub-int v2, v22, v2

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->getScrollX()I

    move-result v22

    add-int v22, v22, v2

    .line 3230
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lit/sephiroth/android/library/widget/m;->K:Z

    if-nez v2, :cond_11

    .line 3231
    const/4 v3, 0x0

    .line 3234
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->getScrollX()I

    move-result v2

    .line 3235
    if-lez v12, :cond_3

    if-gez v2, :cond_3

    .line 3236
    if-eqz v7, :cond_d

    .line 3237
    const/4 v7, 0x0

    iput v7, v11, Landroid/graphics/Rect;->right:I

    .line 3238
    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3239
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v11}, Lit/sephiroth/android/library/widget/m;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3247
    :cond_3
    :goto_4
    const/4 v2, 0x0

    move/from16 v24, v2

    move v2, v3

    move/from16 v3, v24

    :goto_5
    if-ge v3, v12, :cond_f

    .line 3248
    if-nez v16, :cond_4

    add-int v7, v18, v3

    if-lt v7, v13, :cond_8

    :cond_4
    if-nez v17, :cond_5

    add-int v7, v18, v3

    if-ge v7, v15, :cond_8

    .line 3250
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3251
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    .line 3254
    if-eqz v5, :cond_8

    move/from16 v0, v22

    if-ge v2, v0, :cond_8

    if-eqz v6, :cond_6

    add-int/lit8 v7, v12, -0x1

    if-eq v3, v7, :cond_8

    .line 3256
    :cond_6
    if-nez v19, :cond_7

    add-int v7, v18, v3

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_e

    add-int/lit8 v7, v12, -0x1

    if-eq v3, v7, :cond_7

    add-int v7, v18, v3

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 3258
    :cond_7
    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3259
    add-int v7, v2, v8

    iput v7, v11, Landroid/graphics/Rect;->right:I

    .line 3260
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v3}, Lit/sephiroth/android/library/widget/m;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3247
    :cond_8
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 3191
    :cond_9
    const/4 v2, 0x0

    move v7, v2

    goto/16 :goto_0

    .line 3192
    :cond_a
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_1

    .line 3193
    :cond_b
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_2

    .line 3214
    :cond_c
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_3

    .line 3240
    :cond_d
    if-eqz v5, :cond_3

    .line 3241
    const/4 v2, 0x0

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3242
    neg-int v2, v8

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3243
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v2}, Lit/sephiroth/android/library/widget/m;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_4

    .line 3261
    :cond_e
    if-eqz v4, :cond_8

    .line 3262
    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3263
    add-int v7, v2, v8

    iput v7, v11, Landroid/graphics/Rect;->right:I

    .line 3264
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 3270
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->getRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    .line 3271
    if-eqz v6, :cond_10

    add-int v4, v18, v12

    if-ne v4, v14, :cond_10

    if-le v3, v2, :cond_10

    .line 3273
    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3274
    iput v3, v11, Landroid/graphics/Rect;->right:I

    .line 3275
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11}, Lit/sephiroth/android/library/widget/m;->b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3330
    :cond_10
    :goto_7
    invoke-super/range {p0 .. p1}, Lit/sephiroth/android/library/widget/AbsHListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3331
    return-void

    .line 3280
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->getScrollX()I

    move-result v14

    .line 3282
    if-lez v12, :cond_12

    if-eqz v7, :cond_12

    .line 3283
    iput v14, v11, Landroid/graphics/Rect;->left:I

    .line 3284
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3285
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v11}, Lit/sephiroth/android/library/widget/m;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3288
    :cond_12
    if-eqz v7, :cond_17

    const/4 v2, 0x1

    .line 3289
    :goto_8
    if-ge v2, v12, :cond_19

    .line 3290
    if-nez v16, :cond_13

    add-int v7, v18, v2

    if-lt v7, v13, :cond_16

    :cond_13
    if-nez v17, :cond_14

    add-int v7, v18, v2

    if-ge v7, v15, :cond_16

    .line 3292
    :cond_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3293
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 3295
    if-le v7, v3, :cond_16

    .line 3296
    if-nez v19, :cond_15

    add-int v9, v18, v2

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_18

    add-int/lit8 v9, v12, -0x1

    if-eq v2, v9, :cond_15

    add-int v9, v18, v2

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 3298
    :cond_15
    sub-int v9, v7, v8

    iput v9, v11, Landroid/graphics/Rect;->left:I

    .line 3299
    iput v7, v11, Landroid/graphics/Rect;->right:I

    .line 3304
    add-int/lit8 v7, v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v7}, Lit/sephiroth/android/library/widget/m;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3289
    :cond_16
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3288
    :cond_17
    const/4 v2, 0x0

    goto :goto_8

    .line 3305
    :cond_18
    if-eqz v4, :cond_16

    .line 3306
    sub-int v9, v7, v8

    iput v9, v11, Landroid/graphics/Rect;->left:I

    .line 3307
    iput v7, v11, Landroid/graphics/Rect;->right:I

    .line 3308
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_9

    .line 3314
    :cond_19
    if-lez v12, :cond_10

    if-lez v14, :cond_10

    .line 3315
    if-eqz v6, :cond_1a

    .line 3316
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->getRight()I

    move-result v2

    .line 3317
    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3318
    add-int/2addr v2, v14

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3319
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11}, Lit/sephiroth/android/library/widget/m;->b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 3320
    :cond_1a
    if-eqz v5, :cond_10

    .line 3321
    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/Rect;->left:I

    .line 3322
    add-int v2, v22, v8

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3323
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v2}, Lit/sephiroth/android/library/widget/m;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_7
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 2146
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2147
    if-nez v0, :cond_0

    .line 2149
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 2150
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2153
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lit/sephiroth/android/library/widget/m;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2156
    :cond_0
    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    .prologue
    .line 3335
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AbsHListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3336
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/m;->z:Z

    if-eqz v1, :cond_0

    .line 3337
    const/4 v1, 0x0

    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/m;->z:Z

    .line 3339
    :cond_0
    return v0
.end method

.method protected e()V
    .locals 17

    .prologue
    .line 1531
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lit/sephiroth/android/library/widget/m;->at:Z

    .line 1532
    if-nez v10, :cond_0

    .line 1533
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/m;->at:Z

    .line 1539
    :try_start_0
    invoke-super/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    .line 1541
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->invalidate()V

    .line 1543
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    if-nez v1, :cond_1

    .line 1544
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->d()V

    .line 1545
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1806
    if-nez v10, :cond_0

    .line 1807
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/m;->at:Z

    .line 1810
    :cond_0
    :goto_0
    return-void

    .line 1549
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 1550
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->getRight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v6, v1, v2

    .line 1552
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v11

    .line 1554
    const/4 v4, 0x0

    .line 1557
    const/4 v2, 0x0

    .line 1558
    const/4 v1, 0x0

    .line 1559
    const/4 v3, 0x0

    .line 1561
    const/4 v7, 0x0

    .line 1568
    move-object/from16 v0, p0

    iget v8, v0, Lit/sephiroth/android/library/widget/m;->h:I

    packed-switch v8, :pswitch_data_0

    .line 1583
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/m;->am:I

    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/m;->V:I

    sub-int v3, v1, v3

    .line 1584
    if-ltz v3, :cond_2

    if-ge v3, v11, :cond_2

    .line 1585
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1589
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1591
    move-object/from16 v0, p0

    iget v8, v0, Lit/sephiroth/android/library/widget/m;->ak:I

    if-ltz v8, :cond_3

    .line 1592
    move-object/from16 v0, p0

    iget v4, v0, Lit/sephiroth/android/library/widget/m;->ak:I

    move-object/from16 v0, p0

    iget v8, v0, Lit/sephiroth/android/library/widget/m;->am:I

    sub-int/2addr v4, v8

    .line 1596
    :cond_3
    add-int/2addr v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v1

    .line 1599
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lit/sephiroth/android/library/widget/m;->aj:Z

    .line 1600
    if-eqz v12, :cond_4

    .line 1601
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->r()V

    .line 1606
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/m;->ao:I

    if-nez v1, :cond_5

    .line 1607
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->d()V

    .line 1608
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1806
    if-nez v10, :cond_0

    .line 1807
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/m;->at:Z

    goto :goto_0

    .line 1570
    :pswitch_0
    :try_start_2
    move-object/from16 v0, p0

    iget v8, v0, Lit/sephiroth/android/library/widget/m;->ak:I

    move-object/from16 v0, p0

    iget v9, v0, Lit/sephiroth/android/library/widget/m;->V:I

    sub-int/2addr v8, v9

    .line 1571
    if-ltz v8, :cond_22

    if-ge v8, v11, :cond_22

    .line 1572
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v1

    goto :goto_1

    :pswitch_1
    move-object v9, v1

    .line 1579
    goto :goto_1

    .line 1610
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/m;->ao:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    if-eq v1, v8, :cond_7

    .line 1611
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") with Adapter("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1806
    :catchall_0
    move-exception v1

    if-nez v10, :cond_6

    .line 1807
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lit/sephiroth/android/library/widget/m;->at:Z

    :cond_6
    throw v1

    .line 1618
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/m;->ak:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/m;->setSelectedPositionInt(I)V

    .line 1622
    move-object/from16 v0, p0

    iget v13, v0, Lit/sephiroth/android/library/widget/m;->V:I

    .line 1623
    move-object/from16 v0, p0

    iget-object v14, v0, Lit/sephiroth/android/library/widget/m;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 1626
    const/4 v1, 0x0

    .line 1630
    if-eqz v12, :cond_8

    .line 1631
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v11, :cond_9

    .line 1632
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    add-int v16, v13, v8

    invoke-virtual/range {v14 .. v16}, Lit/sephiroth/android/library/widget/AbsHListView$k;->a(Landroid/view/View;I)V

    .line 1631
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1635
    :cond_8
    invoke-virtual {v14, v11, v13}, Lit/sephiroth/android/library/widget/AbsHListView$k;->a(II)V

    .line 1642
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    .line 1643
    if-eqz v8, :cond_21

    .line 1647
    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lit/sephiroth/android/library/widget/m;->c(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1650
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->findFocus()Landroid/view/View;

    move-result-object v7

    .line 1651
    if-eqz v7, :cond_b

    .line 1653
    invoke-virtual {v7}, Landroid/view/View;->onStartTemporaryDetach()V

    :cond_b
    move-object v1, v8

    .line 1656
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->requestFocus()Z

    move-object v8, v7

    move-object v7, v1

    .line 1671
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->detachAllViewsFromParent()V

    .line 1672
    invoke-virtual {v14}, Lit/sephiroth/android/library/widget/AbsHListView$k;->d()V

    .line 1674
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/m;->h:I

    packed-switch v1, :pswitch_data_1

    .line 1701
    if-nez v11, :cond_16

    .line 1702
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lit/sephiroth/android/library/widget/m;->K:Z

    if-nez v1, :cond_15

    .line 1703
    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/m;->b(IZ)I

    move-result v1

    .line 1704
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/m;->setSelectedPositionInt(I)V

    .line 1705
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lit/sephiroth/android/library/widget/m;->g(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1724
    :goto_4
    invoke-virtual {v14}, Lit/sephiroth/android/library/widget/AbsHListView$k;->e()V

    .line 1726
    if-eqz v2, :cond_1e

    .line 1729
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lit/sephiroth/android/library/widget/m;->aG:Z

    if-eqz v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1730
    if-ne v2, v7, :cond_d

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_e
    const/4 v1, 0x1

    .line 1733
    :goto_5
    if-nez v1, :cond_1c

    .line 1737
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 1738
    if-eqz v1, :cond_f

    .line 1739
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 1741
    :cond_f
    const/4 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/m;->a(ILandroid/view/View;)V

    .line 1749
    :goto_6
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lit/sephiroth/android/library/widget/m;->J:I

    .line 1784
    :cond_10
    :goto_7
    if-eqz v8, :cond_11

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 1786
    invoke-virtual {v8}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1789
    :cond_11
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lit/sephiroth/android/library/widget/m;->h:I

    .line 1790
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/m;->aj:Z

    .line 1791
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/m;->O:Ljava/lang/Runnable;

    if-eqz v1, :cond_12

    .line 1792
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/m;->O:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/m;->post(Ljava/lang/Runnable;)Z

    .line 1793
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lit/sephiroth/android/library/widget/m;->O:Ljava/lang/Runnable;

    .line 1795
    :cond_12
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/m;->ad:Z

    .line 1796
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/m;->am:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/m;->setNextSelectedPositionInt(I)V

    .line 1798
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->f()V

    .line 1800
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/m;->ao:I

    if-lez v1, :cond_13

    .line 1801
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->v()V

    .line 1804
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1806
    if-nez v10, :cond_0

    .line 1807
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/m;->at:Z

    goto/16 :goto_0

    .line 1676
    :pswitch_2
    if-eqz v3, :cond_14

    .line 1677
    :try_start_4
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5, v6}, Lit/sephiroth/android/library/widget/m;->b(III)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4

    .line 1679
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lit/sephiroth/android/library/widget/m;->i(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1681
    goto/16 :goto_4

    .line 1683
    :pswitch_3
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/m;->aa:I

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/m;->W:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/widget/m;->j(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1684
    goto/16 :goto_4

    .line 1686
    :pswitch_4
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/m;->ao:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6}, Lit/sephiroth/android/library/widget/m;->h(II)Landroid/view/View;

    move-result-object v1

    .line 1687
    invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->z()V

    move-object v2, v1

    .line 1688
    goto/16 :goto_4

    .line 1690
    :pswitch_5
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lit/sephiroth/android/library/widget/m;->V:I

    .line 1691
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lit/sephiroth/android/library/widget/m;->g(I)Landroid/view/View;

    move-result-object v1

    .line 1692
    invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->z()V

    move-object v2, v1

    .line 1693
    goto/16 :goto_4

    .line 1695
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->n()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/m;->W:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/widget/m;->j(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1696
    goto/16 :goto_4

    :pswitch_7
    move-object/from16 v1, p0

    .line 1698
    invoke-direct/range {v1 .. v6}, Lit/sephiroth/android/library/widget/m;->a(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1699
    goto/16 :goto_4

    .line 1707
    :cond_15
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/m;->ao:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/m;->b(IZ)I

    move-result v1

    .line 1708
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/m;->setSelectedPositionInt(I)V

    .line 1709
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/m;->ao:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6}, Lit/sephiroth/android/library/widget/m;->h(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1710
    goto/16 :goto_4

    .line 1712
    :cond_16
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/m;->am:I

    if-ltz v1, :cond_18

    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/m;->am:I

    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/m;->ao:I

    if-ge v1, v3, :cond_18

    .line 1713
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/m;->am:I

    if-nez v2, :cond_17

    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lit/sephiroth/android/library/widget/m;->j(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4

    :cond_17
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_8

    .line 1714
    :cond_18
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/m;->V:I

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/m;->ao:I

    if-ge v1, v2, :cond_1a

    .line 1715
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/m;->V:I

    if-nez v9, :cond_19

    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lit/sephiroth/android/library/widget/m;->j(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4

    :cond_19
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_9

    .line 1717
    :cond_1a
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lit/sephiroth/android/library/widget/m;->j(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4

    .line 1730
    :cond_1b
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 1743
    :cond_1c
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1744
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/m;->o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_6

    .line 1747
    :cond_1d
    const/4 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/m;->a(ILandroid/view/View;)V

    goto/16 :goto_6

    .line 1751
    :cond_1e
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/m;->F:I

    if-lez v1, :cond_20

    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/m;->F:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_20

    .line 1752
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/m;->A:I

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/m;->V:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1753
    if-eqz v1, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/m;->A:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lit/sephiroth/android/library/widget/m;->a(ILandroid/view/View;)V

    .line 1761
    :cond_1f
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/m;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz v8, :cond_10

    .line 1762
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_7

    .line 1755
    :cond_20
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lit/sephiroth/android/library/widget/m;->J:I

    .line 1756
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/m;->o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    :cond_21
    move-object v8, v7

    move-object v7, v1

    goto/16 :goto_3

    :cond_22
    move-object v9, v1

    goto/16 :goto_1

    .line 1568
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1674
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method public f(II)V
    .locals 2

    .prologue
    .line 2020
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 2047
    :cond_0
    :goto_0
    return-void

    .line 2024
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2025
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/m;->b(IZ)I

    move-result p1

    .line 2026
    if-ltz p1, :cond_2

    .line 2027
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/m;->setNextSelectedPositionInt(I)V

    .line 2033
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 2034
    const/4 v0, 0x4

    iput v0, p0, Lit/sephiroth/android/library/widget/m;->h:I

    .line 2035
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Lit/sephiroth/android/library/widget/m;->W:I

    .line 2037
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/m;->ad:Z

    if-eqz v0, :cond_3

    .line 2038
    iput p1, p0, Lit/sephiroth/android/library/widget/m;->aa:I

    .line 2039
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/m;->ab:J

    .line 2042
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    if-eqz v0, :cond_4

    .line 2043
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$j;->a()V

    .line 2045
    :cond_4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->requestLayout()V

    goto :goto_0

    .line 2030
    :cond_5
    iput p1, p0, Lit/sephiroth/android/library/widget/m;->M:I

    goto :goto_1
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3584
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3585
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getCheckedItemIds()[J

    move-result-object v0

    .line 3614
    :goto_0
    return-object v0

    .line 3590
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->b:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->f:Landroid/support/v4/f/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    .line 3591
    iget-object v5, p0, Lit/sephiroth/android/library/widget/m;->f:Landroid/support/v4/f/j;

    .line 3592
    invoke-virtual {v5}, Landroid/support/v4/f/j;->b()I

    move-result v6

    .line 3593
    new-array v2, v6, [J

    .line 3594
    iget-object v7, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    move v3, v4

    move v1, v4

    .line 3597
    :goto_1
    if-ge v3, v6, :cond_1

    .line 3598
    invoke-virtual {v5, v3}, Landroid/support/v4/f/j;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3599
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v5, v3}, Landroid/support/v4/f/j;->b(I)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v2, v1

    .line 3597
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 3605
    :cond_1
    if-ne v1, v6, :cond_2

    move-object v0, v2

    .line 3606
    goto :goto_0

    .line 3608
    :cond_2
    new-array v0, v1, [J

    .line 3609
    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 3614
    :cond_3
    new-array v0, v4, [J

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3367
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->au:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 3397
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->av:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->aA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->az:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 3112
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/m;->aG:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 225
    const v0, 0x3ea8f5c3    # 0.33f

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3481
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->ay:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3462
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->ax:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method h(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2321
    const/4 v2, -0x1

    .line 2324
    const/16 v3, 0x21

    if-ne p1, v3, :cond_3

    iget v2, p0, Lit/sephiroth/android/library/widget/m;->am:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v3, v2

    move v2, v1

    .line 2330
    :goto_0
    if-ltz v3, :cond_4

    .line 2331
    invoke-virtual {p0, v3, v2}, Lit/sephiroth/android/library/widget/m;->b(IZ)I

    move-result v3

    .line 2332
    if-ltz v3, :cond_4

    .line 2333
    const/4 v1, 0x4

    iput v1, p0, Lit/sephiroth/android/library/widget/m;->h:I

    .line 2334
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getHorizontalFadingEdgeLength()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lit/sephiroth/android/library/widget/m;->W:I

    .line 2336
    if-eqz v2, :cond_0

    iget v1, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v4

    sub-int/2addr v1, v4

    if-le v3, v1, :cond_0

    .line 2337
    const/4 v1, 0x3

    iput v1, p0, Lit/sephiroth/android/library/widget/m;->h:I

    .line 2340
    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 2341
    iput v0, p0, Lit/sephiroth/android/library/widget/m;->h:I

    .line 2344
    :cond_1
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/m;->setSelectionInt(I)V

    .line 2345
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->b()V

    .line 2346
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2347
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->invalidate()V

    .line 2354
    :cond_2
    :goto_1
    return v0

    .line 2325
    :cond_3
    const/16 v3, 0x82

    if-ne p1, v3, :cond_5

    .line 2326
    iget v2, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lit/sephiroth/android/library/widget/m;->am:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    move v2, v0

    .line 2327
    goto :goto_0

    :cond_4
    move v0, v1

    .line 2354
    goto :goto_1

    :cond_5
    move v3, v2

    move v2, v1

    goto :goto_0
.end method

.method i(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2367
    .line 2368
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    .line 2369
    iget v2, p0, Lit/sephiroth/android/library/widget/m;->am:I

    if-eqz v2, :cond_3

    .line 2370
    invoke-virtual {p0, v1, v0}, Lit/sephiroth/android/library/widget/m;->b(IZ)I

    move-result v1

    .line 2371
    if-ltz v1, :cond_0

    .line 2372
    iput v0, p0, Lit/sephiroth/android/library/widget/m;->h:I

    .line 2373
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/m;->setSelectionInt(I)V

    .line 2374
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->b()V

    .line 2390
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2391
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->awakenScrollBars()Z

    .line 2392
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->invalidate()V

    .line 2395
    :cond_1
    return v0

    .line 2378
    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_3

    .line 2379
    iget v2, p0, Lit/sephiroth/android/library/widget/m;->am:I

    iget v3, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3

    .line 2380
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lit/sephiroth/android/library/widget/m;->b(IZ)I

    move-result v1

    .line 2381
    if-ltz v1, :cond_0

    .line 2382
    const/4 v2, 0x3

    iput v2, p0, Lit/sephiroth/android/library/widget/m;->h:I

    .line 2383
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/m;->setSelectionInt(I)V

    .line 2384
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->b()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3117
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/m;->z:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/m;->aB:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/m;->aC:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v2, 0x1

    .line 3118
    :goto_0
    if-eqz v2, :cond_8

    .line 3120
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 3121
    :goto_1
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3122
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-le v3, v0, :cond_5

    :cond_2
    move v0, v1

    .line 3131
    :goto_2
    return v0

    :cond_3
    move v2, v1

    .line 3117
    goto :goto_0

    .line 3120
    :cond_4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getPaddingLeft()I

    move-result v0

    goto :goto_1

    .line 3125
    :cond_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getWidth()I

    move-result v3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_3
    sub-int v0, v3, v0

    .line 3126
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3127
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v3, v0, :cond_8

    :cond_6
    move v0, v1

    .line 3128
    goto :goto_2

    .line 3125
    :cond_7
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getPaddingRight()I

    move-result v0

    goto :goto_3

    :cond_8
    move v0, v2

    .line 3131
    goto :goto_2
.end method

.method j(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2454
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/m;->af:Z

    .line 2455
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/m;->n(I)Z

    move-result v0

    .line 2456
    if-eqz v0, :cond_0

    .line 2457
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/m;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2461
    :cond_0
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/m;->af:Z

    return v0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/m;->af:Z

    throw v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3542
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->onFinishInflate()V

    .line 3544
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v1

    .line 3545
    if-lez v1, :cond_1

    .line 3546
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 3547
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/m;->b(Landroid/view/View;)V

    .line 3546
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3549
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->removeAllViews()V

    .line 3551
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 3486
    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3488
    iget-object v5, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    .line 3489
    const/4 v3, -0x1

    .line 3491
    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 3492
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getScrollY()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 3496
    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v1

    iget v4, p0, Lit/sephiroth/android/library/widget/m;->V:I

    add-int/2addr v1, v4

    if-ge v0, v1, :cond_0

    .line 3497
    iput v2, p0, Lit/sephiroth/android/library/widget/m;->h:I

    .line 3498
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->e()V

    .line 3503
    :cond_0
    iget-object v6, p0, Lit/sephiroth/android/library/widget/m;->aH:Landroid/graphics/Rect;

    .line 3504
    const v0, 0x7fffffff

    .line 3505
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v7

    .line 3506
    iget v8, p0, Lit/sephiroth/android/library/widget/m;->V:I

    move v4, v2

    .line 3508
    :goto_0
    if-ge v4, v7, :cond_2

    .line 3510
    add-int v1, v8, v4

    invoke-interface {v5, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    move v2, v3

    .line 3508
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 3514
    :cond_1
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3515
    invoke-virtual {v9, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3516
    invoke-virtual {p0, v9, v6}, Lit/sephiroth/android/library/widget/m;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3517
    invoke-static {p3, v6, p2}, Lit/sephiroth/android/library/widget/m;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v1

    .line 3519
    if-ge v1, v0, :cond_4

    .line 3522
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v0

    move v2, v4

    move v10, v0

    move v0, v1

    move v1, v10

    goto :goto_1

    .line 3527
    :cond_2
    if-ltz v3, :cond_3

    .line 3528
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->V:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0, v2}, Lit/sephiroth/android/library/widget/m;->f(II)V

    .line 3532
    :goto_2
    return-void

    .line 3530
    :cond_3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->requestLayout()V

    goto :goto_2

    :cond_4
    move v1, v2

    move v2, v3

    goto :goto_1
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 3631
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 3619
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3620
    const-class v0, Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3621
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 3626
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3627
    const-class v0, Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3628
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 2161
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lit/sephiroth/android/library/widget/m;->a(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 2166
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/m;->a(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 2171
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lit/sephiroth/android/library/widget/m;->a(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1119
    invoke-super {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->onMeasure(II)V

    .line 1121
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 1122
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 1123
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1124
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1126
    const/4 v3, 0x0

    .line 1127
    const/4 v2, 0x0

    .line 1128
    const/4 v1, 0x0

    .line 1130
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    .line 1132
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    if-lez v0, :cond_2

    if-eqz v8, :cond_0

    if-nez v6, :cond_2

    .line 1137
    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->P:[Z

    invoke-virtual {p0, v0, v2}, Lit/sephiroth/android/library/widget/m;->a(I[Z)Landroid/view/View;

    move-result-object v7

    .line 1139
    const/4 v0, 0x0

    invoke-direct {p0, v7, v0, p2}, Lit/sephiroth/android/library/widget/m;->a(Landroid/view/View;II)V

    .line 1141
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1142
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v0, v9, :cond_1

    .line 1145
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v1, v0}, Lit/sephiroth/android/library/widget/m;->combineMeasuredStates(II)I

    move-result v0

    move v1, v0

    .line 1148
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v9, p0, Lit/sephiroth/android/library/widget/m;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$f;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$f;->a:I

    invoke-virtual {v9, v0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1149
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    const/4 v9, -0x1

    invoke-virtual {v0, v7, v9}, Lit/sephiroth/android/library/widget/AbsHListView$k;->a(Landroid/view/View;I)V

    :cond_2
    move v0, v2

    move v7, v3

    .line 1153
    if-nez v6, :cond_6

    .line 1154
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getHorizontalScrollbarHeight()I

    move-result v1

    add-int v5, v0, v1

    move v6, v5

    .line 1166
    :goto_1
    if-nez v8, :cond_3

    .line 1167
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getHorizontalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1170
    :cond_3
    const/high16 v0, -0x80000000

    if-ne v8, v0, :cond_4

    .line 1171
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/widget/m;->a(IIIII)I

    move-result v4

    .line 1178
    :cond_4
    invoke-virtual {p0, v4, v6}, Lit/sephiroth/android/library/widget/m;->setMeasuredDimension(II)V

    .line 1179
    iput p2, p0, Lit/sephiroth/android/library/widget/m;->v:I

    .line 1180
    return-void

    .line 1130
    :cond_5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto/16 :goto_0

    .line 1155
    :cond_6
    const/high16 v0, -0x80000000

    if-ne v6, v0, :cond_7

    iget v0, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    if-lez v0, :cond_7

    iget v0, p0, Lit/sephiroth/android/library/widget/m;->aw:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_7

    .line 1157
    iget v2, p0, Lit/sephiroth/android/library/widget/m;->aw:I

    iget v3, p0, Lit/sephiroth/android/library/widget/m;->aw:I

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Lit/sephiroth/android/library/widget/m;->a(IIIIII)[I

    move-result-object v0

    .line 1158
    const/4 v1, 0x1

    aget v5, v0, v1

    move v6, v5

    .line 1160
    goto :goto_1

    .line 1161
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_8

    .line 1162
    const/high16 v0, -0x1000000

    and-int/2addr v0, v1

    or-int/2addr v5, v0

    move v6, v5

    goto :goto_1

    :cond_8
    move v6, v5

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    .prologue
    .line 1099
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1100
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1101
    if-eqz v0, :cond_1

    .line 1102
    iget v1, p0, Lit/sephiroth/android/library/widget/m;->V:I

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1103
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1104
    const/4 v3, 0x0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getPaddingLeft()I

    move-result v4

    sub-int v4, p1, v4

    sub-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1105
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v2

    .line 1106
    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->aK:Lit/sephiroth/android/library/widget/m$c;

    if-nez v2, :cond_0

    .line 1107
    new-instance v2, Lit/sephiroth/android/library/widget/m$c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lit/sephiroth/android/library/widget/m$c;-><init>(Lit/sephiroth/android/library/widget/m;Lit/sephiroth/android/library/widget/m$1;)V

    iput-object v2, p0, Lit/sephiroth/android/library/widget/m;->aK:Lit/sephiroth/android/library/widget/m$c;

    .line 1109
    :cond_0
    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->aK:Lit/sephiroth/android/library/widget/m$c;

    invoke-virtual {v2, v1, v0}, Lit/sephiroth/android/library/widget/m$c;->a(II)Lit/sephiroth/android/library/widget/m$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->post(Ljava/lang/Runnable;)Z

    .line 1112
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AbsHListView;->onSizeChanged(IIII)V

    .line 1113
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 570
    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 573
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 574
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 576
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getWidth()I

    move-result v4

    .line 577
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getScrollX()I

    move-result v0

    .line 578
    add-int v1, v0, v4

    .line 579
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getHorizontalFadingEdgeLength()I

    move-result v5

    .line 581
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/m;->A()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 583
    iget v6, p0, Lit/sephiroth/android/library/widget/m;->am:I

    if-gtz v6, :cond_0

    if-le v3, v5, :cond_1

    .line 584
    :cond_0
    add-int/2addr v0, v5

    .line 588
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getChildCount()I

    move-result v3

    .line 589
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    .line 591
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/m;->B()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 593
    iget v6, p0, Lit/sephiroth/android/library/widget/m;->am:I

    iget v7, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    add-int/lit8 v7, v7, -0x1

    if-lt v6, v7, :cond_2

    iget v6, p2, Landroid/graphics/Rect;->right:I

    sub-int v7, v3, v5

    if-ge v6, v7, :cond_3

    .line 595
    :cond_2
    sub-int/2addr v1, v5

    .line 601
    :cond_3
    iget v5, p2, Landroid/graphics/Rect;->right:I

    if-le v5, v1, :cond_6

    iget v5, p2, Landroid/graphics/Rect;->left:I

    if-le v5, v0, :cond_6

    .line 606
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v5, v4, :cond_5

    .line 608
    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int v0, v4, v0

    add-int/2addr v0, v2

    .line 615
    :goto_0
    sub-int v1, v3, v1

    .line 616
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    .line 636
    :goto_1
    if-eqz v1, :cond_8

    const/4 v0, 0x1

    .line 637
    :goto_2
    if-eqz v0, :cond_4

    .line 638
    neg-int v1, v1

    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/m;->q(I)V

    .line 639
    const/4 v1, -0x1

    invoke-virtual {p0, v1, p1}, Lit/sephiroth/android/library/widget/m;->a(ILandroid/view/View;)V

    .line 640
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/m;->J:I

    .line 641
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->invalidate()V

    .line 643
    :cond_4
    return v0

    .line 611
    :cond_5
    iget v0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    goto :goto_0

    .line 617
    :cond_6
    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-ge v3, v0, :cond_9

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-ge v3, v1, :cond_9

    .line 622
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v3, v4, :cond_7

    .line 624
    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    sub-int v1, v2, v1

    .line 631
    :goto_3
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 632
    sub-int v0, v3, v0

    .line 633
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 627
    :cond_7
    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, v1

    sub-int v1, v2, v1

    goto :goto_3

    :cond_8
    move v0, v2

    .line 636
    goto :goto_2

    :cond_9
    move v1, v2

    goto :goto_1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 78
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/m;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 463
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->i:Lit/sephiroth/android/library/widget/AbsHListView$a;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->i:Lit/sephiroth/android/library/widget/AbsHListView$a;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 467
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->d()V

    .line 468
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->b()V

    .line 470
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->az:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->aA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 471
    :cond_1
    new-instance v0, Lit/sephiroth/android/library/widget/n;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->az:Ljava/util/ArrayList;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->aA:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lit/sephiroth/android/library/widget/n;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    .line 476
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/m;->ar:I

    .line 477
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/m;->as:J

    .line 480
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 482
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_5

    .line 483
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/m;->aF:Z

    .line 484
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    iput v0, p0, Lit/sephiroth/android/library/widget/m;->ap:I

    .line 485
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    .line 486
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->t()V

    .line 488
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$a;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$a;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/m;->i:Lit/sephiroth/android/library/widget/AbsHListView$a;

    .line 489
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->i:Lit/sephiroth/android/library/widget/AbsHListView$a;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 491
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->a(I)V

    .line 494
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/m;->K:Z

    if-eqz v0, :cond_4

    .line 495
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v3}, Lit/sephiroth/android/library/widget/m;->b(IZ)I

    move-result v0

    .line 499
    :goto_1
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->setSelectedPositionInt(I)V

    .line 500
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->setNextSelectedPositionInt(I)V

    .line 502
    iget v0, p0, Lit/sephiroth/android/library/widget/m;->ao:I

    if-nez v0, :cond_2

    .line 504
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->v()V

    .line 513
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->requestLayout()V

    .line 514
    return-void

    .line 473
    :cond_3
    iput-object p1, p0, Lit/sephiroth/android/library/widget/m;->j:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 497
    :cond_4
    invoke-virtual {p0, v3, v4}, Lit/sephiroth/android/library/widget/m;->b(IZ)I

    move-result v0

    goto :goto_1

    .line 507
    :cond_5
    iput-boolean v4, p0, Lit/sephiroth/android/library/widget/m;->aF:Z

    .line 508
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->t()V

    .line 510
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->v()V

    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 2

    .prologue
    .line 3136
    ushr-int/lit8 v0, p1, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 3137
    :goto_0
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/m;->aB:Z

    .line 3138
    if-eqz v0, :cond_1

    .line 3139
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->aI:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 3140
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/m;->aI:Landroid/graphics/Paint;

    .line 3142
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->aI:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3144
    :cond_1
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setCacheColorHint(I)V

    .line 3145
    return-void

    .line 3136
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3382
    if-eqz p1, :cond_2

    .line 3383
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/m;->av:I

    .line 3387
    :goto_0
    iput-object p1, p0, Lit/sephiroth/android/library/widget/m;->au:Landroid/graphics/drawable/Drawable;

    .line 3388
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/m;->aC:Z

    .line 3389
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->requestLayout()V

    .line 3390
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->invalidate()V

    .line 3391
    return-void

    .line 3385
    :cond_2
    iput v0, p0, Lit/sephiroth/android/library/widget/m;->av:I

    goto :goto_0
.end method

.method public setDividerWidth(I)V
    .locals 0

    .prologue
    .line 3411
    iput p1, p0, Lit/sephiroth/android/library/widget/m;->av:I

    .line 3412
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->requestLayout()V

    .line 3413
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->invalidate()V

    .line 3414
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0

    .prologue
    .line 3440
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/m;->aE:Z

    .line 3441
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->invalidate()V

    .line 3442
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0

    .prologue
    .line 3426
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/m;->aD:Z

    .line 3427
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->invalidate()V

    .line 3428
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1

    .prologue
    .line 3102
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/m;->aG:Z

    .line 3103
    if-nez p1, :cond_0

    .line 3104
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/m;->setDescendantFocusability(I)V

    .line 3106
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 3473
    iput-object p1, p0, Lit/sephiroth/android/library/widget/m;->ay:Landroid/graphics/drawable/Drawable;

    .line 3474
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->invalidate()V

    .line 3475
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 3452
    iput-object p1, p0, Lit/sephiroth/android/library/widget/m;->ax:Landroid/graphics/drawable/Drawable;

    .line 3453
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->getScrollX()I

    move-result v0

    if-gez v0, :cond_0

    .line 3454
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->invalidate()V

    .line 3456
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .prologue
    .line 2007
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/m;->f(II)V

    .line 2008
    return-void
.end method

.method public setSelectionInt(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2057
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/m;->setNextSelectedPositionInt(I)V

    .line 2058
    const/4 v1, 0x0

    .line 2060
    iget v2, p0, Lit/sephiroth/android/library/widget/m;->am:I

    .line 2062
    if-ltz v2, :cond_4

    .line 2063
    add-int/lit8 v3, v2, -0x1

    if-ne p1, v3, :cond_3

    .line 2070
    :cond_0
    :goto_0
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    if-eqz v1, :cond_1

    .line 2071
    iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView$j;->a()V

    .line 2074
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->e()V

    .line 2076
    if-eqz v0, :cond_2

    .line 2077
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->awakenScrollBars()Z

    .line 2079
    :cond_2
    return-void

    .line 2065
    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-eq p1, v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method protected y()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1217
    const/4 v0, 0x1

    return v0
.end method
