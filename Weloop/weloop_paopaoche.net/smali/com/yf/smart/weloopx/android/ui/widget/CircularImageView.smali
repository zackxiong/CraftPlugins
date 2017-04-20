.class public Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;
.super Landroid/widget/ImageView;
.source "ProGuard"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->d:Landroid/graphics/Paint;

    .line 38
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->e:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    sget-object v0, Lcom/yf/smart/weloopx/R$styleable;->CircularImageView:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 48
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->setBorderWidth(I)V

    .line 49
    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->setBorderColor(I)V

    .line 52
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->a()V

    .line 55
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    return-void
.end method

.method private a(I)I
    .locals 3

    .prologue
    .line 110
    .line 111
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 112
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 114
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 122
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->b:I

    goto :goto_0
.end method

.method private b(I)I
    .locals 3

    .prologue
    .line 129
    .line 130
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 131
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 133
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_1

    .line 144
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x2

    return v0

    .line 136
    :cond_1
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 141
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->b:I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 148
    if-nez p1, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    .line 150
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 151
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 157
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 158
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public a()V
    .locals 5

    .prologue
    .line 71
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 72
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 73
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v5, 0x40800000    # 4.0f

    .line 78
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->c:Landroid/graphics/Bitmap;

    .line 81
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->b:I

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->b:I

    if-ge v0, v1, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->b:I

    .line 87
    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->c:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->b:I

    iget v3, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->b:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 88
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 93
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->b:I

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->a:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 94
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->a:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->a:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->b:I

    iget v4, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->a:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->a:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v3, v5

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 97
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->a:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->a:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->b:I

    iget v3, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->a:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, v5

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 100
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->a(I)I

    move-result v0

    .line 105
    invoke-direct {p0, p2}, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->b(I)I

    move-result v1

    .line 106
    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->setMeasuredDimension(II)V

    .line 107
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->e:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->invalidate()V

    .line 68
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->a:I

    .line 60
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->requestLayout()V

    .line 61
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->invalidate()V

    .line 62
    return-void
.end method
