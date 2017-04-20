.class public Lcom/yf/smart/weloopx/view/CropImageView;
.super Lcom/yf/smart/weloopx/view/h;
.source "ProGuard"


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/view/g;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/yf/smart/weloopx/view/g;

.field c:F

.field d:F

.field e:I

.field private n:Lcom/yf/smart/weloopx/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/yf/smart/weloopx/view/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->b:Lcom/yf/smart/weloopx/view/g;

    .line 36
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 78
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/view/g;

    .line 80
    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/view/g;->a(Z)V

    .line 81
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/g;->c()V

    .line 78
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 84
    :cond_0
    add-int/lit8 v2, v2, 0x1

    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/view/g;

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/yf/smart/weloopx/view/g;->a(FF)I

    move-result v1

    .line 87
    if-eq v1, v4, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/g;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 89
    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/view/g;->a(Z)V

    .line 90
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/g;->c()V

    .line 95
    :cond_2
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/CropImageView;->invalidate()V

    .line 96
    return-void
.end method

.method private a(Lcom/yf/smart/weloopx/view/g;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 196
    iget-object v1, p1, Lcom/yf/smart/weloopx/view/g;->d:Landroid/graphics/Rect;

    .line 198
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/CropImageView;->getLeft()I

    move-result v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 199
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/CropImageView;->getRight()I

    move-result v0

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 201
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/CropImageView;->getTop()I

    move-result v0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 202
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/CropImageView;->getBottom()I

    move-result v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v4, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 204
    if-eqz v2, :cond_2

    .line 205
    :goto_0
    if-eqz v0, :cond_3

    .line 207
    :goto_1
    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    int-to-float v1, v2

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/yf/smart/weloopx/view/CropImageView;->b(FF)V

    .line 210
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 204
    goto :goto_0

    :cond_3
    move v0, v1

    .line 205
    goto :goto_1
.end method

.method private b(Lcom/yf/smart/weloopx/view/g;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v4, 0x3f19999a    # 0.6f

    .line 215
    iget-object v0, p1, Lcom/yf/smart/weloopx/view/g;->d:Landroid/graphics/Rect;

    .line 217
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 218
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 220
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/CropImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 221
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/CropImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 223
    div-float v1, v2, v1

    mul-float/2addr v1, v4

    .line 224
    div-float v0, v3, v0

    mul-float/2addr v0, v4

    .line 226
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 227
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/CropImageView;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    .line 228
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 230
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/CropImageView;->getScale()F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v2, v1

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 231
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p1, Lcom/yf/smart/weloopx/view/g;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    aput v2, v1, v6

    iget-object v2, p1, Lcom/yf/smart/weloopx/view/g;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    aput v2, v1, v7

    .line 232
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 233
    aget v2, v1, v6

    aget v1, v1, v7

    const/high16 v3, 0x43960000    # 300.0f

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/yf/smart/weloopx/view/CropImageView;->a(FFFF)V

    .line 236
    :cond_0
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/view/CropImageView;->a(Lcom/yf/smart/weloopx/view/g;)V

    .line 237
    return-void
.end method


# virtual methods
.method protected a(FF)V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/yf/smart/weloopx/view/h;->a(FF)V

    .line 68
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/view/g;

    .line 70
    iget-object v2, v0, Lcom/yf/smart/weloopx/view/g;->f:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 71
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/g;->c()V

    .line 68
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method protected a(FFF)V
    .locals 4

    .prologue
    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/yf/smart/weloopx/view/h;->a(FFF)V

    .line 41
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/view/g;

    .line 42
    iget-object v2, v0, Lcom/yf/smart/weloopx/view/g;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 43
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/g;->c()V

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public add(Lcom/yf/smart/weloopx/view/g;)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/CropImageView;->invalidate()V

    .line 250
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 241
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/view/h;->onDraw(Landroid/graphics/Canvas;)V

    .line 242
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/view/g;

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/view/g;->a(Landroid/graphics/Canvas;)V

    .line 242
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    .line 22
    invoke-super/range {p0 .. p5}, Lcom/yf/smart/weloopx/view/h;->onLayout(ZIIII)V

    .line 23
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->h:Lcom/yf/smart/weloopx/view/k;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/k;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/view/g;

    .line 25
    iget-object v2, v0, Lcom/yf/smart/weloopx/view/g;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 26
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/g;->c()V

    .line 27
    iget-boolean v2, v0, Lcom/yf/smart/weloopx/view/g;->b:Z

    if-eqz v2, :cond_0

    .line 28
    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/view/CropImageView;->b(Lcom/yf/smart/weloopx/view/g;)V

    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 100
    iget-object v1, p0, Lcom/yf/smart/weloopx/view/CropImageView;->n:Lcom/yf/smart/weloopx/view/a;

    .line 101
    iget-boolean v0, v1, Lcom/yf/smart/weloopx/view/a;->b:Z

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return v2

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 176
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :goto_2
    move v2, v5

    .line 191
    goto :goto_0

    .line 107
    :pswitch_0
    iget-boolean v0, v1, Lcom/yf/smart/weloopx/view/a;->a:Z

    if-eqz v0, :cond_2

    .line 108
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/view/CropImageView;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 110
    :goto_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/view/g;

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/yf/smart/weloopx/view/g;->a(FF)I

    move-result v2

    .line 118
    if-eq v2, v5, :cond_4

    .line 119
    iput v2, p0, Lcom/yf/smart/weloopx/view/CropImageView;->e:I

    .line 120
    iput-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->b:Lcom/yf/smart/weloopx/view/g;

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->c:F

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->d:F

    .line 124
    iget-object v1, p0, Lcom/yf/smart/weloopx/view/CropImageView;->b:Lcom/yf/smart/weloopx/view/g;

    const/16 v0, 0x20

    if-ne v2, v0, :cond_3

    sget-object v0, Lcom/yf/smart/weloopx/view/g$a;->b:Lcom/yf/smart/weloopx/view/g$a;

    :goto_4
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/view/g;->a(Lcom/yf/smart/weloopx/view/g$a;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/yf/smart/weloopx/view/g$a;->c:Lcom/yf/smart/weloopx/view/g$a;

    goto :goto_4

    .line 110
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 133
    :pswitch_1
    iget-boolean v0, v1, Lcom/yf/smart/weloopx/view/a;->a:Z

    if-eqz v0, :cond_8

    move v3, v2

    .line 134
    :goto_5
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_9

    .line 135
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/view/g;

    .line 136
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/g;->a()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 137
    iput-object v0, v1, Lcom/yf/smart/weloopx/view/a;->c:Lcom/yf/smart/weloopx/view/g;

    move v4, v2

    .line 138
    :goto_6
    iget-object v1, p0, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_6

    .line 139
    if-ne v4, v3, :cond_5

    .line 138
    :goto_7
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_6

    .line 143
    :cond_5
    iget-object v1, p0, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/view/g;

    invoke-virtual {v1, v5}, Lcom/yf/smart/weloopx/view/g;->b(Z)V

    goto :goto_7

    .line 145
    :cond_6
    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/view/CropImageView;->b(Lcom/yf/smart/weloopx/view/g;)V

    .line 146
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->n:Lcom/yf/smart/weloopx/view/a;

    iput-boolean v2, v0, Lcom/yf/smart/weloopx/view/a;->a:Z

    move v2, v5

    .line 147
    goto/16 :goto_0

    .line 134
    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 150
    :cond_8
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->b:Lcom/yf/smart/weloopx/view/g;

    if-eqz v0, :cond_9

    .line 151
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->b:Lcom/yf/smart/weloopx/view/g;

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/view/CropImageView;->b(Lcom/yf/smart/weloopx/view/g;)V

    .line 152
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->b:Lcom/yf/smart/weloopx/view/g;

    sget-object v1, Lcom/yf/smart/weloopx/view/g$a;->a:Lcom/yf/smart/weloopx/view/g$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/view/g;->a(Lcom/yf/smart/weloopx/view/g$a;)V

    .line 154
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->b:Lcom/yf/smart/weloopx/view/g;

    goto/16 :goto_1

    .line 157
    :pswitch_2
    iget-boolean v0, v1, Lcom/yf/smart/weloopx/view/a;->a:Z

    if-eqz v0, :cond_a

    .line 158
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/view/CropImageView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 159
    :cond_a
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->b:Lcom/yf/smart/weloopx/view/g;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->b:Lcom/yf/smart/weloopx/view/g;

    iget v1, p0, Lcom/yf/smart/weloopx/view/CropImageView;->e:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/yf/smart/weloopx/view/CropImageView;->c:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/yf/smart/weloopx/view/CropImageView;->d:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/yf/smart/weloopx/view/g;->a(IFF)V

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->c:F

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->d:F

    .line 170
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/CropImageView;->b:Lcom/yf/smart/weloopx/view/g;

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/view/CropImageView;->a(Lcom/yf/smart/weloopx/view/g;)V

    goto/16 :goto_1

    .line 178
    :pswitch_3
    invoke-virtual {p0, v5, v5}, Lcom/yf/smart/weloopx/view/CropImageView;->a(ZZ)V

    goto/16 :goto_2

    .line 186
    :pswitch_4
    invoke-virtual {p0, v5, v5}, Lcom/yf/smart/weloopx/view/CropImageView;->a(ZZ)V

    goto/16 :goto_2

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 176
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setCropImage(Lcom/yf/smart/weloopx/view/a;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/CropImageView;->n:Lcom/yf/smart/weloopx/view/a;

    .line 255
    return-void
.end method
