.class public Lcom/yf/gattlib/view/ShakeImageView;
.super Landroid/widget/ImageView;
.source "ProGuard"


# instance fields
.field private a:I

.field private b:F

.field private c:Landroid/graphics/PointF;

.field private d:Z

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 11
    const/16 v0, 0x25

    iput v0, p0, Lcom/yf/gattlib/view/ShakeImageView;->a:I

    .line 18
    invoke-direct {p0}, Lcom/yf/gattlib/view/ShakeImageView;->a()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/16 v0, 0x25

    iput v0, p0, Lcom/yf/gattlib/view/ShakeImageView;->a:I

    .line 23
    invoke-direct {p0}, Lcom/yf/gattlib/view/ShakeImageView;->a()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const/16 v0, 0x25

    iput v0, p0, Lcom/yf/gattlib/view/ShakeImageView;->a:I

    .line 28
    invoke-direct {p0}, Lcom/yf/gattlib/view/ShakeImageView;->a()V

    .line 29
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/gattlib/view/ShakeImageView;->d:Z

    .line 39
    const v0, 0x3f83d70a    # 1.03f

    iput v0, p0, Lcom/yf/gattlib/view/ShakeImageView;->b:F

    .line 40
    const v0, -0x43dc28f6    # -0.01f

    iput v0, p0, Lcom/yf/gattlib/view/ShakeImageView;->e:F

    .line 41
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/yf/gattlib/view/ShakeImageView;->c:Landroid/graphics/PointF;

    .line 42
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    iget-object v0, p0, Lcom/yf/gattlib/view/ShakeImageView;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/yf/gattlib/view/ShakeImageView;->c:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/yf/gattlib/view/ShakeImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 49
    iget-object v0, p0, Lcom/yf/gattlib/view/ShakeImageView;->c:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/yf/gattlib/view/ShakeImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 51
    :cond_0
    iget v0, p0, Lcom/yf/gattlib/view/ShakeImageView;->a:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 52
    iget v0, p0, Lcom/yf/gattlib/view/ShakeImageView;->b:F

    iget v1, p0, Lcom/yf/gattlib/view/ShakeImageView;->b:F

    iget-object v2, p0, Lcom/yf/gattlib/view/ShakeImageView;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/yf/gattlib/view/ShakeImageView;->c:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 53
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 54
    iget v0, p0, Lcom/yf/gattlib/view/ShakeImageView;->a:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 55
    iget v0, p0, Lcom/yf/gattlib/view/ShakeImageView;->b:F

    iget v1, p0, Lcom/yf/gattlib/view/ShakeImageView;->e:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/yf/gattlib/view/ShakeImageView;->b:F

    .line 57
    iget v0, p0, Lcom/yf/gattlib/view/ShakeImageView;->e:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    iget v0, p0, Lcom/yf/gattlib/view/ShakeImageView;->b:F

    const v1, 0x3f733333    # 0.95f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 58
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/yf/gattlib/view/ShakeImageView;->e:F

    .line 62
    :cond_1
    iget v0, p0, Lcom/yf/gattlib/view/ShakeImageView;->e:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    iget v0, p0, Lcom/yf/gattlib/view/ShakeImageView;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 69
    :cond_2
    :goto_0
    return-void

    .line 66
    :cond_3
    iget-boolean v0, p0, Lcom/yf/gattlib/view/ShakeImageView;->d:Z

    if-nez v0, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/yf/gattlib/view/ShakeImageView;->postInvalidate()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yf/gattlib/view/ShakeImageView;->a()V

    .line 34
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 35
    return-void
.end method
