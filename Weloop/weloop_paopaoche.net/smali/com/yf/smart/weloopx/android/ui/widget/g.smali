.class public Lcom/yf/smart/weloopx/android/ui/widget/g;
.super Landroid/graphics/drawable/Drawable;
.source "ProGuard"


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private b:Landroid/graphics/Paint;

.field private c:F

.field private d:F

.field private e:F

.field private f:[I

.field private g:[I

.field private h:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->a:Landroid/graphics/RectF;

    .line 22
    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->c:F

    .line 23
    const/high16 v0, -0x3d4c0000    # -90.0f

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->d:F

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->b:Landroid/graphics/Paint;

    .line 31
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 34
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/widget/g;->a(F)V

    .line 35
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/widget/g;->setAlpha(I)V

    .line 36
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->e:F

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 119
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->e:F

    goto :goto_0
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/widget/g;->a()V

    .line 41
    return-void
.end method

.method public a([I)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->f:[I

    .line 45
    return-void
.end method

.method public b(F)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->c:F

    .line 57
    return-void
.end method

.method public b([I)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->g:[I

    .line 49
    return-void
.end method

.method public c([I)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->h:[I

    .line 53
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 65
    iget v8, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->e:F

    .line 66
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->d:F

    rem-float/2addr v0, v3

    .line 67
    iget v9, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->c:F

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 71
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->a:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 73
    cmpl-float v0, v9, v3

    if-ltz v0, :cond_3

    move v6, v7

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->h:[I

    .line 76
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->h:[I

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->h:[I

    array-length v1, v1

    if-ne v1, v7, :cond_4

    .line 78
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 79
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->b:Landroid/graphics/Paint;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    :goto_1
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->a:Landroid/graphics/RectF;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 87
    :cond_0
    if-eqz v6, :cond_5

    .line 88
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->g:[I

    .line 93
    :goto_2
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_6

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 95
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    :goto_3
    float-to-double v0, v9

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_8

    float-to-double v0, v9

    const-wide v2, -0x40e5c91d14e3bcd3L    # -1.0E-4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_8

    .line 105
    :goto_4
    const-string v0, "C"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sweepAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    if-nez v7, :cond_2

    .line 107
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->a:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v8

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 110
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 111
    return-void

    :cond_3
    move v6, v4

    .line 73
    goto :goto_0

    .line 81
    :cond_4
    new-instance v1, Landroid/graphics/SweepGradient;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->a:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->a:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-direct {v1, v2, v5, v0, v10}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 82
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    .line 90
    :cond_5
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->f:[I

    goto :goto_2

    .line 96
    :cond_6
    array-length v1, v0

    if-ne v1, v7, :cond_7

    .line 97
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 98
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->b:Landroid/graphics/Paint;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 100
    :cond_7
    new-instance v1, Landroid/graphics/SweepGradient;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->a:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->a:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-direct {v1, v2, v3, v0, v10}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 101
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_3

    :cond_8
    move v7, v4

    .line 104
    goto :goto_4
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 139
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 140
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->a:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    div-float v3, v0, v5

    add-float/2addr v2, v3

    add-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 142
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->a:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    div-float v3, v0, v5

    sub-float/2addr v2, v3

    sub-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 143
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->a:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    div-float v3, v0, v5

    add-float/2addr v2, v3

    add-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 144
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->a:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    div-float/2addr v0, v5

    sub-float v0, v2, v0

    sub-float/2addr v0, v4

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 145
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/widget/g;->a()V

    .line 146
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 130
    return-void
.end method
