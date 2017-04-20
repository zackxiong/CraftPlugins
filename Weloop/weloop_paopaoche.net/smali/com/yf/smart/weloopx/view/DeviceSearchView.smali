.class public Lcom/yf/smart/weloopx/view/DeviceSearchView;
.super Landroid/view/View;
.source "ProGuard"


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Landroid/graphics/Bitmap;

.field c:I

.field d:I

.field e:Landroid/graphics/Path;

.field f:Landroid/graphics/PathMeasure;

.field g:F

.field h:F

.field i:F

.field j:[F

.field k:[F

.field l:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/DeviceSearchView;->a()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/DeviceSearchView;->a()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/DeviceSearchView;->a()V

    .line 52
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/high16 v3, 0x42dc0000    # 110.0f

    const/high16 v2, 0x430c0000    # 140.0f

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->a:Landroid/graphics/Paint;

    .line 56
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/DeviceSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200af

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->b:Landroid/graphics/Bitmap;

    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->c:I

    .line 62
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->d:I

    .line 64
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->e:Landroid/graphics/Path;

    .line 65
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->e:Landroid/graphics/Path;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 66
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->e:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 67
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->e:Landroid/graphics/Path;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 68
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->e:Landroid/graphics/Path;

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 69
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 71
    new-instance v0, Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->e:Landroid/graphics/Path;

    invoke-direct {v0, v1, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->f:Landroid/graphics/PathMeasure;

    .line 72
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->g:F

    .line 74
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->h:F

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->i:F

    .line 76
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->j:[F

    .line 77
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->k:[F

    .line 79
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->l:Landroid/graphics/Matrix;

    .line 80
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 87
    iget v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->i:F

    iget v1, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->g:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->f:Landroid/graphics/PathMeasure;

    iget v1, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->i:F

    iget-object v2, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->j:[F

    iget-object v3, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->k:[F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 90
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->l:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 94
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->l:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->j:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->c:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->j:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget v3, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->d:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 96
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->l:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 98
    iget v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->i:F

    iget v1, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->h:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->i:F

    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/DeviceSearchView;->invalidate()V

    .line 106
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/view/DeviceSearchView;->i:F

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 113
    return-void
.end method
