.class public Lcom/yf/smart/weloopx/android/ui/widget/RulerView;
.super Landroid/widget/HorizontalScrollView;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/widget/RulerView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yf/smart/weloopx/android/ui/widget/RulerView$a;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Z

.field private r:Z

.field private s:Landroid/view/View;

.field private t:I

.field private u:Ljava/lang/Runnable;

.field private v:Landroid/graphics/Paint;

.field private w:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/widget/p;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/widget/p;-><init>(Lcom/yf/smart/weloopx/android/ui/widget/RulerView;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->u:Ljava/lang/Runnable;

    .line 206
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->w:Landroid/graphics/Rect;

    .line 48
    sget-object v0, Lcom/yf/smart/weloopx/R$styleable;->RulerView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->p:Landroid/graphics/drawable/Drawable;

    .line 52
    const/16 v1, 0x13

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->c:I

    .line 53
    const/16 v1, 0x14

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->d:I

    .line 54
    const/16 v1, 0x15

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->q:Z

    .line 55
    const/16 v1, 0x12

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->b:I

    .line 57
    :cond_0
    const/16 v1, 0x16

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->e:I

    .line 58
    const/16 v1, 0x17

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->f:I

    .line 59
    const/16 v1, 0x1b

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->g:I

    .line 60
    const/16 v1, 0x1c

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->h:I

    .line 61
    const/16 v1, 0x1d

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->i:I

    .line 62
    const/16 v1, 0x1f

    const v2, 0x555555

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->n:I

    .line 63
    const/16 v1, 0x18

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->l:I

    .line 64
    const/16 v1, 0x19

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->m:I

    .line 65
    const/16 v1, 0x1a

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->o:I

    .line 66
    const/16 v1, 0x1e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->t:I

    .line 67
    const/16 v1, 0x20

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->r:Z

    .line 68
    const/16 v1, 0x21

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->k:I

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->b()V

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/widget/RulerView;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->e:I

    return v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 136
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->g:I

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->t:I

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->e:I

    div-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->i:I

    .line 137
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->a:Lcom/yf/smart/weloopx/android/ui/widget/RulerView$a;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->a:Lcom/yf/smart/weloopx/android/ui/widget/RulerView$a;

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->i:I

    invoke-interface {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView$a;->a(I)V

    .line 140
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/widget/RulerView;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->j:I

    return v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->v:Landroid/graphics/Paint;

    .line 168
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->v:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 169
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->v:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->v:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->k:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 171
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->c()V

    .line 172
    return-void
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->h:I

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->g:I

    sub-int/2addr v0, v1

    .line 75
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->t:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->e:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->j:I

    .line 76
    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/widget/RulerView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->s:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 175
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/widget/q;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/q;-><init>(Lcom/yf/smart/weloopx/android/ui/widget/RulerView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->s:Landroid/view/View;

    .line 182
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/widget/r;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/widget/r;-><init>(Lcom/yf/smart/weloopx/android/ui/widget/RulerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 192
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 194
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->setHorizontalScrollBarEnabled(Z)V

    .line 195
    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->setFillViewport(Z)V

    .line 196
    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->addView(Landroid/view/View;II)V

    .line 197
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/widget/s;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/widget/s;-><init>(Lcom/yf/smart/weloopx/android/ui/widget/RulerView;)V

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/widget/RulerView;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->i:I

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->g:I

    if-ge p1, v0, :cond_0

    .line 80
    iget p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->g:I

    .line 83
    :cond_0
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->h:I

    if-le p1, v0, :cond_1

    .line 84
    iget p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->h:I

    .line 86
    :cond_1
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->t:I

    div-int v0, p1, v0

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->t:I

    mul-int/2addr v0, v1

    .line 88
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->g:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->t:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->e:I

    mul-int/2addr v0, v1

    .line 89
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->scrollTo(II)V

    .line 90
    return-void
.end method

.method public getScaleEnd()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->h:I

    return v0
.end method

.method public getScalePosition()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->i:I

    return v0
.end method

.method public getScaleStart()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->g:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 210
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 211
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->b:I

    .line 212
    iget-object v10, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->w:Landroid/graphics/Rect;

    .line 214
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->g:I

    move v6, v0

    move v7, v1

    :goto_0
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->h:I

    if-ge v6, v0, :cond_3

    .line 215
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->o:I

    rem-int v0, v6, v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v8, v0

    .line 216
    :goto_1
    if-eqz v8, :cond_2

    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->m:I

    .line 217
    :goto_2
    add-int v11, v0, v9

    .line 218
    int-to-float v1, v7

    int-to-float v2, v9

    int-to-float v3, v7

    int-to-float v4, v11

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->v:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 219
    if-eqz v8, :cond_0

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->r:Z

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->v:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v9, v2, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 222
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v7, v1

    int-to-float v1, v1

    add-int/lit8 v2, v11, 0x5

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 224
    :cond_0
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->e:I

    add-int v1, v7, v0

    .line 214
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->t:I

    add-int/2addr v0, v6

    move v6, v0

    move v7, v1

    goto :goto_0

    :cond_1
    move v8, v9

    .line 215
    goto :goto_1

    .line 216
    :cond_2
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->l:I

    goto :goto_2

    .line 226
    :cond_3
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->c:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 227
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->p:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->c:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->d:I

    invoke-virtual {v1, v0, v9, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 228
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 229
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 4

    .prologue
    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 130
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->a()V

    .line 131
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->u:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 132
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->u:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 95
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->q:Z

    if-eqz v0, :cond_0

    .line 96
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->b:I

    .line 98
    :cond_0
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->b(I)V

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->measureChildren(II)V

    .line 100
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->i:I

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->a(I)V

    .line 101
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->s:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method

.method public setOnScaleListener(Lcom/yf/smart/weloopx/android/ui/widget/RulerView$a;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->a:Lcom/yf/smart/weloopx/android/ui/widget/RulerView$a;

    .line 105
    return-void
.end method

.method public setScalePosition(I)V
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->t:I

    div-int v0, p1, v0

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->t:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->i:I

    .line 148
    return-void
.end method
