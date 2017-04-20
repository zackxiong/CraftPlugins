.class public Lcom/yf/smart/weloopx/android/ui/widget/m;
.super Lcom/yf/smart/weloopx/android/ui/widget/t;
.source "ProGuard"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:F

.field protected c:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/widget/t;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Lcom/yf/smart/weloopx/android/ui/widget/ChartView;)V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/widget/m;->b(Landroid/graphics/Canvas;Lcom/yf/smart/weloopx/android/ui/widget/ChartView;)V

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/widget/m;->c(Landroid/graphics/Canvas;Lcom/yf/smart/weloopx/android/ui/widget/ChartView;)V

    .line 32
    return-void
.end method

.method protected b(Landroid/graphics/Canvas;Lcom/yf/smart/weloopx/android/ui/widget/ChartView;)V
    .locals 10

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/m;->b()[Landroid/graphics/PointF;

    move-result-object v8

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->getBottomLabelHeight()F

    move-result v1

    sub-float v9, v0, v1

    .line 37
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/m;->c()Landroid/graphics/Paint;

    move-result-object v5

    .line 38
    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v0, v1

    .line 39
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    add-int/lit8 v0, v6, 0x1

    array-length v1, v8

    if-ge v0, v1, :cond_2

    .line 40
    aget-object v0, v8, v6

    add-int/lit8 v1, v6, 0x1

    aget-object v3, v8, v1

    .line 41
    iget v1, v0, Landroid/graphics/PointF;->y:F

    sub-float v2, v9, v1

    iget v1, v3, Landroid/graphics/PointF;->y:F

    sub-float v4, v9, v1

    .line 43
    cmpg-float v1, v2, v7

    if-gez v1, :cond_0

    move v2, v7

    .line 47
    :cond_0
    cmpg-float v1, v4, v7

    if-gez v1, :cond_1

    move v4, v7

    .line 50
    :cond_1
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 39
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 52
    :cond_2
    return-void
.end method

.method protected c(Landroid/graphics/Canvas;Lcom/yf/smart/weloopx/android/ui/widget/ChartView;)V
    .locals 6

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->getBottomLabelHeight()F

    move-result v1

    sub-float/2addr v0, v1

    .line 56
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/m;->c()Landroid/graphics/Paint;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/m;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 59
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/widget/m;->a:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/widget/m;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 60
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/widget/m;->a:Ljava/lang/String;

    iget v4, p0, Lcom/yf/smart/weloopx/android/ui/widget/m;->b:F

    iget v5, p0, Lcom/yf/smart/weloopx/android/ui/widget/m;->c:F

    sub-float/2addr v0, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 62
    :cond_0
    return-void
.end method
