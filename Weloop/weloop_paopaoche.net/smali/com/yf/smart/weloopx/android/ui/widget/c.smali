.class public Lcom/yf/smart/weloopx/android/ui/widget/c;
.super Lcom/yf/smart/weloopx/android/ui/widget/a;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Lcom/yf/smart/weloopx/android/ui/widget/ChartView;)V
    .locals 7

    .prologue
    .line 13
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->getBottomLabelHeight()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 15
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/c;->b()[Landroid/graphics/PointF;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 16
    iget v5, v4, Landroid/graphics/PointF;->x:F

    iput v5, v1, Landroid/graphics/RectF;->left:F

    .line 17
    iget v5, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/c;->a()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v1, Landroid/graphics/RectF;->right:F

    .line 18
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, v5, v4

    iput v4, v1, Landroid/graphics/RectF;->top:F

    .line 19
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/c;->c()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method
