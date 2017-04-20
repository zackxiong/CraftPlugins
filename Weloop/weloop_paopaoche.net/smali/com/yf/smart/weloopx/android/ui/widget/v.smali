.class Lcom/yf/smart/weloopx/android/ui/widget/v;
.super Landroid/widget/LinearLayout;
.source "ProGuard"


# instance fields
.field private final a:I

.field private final b:Landroid/graphics/Paint;

.field private final c:I

.field private final d:Landroid/graphics/Paint;

.field private final e:I

.field private final f:Landroid/graphics/Paint;

.field private final g:F

.field private h:I

.field private i:F

.field private j:Lcom/yf/smart/weloopx/android/ui/widget/u;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yf/smart/weloopx/android/ui/widget/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/widget/v;->setWillNotDraw(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/v;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 65
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010030

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 67
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 69
    const/16 v2, 0x26

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/widget/v;->a(IB)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->e:I

    .line 72
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->a:I

    .line 73
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->b:Landroid/graphics/Paint;

    .line 74
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->b:Landroid/graphics/Paint;

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->e:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->c:I

    .line 77
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->d:Landroid/graphics/Paint;

    .line 79
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->g:F

    .line 80
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->f:Landroid/graphics/Paint;

    .line 81
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->f:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    return-void
.end method

.method private static a(IB)I
    .locals 3

    .prologue
    .line 145
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private static a(IIF)I
    .locals 5

    .prologue
    .line 155
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 156
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 157
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    .line 158
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    .line 159
    float-to-int v1, v1

    float-to-int v2, v2

    float-to-int v0, v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method


# virtual methods
.method a(IF)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->h:I

    .line 91
    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->i:F

    .line 92
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/v;->invalidate()V

    .line 93
    return-void
.end method

.method a(Lcom/yf/smart/weloopx/android/ui/widget/u;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->j:Lcom/yf/smart/weloopx/android/ui/widget/u;

    .line 87
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/v;->getHeight()I

    move-result v6

    .line 98
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/v;->getChildCount()I

    move-result v7

    .line 99
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->g:F

    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v1, v6

    mul-float/2addr v0, v1

    float-to-int v8, v0

    .line 102
    if-lez v7, :cond_1

    .line 103
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->h:I

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/widget/v;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 106
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->j:Lcom/yf/smart/weloopx/android/ui/widget/u;

    iget v3, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->h:I

    invoke-virtual {v0, v3}, Lcom/yf/smart/weloopx/android/ui/widget/u;->a(I)I

    move-result v0

    .line 108
    iget v3, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->i:F

    cmpl-float v3, v3, v9

    if-lez v3, :cond_3

    iget v3, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->h:I

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/v;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3

    .line 109
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->j:Lcom/yf/smart/weloopx/android/ui/widget/u;

    iget v4, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->h:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/yf/smart/weloopx/android/ui/widget/u;->a(I)I

    move-result v3

    .line 110
    if-eq v0, v3, :cond_0

    .line 111
    iget v4, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->i:F

    invoke-static {v3, v0, v4}, Lcom/yf/smart/weloopx/android/ui/widget/v;->a(IIF)I

    move-result v0

    .line 115
    :cond_0
    iget v3, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->h:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/widget/v;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 116
    iget v4, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->i:F

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->i:F

    sub-float v5, v10, v5

    int-to-float v2, v2

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 118
    iget v4, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->i:F

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->i:F

    sub-float v4, v10, v4

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    move v3, v1

    move v1, v2

    .line 122
    :goto_0
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    int-to-float v1, v1

    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->c:I

    sub-int v0, v6, v0

    int-to-float v2, v0

    int-to-float v3, v3

    int-to-float v4, v6

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 129
    :cond_1
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->a:I

    sub-int v0, v6, v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/v;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 132
    sub-int v0, v6, v8

    div-int/lit8 v9, v0, 0x2

    .line 133
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    add-int/lit8 v0, v7, -0x1

    if-ge v6, v0, :cond_2

    .line 134
    invoke-virtual {p0, v6}, Lcom/yf/smart/weloopx/android/ui/widget/v;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->f:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->j:Lcom/yf/smart/weloopx/android/ui/widget/u;

    invoke-virtual {v2, v6}, Lcom/yf/smart/weloopx/android/ui/widget/u;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v9

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    add-int v0, v9, v8

    int-to-float v4, v0

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/widget/v;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 133
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 139
    :cond_2
    return-void

    :cond_3
    move v3, v1

    move v1, v2

    goto :goto_0
.end method
