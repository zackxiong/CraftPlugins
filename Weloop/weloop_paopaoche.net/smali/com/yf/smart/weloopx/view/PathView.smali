.class public Lcom/yf/smart/weloopx/view/PathView;
.super Landroid/view/View;
.source "ProGuard"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Path;

.field private d:Landroid/graphics/Path;

.field private e:Landroid/graphics/PathEffect;

.field private f:Landroid/content/Context;

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 66
    const/16 v0, 0x14

    iput v0, p0, Lcom/yf/smart/weloopx/view/PathView;->k:I

    const v0, -0xffff01

    iput v0, p0, Lcom/yf/smart/weloopx/view/PathView;->l:I

    const v0, -0xff0043

    iput v0, p0, Lcom/yf/smart/weloopx/view/PathView;->m:I

    const v0, -0xccc07b

    iput v0, p0, Lcom/yf/smart/weloopx/view/PathView;->n:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/yf/smart/weloopx/view/PathView;->o:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/view/PathView;->p:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/yf/smart/weloopx/view/PathView;->q:I

    const v0, -0xddddde

    iput v0, p0, Lcom/yf/smart/weloopx/view/PathView;->r:I

    .line 36
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/PathView;->f:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/yf/smart/weloopx/view/PathView;->a()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yf/smart/weloopx/view/PathView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const/16 v0, 0x14

    iput v0, p0, Lcom/yf/smart/weloopx/view/PathView;->k:I

    const v0, -0xffff01

    iput v0, p0, Lcom/yf/smart/weloopx/view/PathView;->l:I

    const v0, -0xff0043

    iput v0, p0, Lcom/yf/smart/weloopx/view/PathView;->m:I

    const v0, -0xccc07b

    iput v0, p0, Lcom/yf/smart/weloopx/view/PathView;->n:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/yf/smart/weloopx/view/PathView;->o:I

    iput v3, p0, Lcom/yf/smart/weloopx/view/PathView;->p:I

    iput v4, p0, Lcom/yf/smart/weloopx/view/PathView;->q:I

    const v0, -0xddddde

    iput v0, p0, Lcom/yf/smart/weloopx/view/PathView;->r:I

    .line 46
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/PathView;->f:Landroid/content/Context;

    .line 48
    sget-object v0, Lcom/yf/smart/weloopx/R$styleable;->PathView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    const/16 v1, 0x9

    iget v2, p0, Lcom/yf/smart/weloopx/view/PathView;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/view/PathView;->k:I

    .line 50
    iget v1, p0, Lcom/yf/smart/weloopx/view/PathView;->l:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/view/PathView;->l:I

    .line 51
    const/16 v1, 0xf

    iget v2, p0, Lcom/yf/smart/weloopx/view/PathView;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/view/PathView;->m:I

    .line 52
    const/16 v1, 0x10

    iget v2, p0, Lcom/yf/smart/weloopx/view/PathView;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/view/PathView;->n:I

    .line 53
    const/16 v1, 0xb

    iget v2, p0, Lcom/yf/smart/weloopx/view/PathView;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/view/PathView;->o:I

    .line 54
    const/16 v1, 0xc

    iget v2, p0, Lcom/yf/smart/weloopx/view/PathView;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/view/PathView;->p:I

    .line 55
    const/16 v1, 0xd

    iget v2, p0, Lcom/yf/smart/weloopx/view/PathView;->q:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/view/PathView;->q:I

    .line 56
    const/16 v1, 0xe

    iget v2, p0, Lcom/yf/smart/weloopx/view/PathView;->r:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/view/PathView;->r:I

    .line 57
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/PathView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/view/PathView;->s:[I

    .line 61
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    invoke-direct {p0}, Lcom/yf/smart/weloopx/view/PathView;->a()V

    .line 63
    return-void
.end method

.method private a(FF)Landroid/graphics/Paint;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 86
    new-instance v8, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 87
    iget v0, p0, Lcom/yf/smart/weloopx/view/PathView;->l:I

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 90
    iget v0, p0, Lcom/yf/smart/weloopx/view/PathView;->k:I

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/PathView;->s:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/view/PathView;->s:[I

    array-length v0, v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 93
    :cond_0
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v5, p0, Lcom/yf/smart/weloopx/view/PathView;->m:I

    iget v6, p0, Lcom/yf/smart/weloopx/view/PathView;->n:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, p1

    move v3, v1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 99
    :goto_0
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 100
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/PathView;->e:Landroid/graphics/PathEffect;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 101
    return-object v8

    .line 96
    :cond_1
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v5, p0, Lcom/yf/smart/weloopx/view/PathView;->s:[I

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, p1

    move v3, v1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/PathView;->j:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Landroid/graphics/CornerPathEffect;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/PathView;->e:Landroid/graphics/PathEffect;

    .line 80
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/PathView;->c:Landroid/graphics/Path;

    .line 81
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/PathView;->d:Landroid/graphics/Path;

    .line 82
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/PathView;->f:Landroid/content/Context;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/view/PathView;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/PathView;->i:I

    .line 83
    return-void
.end method

.method private a(II)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 152
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v2, p0, Lcom/yf/smart/weloopx/view/PathView;->j:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yf/smart/weloopx/view/PathView;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 186
    :goto_1
    return-void

    :cond_1
    move v1, v0

    .line 152
    goto :goto_0

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/yf/smart/weloopx/view/PathView;->d:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 157
    iget-object v1, p0, Lcom/yf/smart/weloopx/view/PathView;->c:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 158
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/PathView;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/PathView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 159
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/PathView;->getPaddingBottom()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/PathView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/yf/smart/weloopx/view/PathView;->i:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 162
    iget v3, p0, Lcom/yf/smart/weloopx/view/PathView;->h:I

    iget v4, p0, Lcom/yf/smart/weloopx/view/PathView;->g:I

    sub-int/2addr v3, v4

    .line 164
    int-to-float v3, v3

    div-float v3, v2, v3

    .line 165
    iget-object v2, p0, Lcom/yf/smart/weloopx/view/PathView;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 166
    int-to-float v2, v2

    div-float v4, v1, v2

    .line 168
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/PathView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    .line 170
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/PathView;->getPaddingBottom()I

    move-result v2

    sub-int v5, p2, v2

    move v2, v1

    move v1, v0

    .line 171
    :goto_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/PathView;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 172
    int-to-float v6, v5

    iget-object v0, p0, Lcom/yf/smart/weloopx/view/PathView;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v7, p0, Lcom/yf/smart/weloopx/view/PathView;->g:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    mul-float/2addr v0, v3

    sub-float v0, v6, v0

    .line 173
    if-nez v1, :cond_3

    .line 174
    iget-object v6, p0, Lcom/yf/smart/weloopx/view/PathView;->c:Landroid/graphics/Path;

    invoke-virtual {v6, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 175
    iget-object v6, p0, Lcom/yf/smart/weloopx/view/PathView;->d:Landroid/graphics/Path;

    invoke-virtual {v6, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 180
    :goto_3
    add-float/2addr v2, v4

    .line 171
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 177
    :cond_3
    iget-object v6, p0, Lcom/yf/smart/weloopx/view/PathView;->c:Landroid/graphics/Path;

    invoke-virtual {v6, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 178
    iget-object v6, p0, Lcom/yf/smart/weloopx/view/PathView;->d:Landroid/graphics/Path;

    invoke-virtual {v6, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 183
    :cond_4
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/PathView;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/yf/smart/weloopx/view/PathView;->i:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/PathView;->getPaddingBottom()I

    move-result v1

    sub-int v1, v5, v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/yf/smart/weloopx/view/PathView;->a(FF)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/PathView;->a:Landroid/graphics/Paint;

    .line 184
    invoke-direct {p0}, Lcom/yf/smart/weloopx/view/PathView;->b()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/PathView;->b:Landroid/graphics/Paint;

    .line 185
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/PathView;->invalidate()V

    goto/16 :goto_1
.end method

.method private b()Landroid/graphics/Paint;
    .locals 5

    .prologue
    .line 105
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 106
    iget v1, p0, Lcom/yf/smart/weloopx/view/PathView;->r:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 109
    iget v1, p0, Lcom/yf/smart/weloopx/view/PathView;->k:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    iget v1, p0, Lcom/yf/smart/weloopx/view/PathView;->o:I

    int-to-float v1, v1

    iget v2, p0, Lcom/yf/smart/weloopx/view/PathView;->p:I

    int-to-float v2, v2

    iget v3, p0, Lcom/yf/smart/weloopx/view/PathView;->q:I

    int-to-float v3, v3

    iget v4, p0, Lcom/yf/smart/weloopx/view/PathView;->r:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 111
    iget-object v1, p0, Lcom/yf/smart/weloopx/view/PathView;->e:Landroid/graphics/PathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 112
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 196
    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/PathView;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/yf/smart/weloopx/view/PathView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 191
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/PathView;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/yf/smart/weloopx/view/PathView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 192
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/yf/smart/weloopx/view/PathView;->a(II)V

    .line 149
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/PathView;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 127
    array-length v2, v1

    .line 128
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 130
    :try_start_0
    aget-object v3, v1, v0

    .line 131
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 132
    iget-object v4, p0, Lcom/yf/smart/weloopx/view/PathView;->j:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget v4, p0, Lcom/yf/smart/weloopx/view/PathView;->g:I

    if-ge v3, v4, :cond_1

    .line 134
    iput v3, p0, Lcom/yf/smart/weloopx/view/PathView;->g:I

    .line 128
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    iget v4, p0, Lcom/yf/smart/weloopx/view/PathView;->h:I

    if-le v3, v4, :cond_0

    .line 136
    iput v3, p0, Lcom/yf/smart/weloopx/view/PathView;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 138
    :catch_0
    move-exception v3

    goto :goto_1

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/PathView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/PathView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yf/smart/weloopx/view/PathView;->a(II)V

    .line 143
    return-void
.end method

.method public setMaxNum(I)V
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/yf/smart/weloopx/view/PathView;->h:I

    .line 118
    return-void
.end method

.method public setMinNum(I)V
    .locals 0

    .prologue
    .line 121
    iput p1, p0, Lcom/yf/smart/weloopx/view/PathView;->g:I

    .line 122
    return-void
.end method
