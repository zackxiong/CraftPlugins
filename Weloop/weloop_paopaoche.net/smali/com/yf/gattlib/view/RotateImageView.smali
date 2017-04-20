.class public Lcom/yf/gattlib/view/RotateImageView;
.super Landroid/widget/ImageView;
.source "ProGuard"


# instance fields
.field private a:F

.field private b:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-direct {p0}, Lcom/yf/gattlib/view/RotateImageView;->a()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yf/gattlib/view/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-direct {p0}, Lcom/yf/gattlib/view/RotateImageView;->a()V

    .line 24
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/gattlib/view/RotateImageView;->a:F

    .line 28
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/yf/gattlib/view/RotateImageView;->b:Landroid/graphics/PointF;

    .line 29
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/16 v3, 0x25

    .line 33
    iget-object v0, p0, Lcom/yf/gattlib/view/RotateImageView;->b:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/yf/gattlib/view/RotateImageView;->b:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/yf/gattlib/view/RotateImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 35
    iget-object v0, p0, Lcom/yf/gattlib/view/RotateImageView;->b:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/yf/gattlib/view/RotateImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 37
    :cond_0
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->save(I)I

    .line 38
    iget v0, p0, Lcom/yf/gattlib/view/RotateImageView;->a:F

    iget-object v1, p0, Lcom/yf/gattlib/view/RotateImageView;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/yf/gattlib/view/RotateImageView;->b:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 39
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 40
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 41
    iget v0, p0, Lcom/yf/gattlib/view/RotateImageView;->a:F

    const/high16 v1, 0x3fc00000    # 1.5f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/yf/gattlib/view/RotateImageView;->a:F

    .line 42
    iget v0, p0, Lcom/yf/gattlib/view/RotateImageView;->a:F

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/yf/gattlib/view/RotateImageView;->a:F

    .line 44
    invoke-virtual {p0}, Lcom/yf/gattlib/view/RotateImageView;->postInvalidate()V

    .line 45
    return-void
.end method
