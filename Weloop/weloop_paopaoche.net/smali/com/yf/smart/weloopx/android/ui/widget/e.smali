.class public Lcom/yf/smart/weloopx/android/ui/widget/e;
.super Lcom/yf/smart/weloopx/android/ui/widget/t;
.source "ProGuard"


# instance fields
.field private a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/widget/t;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Lcom/yf/smart/weloopx/android/ui/widget/ChartView;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p2}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->getYSize()F

    move-result v3

    .line 26
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/e;->b()[Landroid/graphics/PointF;

    move-result-object v4

    .line 27
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/e;->c()Landroid/graphics/Paint;

    move-result-object v5

    .line 28
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move v0, v1

    move v2, v1

    .line 31
    :goto_0
    iget-object v7, p0, Lcom/yf/smart/weloopx/android/ui/widget/e;->a:[Ljava/lang/String;

    array-length v7, v7

    if-ge v0, v7, :cond_1

    .line 32
    iget-object v7, p0, Lcom/yf/smart/weloopx/android/ui/widget/e;->a:[Ljava/lang/String;

    aget-object v7, v7, v0

    .line 33
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v7, v1, v8, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 34
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v2, :cond_0

    .line 35
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 39
    :goto_1
    iget-object v7, p0, Lcom/yf/smart/weloopx/android/ui/widget/e;->a:[Ljava/lang/String;

    array-length v7, v7

    if-ge v0, v7, :cond_2

    .line 40
    iget-object v7, p0, Lcom/yf/smart/weloopx/android/ui/widget/e;->a:[Ljava/lang/String;

    aget-object v7, v7, v0

    .line 41
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v7, v1, v8, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 42
    aget-object v8, v4, v0

    iget v8, v8, Landroid/graphics/PointF;->x:F

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    int-to-float v9, v2

    add-float/2addr v9, v3

    aget-object v10, v4, v0

    iget v10, v10, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v10

    invoke-virtual {p1, v7, v8, v9, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    :cond_2
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/e;->a:[Ljava/lang/String;

    .line 21
    return-void
.end method
