.class Lcom/yf/smart/weloopx/view/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:F

.field b:Landroid/graphics/Matrix;

.field c:[Landroid/media/FaceDetector$Face;

.field d:I

.field final synthetic e:Lcom/yf/smart/weloopx/view/a;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/view/a;)V
    .locals 1

    .prologue
    .line 152
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/yf/smart/weloopx/view/d;->a:F

    .line 155
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/FaceDetector$Face;

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/d;->c:[Landroid/media/FaceDetector$Face;

    return-void
.end method

.method private a()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 202
    new-instance v0, Lcom/yf/smart/weloopx/view/g;

    iget-object v1, p0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v1}, Lcom/yf/smart/weloopx/view/a;->b(Lcom/yf/smart/weloopx/view/a;)Lcom/yf/smart/weloopx/view/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/view/g;-><init>(Landroid/view/View;)V

    .line 203
    iget-object v1, p0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v1}, Lcom/yf/smart/weloopx/view/a;->a(Lcom/yf/smart/weloopx/view/a;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v1}, Lcom/yf/smart/weloopx/view/a;->a(Lcom/yf/smart/weloopx/view/a;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 207
    iget-object v2, p0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v2}, Lcom/yf/smart/weloopx/view/a;->a(Lcom/yf/smart/weloopx/view/a;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 209
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 213
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x5

    .line 216
    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    .line 217
    sub-int/2addr v3, v5

    div-int/lit8 v6, v3, 0x2

    .line 219
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v7, v1

    int-to-float v8, v6

    add-int/2addr v1, v5

    int-to-float v1, v1

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v3, v7, v8, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 220
    iget-object v1, p0, Lcom/yf/smart/weloopx/view/d;->b:Landroid/graphics/Matrix;

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/yf/smart/weloopx/view/g;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 221
    iget-object v1, p0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v1}, Lcom/yf/smart/weloopx/view/a;->b(Lcom/yf/smart/weloopx/view/a;)Lcom/yf/smart/weloopx/view/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/view/CropImageView;->add(Lcom/yf/smart/weloopx/view/g;)V

    goto :goto_0
.end method

.method private a(Landroid/media/FaceDetector$Face;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 160
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 162
    invoke-virtual {p1}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v1

    iget v2, p0, Lcom/yf/smart/weloopx/view/d;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 163
    invoke-virtual {p1, v0}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 164
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/yf/smart/weloopx/view/d;->a:F

    mul-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 165
    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/yf/smart/weloopx/view/d;->a:F

    mul-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 167
    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v5, v2

    .line 168
    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v6, v0

    .line 170
    new-instance v0, Lcom/yf/smart/weloopx/view/g;

    iget-object v2, p0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v2}, Lcom/yf/smart/weloopx/view/a;->b(Lcom/yf/smart/weloopx/view/a;)Lcom/yf/smart/weloopx/view/CropImageView;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/yf/smart/weloopx/view/g;-><init>(Landroid/view/View;)V

    .line 172
    iget-object v2, p0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v2}, Lcom/yf/smart/weloopx/view/a;->a(Lcom/yf/smart/weloopx/view/a;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 173
    iget-object v2, p0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v2}, Lcom/yf/smart/weloopx/view/a;->a(Lcom/yf/smart/weloopx/view/a;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 175
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 177
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v7, v5

    int-to-float v8, v6

    int-to-float v5, v5

    int-to-float v6, v6

    invoke-direct {v3, v7, v8, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 178
    neg-int v5, v1

    int-to-float v5, v5

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3, v5, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 179
    iget v1, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_0

    .line 180
    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v5, v3, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    invoke-virtual {v3, v1, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 183
    :cond_0
    iget v1, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_1

    .line 184
    iget v1, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v5, v3, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    invoke-virtual {v3, v1, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 187
    :cond_1
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_2

    .line 188
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v1, v5

    iget v5, v3, Landroid/graphics/RectF;->right:F

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v3, v1, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 191
    :cond_2
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_3

    .line 192
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v1, v5

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v3, v1, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 195
    :cond_3
    iget-object v1, p0, Lcom/yf/smart/weloopx/view/d;->b:Landroid/graphics/Matrix;

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/yf/smart/weloopx/view/g;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 197
    iget-object v1, p0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v1}, Lcom/yf/smart/weloopx/view/a;->b(Lcom/yf/smart/weloopx/view/a;)Lcom/yf/smart/weloopx/view/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/view/CropImageView;->add(Lcom/yf/smart/weloopx/view/g;)V

    .line 198
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/view/d;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/yf/smart/weloopx/view/d;->a()V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/view/d;Landroid/media/FaceDetector$Face;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/view/d;->a(Landroid/media/FaceDetector$Face;)V

    return-void
.end method

.method private b()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/view/a;->a(Lcom/yf/smart/weloopx/view/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 238
    :goto_0
    return-object v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/view/a;->a(Lcom/yf/smart/weloopx/view/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x100

    if-le v0, v2, :cond_1

    .line 232
    const/high16 v0, 0x43800000    # 256.0f

    iget-object v2, p0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v2}, Lcom/yf/smart/weloopx/view/a;->a(Lcom/yf/smart/weloopx/view/a;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/yf/smart/weloopx/view/d;->a:F

    .line 235
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 236
    iget v0, p0, Lcom/yf/smart/weloopx/view/d;->a:F

    iget v2, p0, Lcom/yf/smart/weloopx/view/d;->a:F

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 237
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/view/a;->a(Lcom/yf/smart/weloopx/view/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v2}, Lcom/yf/smart/weloopx/view/a;->a(Lcom/yf/smart/weloopx/view/a;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v2}, Lcom/yf/smart/weloopx/view/a;->a(Lcom/yf/smart/weloopx/view/a;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 242
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/view/a;->b(Lcom/yf/smart/weloopx/view/a;)Lcom/yf/smart/weloopx/view/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/d;->b:Landroid/graphics/Matrix;

    .line 243
    invoke-direct {p0}, Lcom/yf/smart/weloopx/view/d;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 245
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/yf/smart/weloopx/view/d;->a:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/yf/smart/weloopx/view/d;->a:F

    .line 246
    if-eqz v0, :cond_0

    .line 247
    new-instance v1, Landroid/media/FaceDetector;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/yf/smart/weloopx/view/d;->c:[Landroid/media/FaceDetector$Face;

    array-length v4, v4

    invoke-direct {v1, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V

    .line 248
    iget-object v2, p0, Lcom/yf/smart/weloopx/view/d;->c:[Landroid/media/FaceDetector$Face;

    invoke-virtual {v1, v0, v2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/view/d;->d:I

    .line 251
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v1}, Lcom/yf/smart/weloopx/view/a;->a(Lcom/yf/smart/weloopx/view/a;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 252
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/view/a;->c(Lcom/yf/smart/weloopx/view/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/view/e;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/view/e;-><init>(Lcom/yf/smart/weloopx/view/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    return-void
.end method
