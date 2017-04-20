.class public Lcom/todddavies/components/progressbar/ProgressWheel2;
.super Landroid/view/View;
.source "ProGuard"


# instance fields
.field private A:Landroid/graphics/RectF;

.field private B:Landroid/graphics/RectF;

.field private C:Landroid/graphics/RectF;

.field private D:Landroid/graphics/RectF;

.field private E:Landroid/graphics/RectF;

.field private F:I

.field private G:I

.field private H:Landroid/os/Handler;

.field private I:Ljava/lang/String;

.field private J:[Ljava/lang/String;

.field a:I

.field b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroid/graphics/Paint;

.field private v:Landroid/graphics/Paint;

.field private w:Landroid/graphics/Paint;

.field private x:Landroid/graphics/Paint;

.field private y:Landroid/graphics/Paint;

.field private z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/high16 v4, -0x56000000

    const/16 v3, 0x14

    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->c:I

    .line 31
    iput v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->d:I

    .line 32
    const/16 v0, 0x64

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->e:I

    .line 33
    const/16 v0, 0x50

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->f:I

    .line 34
    const/16 v0, 0x3c

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->g:I

    .line 35
    iput v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->h:I

    .line 36
    iput v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->i:I

    .line 37
    iput v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->j:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->k:F

    .line 41
    iput v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->l:I

    .line 42
    iput v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->m:I

    .line 43
    iput v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->n:I

    .line 44
    iput v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->o:I

    .line 47
    iput v4, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->p:I

    .line 48
    iput v4, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->q:I

    .line 49
    iput v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->r:I

    .line 50
    const v0, -0x55222223

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->s:I

    .line 51
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->t:I

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->u:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->v:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->w:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->x:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->y:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->z:Landroid/graphics/RectF;

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->A:Landroid/graphics/RectF;

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->B:Landroid/graphics/RectF;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->C:Landroid/graphics/RectF;

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->D:Landroid/graphics/RectF;

    .line 67
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->E:Landroid/graphics/RectF;

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->F:I

    .line 73
    iput v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->G:I

    .line 74
    new-instance v0, Lcom/todddavies/components/progressbar/a;

    invoke-direct {v0, p0}, Lcom/todddavies/components/progressbar/a;-><init>(Lcom/todddavies/components/progressbar/ProgressWheel2;)V

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->H:Landroid/os/Handler;

    .line 92
    iput v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->a:I

    .line 93
    iput-boolean v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->b:Z

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->I:Ljava/lang/String;

    .line 97
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->J:[Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/yf/ui/R$styleable;->ProgressWheel2:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->a(Landroid/content/res/TypedArray;)V

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/todddavies/components/progressbar/ProgressWheel2;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->F:I

    return v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 186
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->u:Landroid/graphics/Paint;

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->u:Landroid/graphics/Paint;

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->h:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 191
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->w:Landroid/graphics/Paint;

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->w:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 193
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->w:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 194
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->w:Landroid/graphics/Paint;

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->i:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 196
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->v:Landroid/graphics/Paint;

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->r:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 198
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->v:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 200
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->x:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 202
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 203
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->j:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 205
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->y:Landroid/graphics/Paint;

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->y:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 207
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->y:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 208
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->y:Landroid/graphics/Paint;

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->k:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 209
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 2

    .prologue
    .line 271
    sget v0, Lcom/yf/ui/R$styleable;->ProgressWheel2_pw_barWidth:I

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->h:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->h:I

    .line 274
    sget v0, Lcom/yf/ui/R$styleable;->ProgressWheel2_pw_rimWidth:I

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->i:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->i:I

    .line 277
    sget v0, Lcom/yf/ui/R$styleable;->ProgressWheel2_pw_spinSpeed:I

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->F:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->F:I

    .line 280
    sget v0, Lcom/yf/ui/R$styleable;->ProgressWheel2_pw_delayMillis:I

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->G:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->G:I

    .line 282
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->G:I

    if-gez v0, :cond_0

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->G:I

    .line 286
    :cond_0
    sget v0, Lcom/yf/ui/R$styleable;->ProgressWheel2_pw_barColor:I

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->p:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->p:I

    .line 288
    sget v0, Lcom/yf/ui/R$styleable;->ProgressWheel2_pw_barLength:I

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->g:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->g:I

    .line 291
    sget v0, Lcom/yf/ui/R$styleable;->ProgressWheel2_pw_textSize:I

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->j:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->j:I

    .line 294
    sget v0, Lcom/yf/ui/R$styleable;->ProgressWheel2_pw_textColor:I

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->t:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->t:I

    .line 298
    sget v0, Lcom/yf/ui/R$styleable;->ProgressWheel2_pw_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    sget v0, Lcom/yf/ui/R$styleable;->ProgressWheel2_pw_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->setText(Ljava/lang/String;)V

    .line 302
    :cond_1
    sget v0, Lcom/yf/ui/R$styleable;->ProgressWheel2_pw_rimColor:I

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->s:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->s:I

    .line 305
    sget v0, Lcom/yf/ui/R$styleable;->ProgressWheel2_pw_circleColor:I

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->r:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->r:I

    .line 308
    sget v0, Lcom/yf/ui/R$styleable;->ProgressWheel2_pw_contourColor:I

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->q:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->q:I

    .line 309
    sget v0, Lcom/yf/ui/R$styleable;->ProgressWheel2_pw_contourSize:I

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->k:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->k:F

    .line 313
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 314
    return-void
.end method

.method static synthetic b(Lcom/todddavies/components/progressbar/ProgressWheel2;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->G:I

    return v0
.end method

.method private b()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 216
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->d:I

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 219
    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->d:I

    sub-int/2addr v1, v0

    .line 220
    iget v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->c:I

    sub-int v0, v2, v0

    .line 223
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->getPaddingTop()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->l:I

    .line 224
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->getPaddingBottom()I

    move-result v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->m:I

    .line 225
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->getPaddingLeft()I

    move-result v0

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->n:I

    .line 226
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->getPaddingRight()I

    move-result v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->o:I

    .line 228
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->getWidth()I

    move-result v0

    .line 229
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->getHeight()I

    move-result v1

    .line 231
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->n:I

    int-to-float v3, v3

    iget v4, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->l:I

    int-to-float v4, v4

    iget v5, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->o:I

    sub-int v5, v0, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->m:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->z:Landroid/graphics/RectF;

    .line 236
    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->i:I

    iget v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->h:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    .line 237
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->z:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iget-object v4, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->z:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v1

    iget-object v5, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->z:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v1

    iget-object v6, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->z:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->A:Landroid/graphics/RectF;

    .line 241
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->A:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iget v4, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->k:F

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->A:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v1

    iget v5, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->k:F

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->A:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v1

    iget v6, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->k:F

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->A:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v1

    iget v7, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->k:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->E:Landroid/graphics/RectF;

    .line 245
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->A:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v1

    iget v4, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->k:F

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->A:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v1

    iget v5, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->k:F

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->A:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v1

    iget v6, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->k:F

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->A:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v6

    iget v6, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->k:F

    div-float/2addr v6, v8

    add-float/2addr v1, v6

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->D:Landroid/graphics/RectF;

    .line 249
    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->h:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    .line 250
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->z:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iget-object v4, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->z:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v1

    iget-object v5, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->z:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v1

    iget-object v6, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->z:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v6, v1

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->C:Landroid/graphics/RectF;

    .line 255
    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->i:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    .line 256
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->z:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iget-object v4, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->z:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v1

    iget-object v5, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->z:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v1

    iget-object v6, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->z:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v6, v1

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->B:Landroid/graphics/RectF;

    .line 261
    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->o:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->h:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->e:I

    .line 262
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->e:I

    iget v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->h:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->f:I

    .line 263
    return-void
.end method

.method static synthetic c(Lcom/todddavies/components/progressbar/ProgressWheel2;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->H:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getBarColor()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->p:I

    return v0
.end method

.method public getBarLength()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->g:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->h:I

    return v0
.end method

.method public getCircleColor()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->r:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->f:I

    return v0
.end method

.method public getDelayMillis()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->G:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->m:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->n:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->o:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->l:I

    return v0
.end method

.method public getRimColor()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->s:I

    return v0
.end method

.method public getRimShader()Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->w:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    return-object v0
.end method

.method public getRimWidth()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->i:I

    return v0
.end method

.method public getSpinSpeed()I
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->F:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->t:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->j:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    .line 321
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 323
    iget-object v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->E:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->v:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 325
    iget-object v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->B:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->w:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 326
    iget-object v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->D:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->y:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 327
    iget-object v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->E:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->y:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 329
    iget-boolean v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->b:Z

    if-eqz v0, :cond_0

    .line 330
    iget-object v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->C:Landroid/graphics/RectF;

    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->a:I

    add-int/lit8 v0, v0, -0x5a

    int-to-float v2, v0

    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->g:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->u:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 336
    :goto_0
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->x:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->x:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float v1, v0, v1

    .line 337
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->J:[Ljava/lang/String;

    array-length v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    iget-object v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->x:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v0, v2

    .line 340
    iget-object v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->J:[Ljava/lang/String;

    array-length v3, v2

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 341
    iget-object v6, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->x:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    div-float/2addr v6, v8

    .line 342
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float v6, v7, v6

    iget-object v7, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v0, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 344
    add-float/2addr v0, v1

    .line 340
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->C:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->a:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->u:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 346
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 134
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->getMeasuredWidth()I

    move-result v0

    .line 135
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->getMeasuredHeight()I

    move-result v2

    .line 136
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    .line 137
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->getPaddingTop()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 145
    if-le v1, v0, :cond_0

    .line 160
    :goto_0
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->setMeasuredDimension(II)V

    .line 161
    return-void

    :cond_0
    move v0, v1

    .line 148
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 173
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->d:I

    .line 174
    iput p2, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->c:I

    .line 176
    invoke-direct {p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->b()V

    .line 177
    invoke-direct {p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->a()V

    .line 178
    invoke-virtual {p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->invalidate()V

    .line 179
    return-void
.end method

.method public setBarColor(I)V
    .locals 0

    .prologue
    .line 493
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->p:I

    .line 494
    return-void
.end method

.method public setBarLength(I)V
    .locals 0

    .prologue
    .line 437
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->g:I

    .line 438
    return-void
.end method

.method public setBarWidth(I)V
    .locals 0

    .prologue
    .line 445
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->h:I

    .line 446
    return-void
.end method

.method public setCircleColor(I)V
    .locals 0

    .prologue
    .line 501
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->r:I

    .line 502
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 0

    .prologue
    .line 429
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->f:I

    .line 430
    return-void
.end method

.method public setDelayMillis(I)V
    .locals 0

    .prologue
    .line 550
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->G:I

    .line 551
    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 0

    .prologue
    .line 469
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->m:I

    .line 470
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0

    .prologue
    .line 477
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->n:I

    .line 478
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0

    .prologue
    .line 485
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->o:I

    .line 486
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0

    .prologue
    .line 461
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->l:I

    .line 462
    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 404
    iput-boolean v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->b:Z

    .line 405
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->a:I

    .line 406
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->H:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 407
    return-void
.end method

.method public setRimColor(I)V
    .locals 0

    .prologue
    .line 509
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->s:I

    .line 510
    return-void
.end method

.method public setRimShader(Landroid/graphics/Shader;)V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->w:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 519
    return-void
.end method

.method public setRimWidth(I)V
    .locals 0

    .prologue
    .line 542
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->i:I

    .line 543
    return-void
.end method

.method public setSpinSpeed(I)V
    .locals 0

    .prologue
    .line 534
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->F:I

    .line 535
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 420
    iput-object p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->I:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->I:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->J:[Ljava/lang/String;

    .line 422
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .prologue
    .line 526
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->t:I

    .line 527
    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .prologue
    .line 453
    iput p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel2;->j:I

    .line 454
    return-void
.end method
