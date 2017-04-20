.class public Lcom/yf/smart/weloopx/android/ui/widget/h;
.super Lcom/yf/smart/weloopx/android/ui/widget/m;
.source "ProGuard"


# instance fields
.field private d:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/widget/m;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 17
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/h;->d:Landroid/graphics/Paint;

    .line 18
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/h;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/h;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 20
    return-void

    .line 16
    nop

    :array_0
    .array-data 4
        0x41800000    # 16.0f
        0x41800000    # 16.0f
    .end array-data
.end method


# virtual methods
.method public a()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/h;->d:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected b(Landroid/graphics/Canvas;Lcom/yf/smart/weloopx/android/ui/widget/ChartView;)V
    .locals 11

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/h;->b()[Landroid/graphics/PointF;

    move-result-object v4

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->getBottomLabelHeight()F

    move-result v1

    sub-float v5, v0, v1

    .line 30
    iget-object v6, p0, Lcom/yf/smart/weloopx/android/ui/widget/h;->d:Landroid/graphics/Paint;

    .line 31
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 32
    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    .line 33
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    array-length v3, v4

    if-ge v1, v3, :cond_2

    .line 34
    aget-object v8, v4, v0

    add-int/lit8 v1, v0, 0x1

    aget-object v9, v4, v1

    .line 35
    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 36
    iget v1, v8, Landroid/graphics/PointF;->y:F

    sub-float v3, v5, v1

    iget v1, v9, Landroid/graphics/PointF;->y:F

    sub-float v1, v5, v1

    .line 37
    cmpg-float v10, v3, v2

    if-gez v10, :cond_0

    move v3, v2

    .line 41
    :cond_0
    cmpg-float v10, v1, v2

    if-gez v10, :cond_1

    move v1, v2

    .line 44
    :cond_1
    iget v8, v8, Landroid/graphics/PointF;->x:F

    invoke-virtual {v7, v8, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 45
    iget v3, v9, Landroid/graphics/PointF;->x:F

    invoke-virtual {v7, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 46
    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_2
    return-void
.end method
