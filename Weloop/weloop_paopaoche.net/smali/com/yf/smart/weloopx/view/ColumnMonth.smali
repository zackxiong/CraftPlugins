.class public Lcom/yf/smart/weloopx/view/ColumnMonth;
.super Landroid/view/View;
.source "ProGuard"


# instance fields
.field private A:D

.field private B:F

.field private C:F

.field private D:I

.field private E:Landroid/graphics/Typeface;

.field private final a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/Paint;

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:I

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/SleepItem;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/CalorieItem;",
            ">;"
        }
    .end annotation
.end field

.field private w:Landroid/content/Context;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/16 v7, 0xf5

    const/16 v6, 0x23

    const/4 v5, 0x0

    const/16 v4, 0xd1

    const/16 v3, 0xff

    .line 88
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    const-string v0, "ColumnMonth"

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->a:Ljava/lang/String;

    .line 34
    const/16 v0, 0x44

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->b:I

    .line 36
    const/16 v0, 0x56

    const/16 v1, 0x13

    const/16 v2, 0x91

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->c:I

    .line 37
    const/16 v0, 0x86

    const/16 v1, 0x1b

    const/16 v2, 0xe5

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->d:I

    .line 38
    const/16 v0, 0xa5

    const/16 v1, 0x3f

    invoke-static {v3, v0, v1, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->e:I

    .line 40
    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->f:I

    .line 42
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->c:I

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->g:I

    .line 44
    const/16 v0, 0xa6

    invoke-static {v3, v7, v0, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->h:I

    .line 46
    const/4 v0, 0x3

    const/16 v1, 0xcc

    const/16 v2, 0x9d

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->i:I

    .line 48
    const/16 v0, 0xa7

    invoke-static {v3, v7, v0, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->j:I

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->u:Ljava/util/List;

    .line 72
    const/16 v0, 0x1e9a

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->x:I

    .line 73
    const/16 v0, 0x614

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->y:I

    .line 74
    iput v5, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->z:I

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->A:D

    .line 77
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->B:F

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->C:F

    .line 80
    iput v5, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->D:I

    .line 89
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/view/ColumnMonth;->a(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const/16 v7, 0xf5

    const/16 v6, 0x23

    const/4 v5, 0x0

    const/16 v4, 0xd1

    const/16 v3, 0xff

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-string v0, "ColumnMonth"

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->a:Ljava/lang/String;

    .line 34
    const/16 v0, 0x44

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->b:I

    .line 36
    const/16 v0, 0x56

    const/16 v1, 0x13

    const/16 v2, 0x91

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->c:I

    .line 37
    const/16 v0, 0x86

    const/16 v1, 0x1b

    const/16 v2, 0xe5

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->d:I

    .line 38
    const/16 v0, 0xa5

    const/16 v1, 0x3f

    invoke-static {v3, v0, v1, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->e:I

    .line 40
    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->f:I

    .line 42
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->c:I

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->g:I

    .line 44
    const/16 v0, 0xa6

    invoke-static {v3, v7, v0, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->h:I

    .line 46
    const/4 v0, 0x3

    const/16 v1, 0xcc

    const/16 v2, 0x9d

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->i:I

    .line 48
    const/16 v0, 0xa7

    invoke-static {v3, v7, v0, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->j:I

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->u:Ljava/util/List;

    .line 72
    const/16 v0, 0x1e9a

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->x:I

    .line 73
    const/16 v0, 0x614

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->y:I

    .line 74
    iput v5, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->z:I

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->A:D

    .line 77
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->B:F

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->C:F

    .line 80
    iput v5, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->D:I

    .line 94
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/view/ColumnMonth;->a(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method private a(I)F
    .locals 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->w:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 443
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 114
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->w:Landroid/content/Context;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/dincond_bold.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->E:Landroid/graphics/Typeface;

    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->k:Landroid/graphics/Paint;

    .line 117
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->k:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->l:Landroid/graphics/Paint;

    .line 122
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->l:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->m:Landroid/graphics/Paint;

    .line 128
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->m:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 131
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->n:Landroid/graphics/Paint;

    .line 134
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->o:Landroid/graphics/Paint;

    .line 138
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->o:Landroid/graphics/Paint;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/yf/smart/weloopx/view/ColumnMonth;->a(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 142
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->t:I

    .line 144
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/view/ColumnMonth;->a(I)F

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->B:F

    .line 145
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 17

    .prologue
    .line 151
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/view/ColumnMonth;->a(I)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->B:F

    .line 152
    const/16 v1, 0x14

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/view/ColumnMonth;->a(I)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->C:F

    .line 153
    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->p:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    .line 154
    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->B:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->C:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->t:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->s:F

    .line 159
    const/4 v11, 0x0

    .line 160
    const/4 v1, 0x0

    move v7, v1

    :goto_0
    const/4 v1, 0x5

    if-ge v7, v1, :cond_0

    .line 161
    packed-switch v7, :pswitch_data_0

    move v2, v11

    .line 176
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->C:F

    sub-float v5, v1, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->l:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 160
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v11, v2

    goto :goto_0

    .line 164
    :pswitch_0
    int-to-float v1, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    .line 165
    goto :goto_1

    .line 167
    :pswitch_1
    int-to-float v1, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    .line 168
    goto :goto_1

    .line 170
    :pswitch_2
    int-to-float v1, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    .line 171
    goto :goto_1

    .line 173
    :pswitch_3
    int-to-float v1, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    goto :goto_1

    .line 182
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->C:F

    sub-float v3, v1, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->p:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->C:F

    sub-float v5, v1, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->m:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    .line 190
    if-lez v13, :cond_1

    .line 192
    const/4 v1, 0x0

    move v12, v1

    :goto_2
    if-ge v12, v13, :cond_1

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->u:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/SleepItem;

    .line 194
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getDeepSleepMinutes()I

    move-result v14

    .line 195
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getShallowSleepMinutes()I

    move-result v15

    .line 196
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getWakeMinutes()I

    move-result v16

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->n:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->c:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    mul-int/lit8 v1, v12, 0x2

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->D:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v2, v1

    .line 201
    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->s:F

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->C:F

    sub-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->B:F

    add-float/2addr v3, v1

    .line 202
    mul-int/lit8 v1, v12, 0x2

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->D:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v4, v1

    .line 203
    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->C:F

    sub-float/2addr v1, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->B:F

    add-float/2addr v5, v1

    .line 208
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->n:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->n:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->d:I

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    int-to-float v5, v14

    move-object/from16 v0, p0

    iget v6, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->s:F

    mul-float/2addr v5, v6

    sub-float/2addr v1, v5

    int-to-float v5, v15

    move-object/from16 v0, p0

    iget v6, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->s:F

    mul-float/2addr v5, v6

    sub-float/2addr v1, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->B:F

    add-float v7, v1, v5

    .line 217
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->n:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v6, v2

    move v8, v4

    move v9, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->n:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->e:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->s:F

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    int-to-float v3, v15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->s:F

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    move/from16 v0, v16

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->s:F

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->B:F

    add-float/2addr v3, v1

    .line 227
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->n:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 192
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto/16 :goto_2

    .line 234
    :cond_1
    const/high16 v1, 0x43f00000    # 480.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->s:F

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->B:F

    sub-float v2, v1, v2

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->m:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->m:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->h:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->m:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 238
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 239
    const/16 v4, 0xa

    .line 240
    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    sub-float/2addr v1, v2

    .line 241
    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    if-gez v5, :cond_2

    .line 242
    const/high16 v1, 0x41a00000    # 20.0f

    .line 244
    :cond_2
    int-to-float v5, v4

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 245
    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->p:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    sub-float v2, v6, v2

    invoke-virtual {v3, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 246
    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x4

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-direct {v2, v5, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 248
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->m:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->m:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->w:Landroid/content/Context;

    const v3, 0x7f0700ea

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v4

    const/high16 v4, 0x42200000    # 40.0f

    add-float/2addr v1, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->o:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->o:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->o:Landroid/graphics/Paint;

    const/16 v2, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/yf/smart/weloopx/view/ColumnMonth;->a(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->o:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->E:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 258
    const/4 v1, 0x0

    move v3, v1

    move v1, v11

    :goto_3
    const/4 v2, 0x5

    if-ge v3, v2, :cond_4

    .line 260
    if-nez v3, :cond_3

    const-string v2, "1"

    .line 261
    :goto_4
    packed-switch v3, :pswitch_data_1

    .line 280
    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    const/4 v5, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/yf/smart/weloopx/view/ColumnMonth;->a(I)F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->o:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 258
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 260
    :cond_3
    mul-int/lit8 v2, v3, 0x7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 264
    :pswitch_4
    int-to-float v1, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v1, v4

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v1, v4

    const/high16 v4, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 265
    const/high16 v4, 0x41200000    # 10.0f

    sub-float/2addr v1, v4

    .line 266
    goto :goto_5

    .line 268
    :pswitch_5
    int-to-float v1, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v1, v4

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v1, v4

    const/high16 v4, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 269
    const/high16 v4, 0x41200000    # 10.0f

    sub-float/2addr v1, v4

    .line 270
    goto :goto_5

    .line 272
    :pswitch_6
    int-to-float v1, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v1, v4

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v1, v4

    const/high16 v4, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 273
    const/high16 v4, 0x41900000    # 18.0f

    sub-float/2addr v1, v4

    .line 274
    goto :goto_5

    .line 276
    :pswitch_7
    int-to-float v1, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v1, v4

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v1, v4

    const/high16 v4, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 277
    const/high16 v4, 0x41900000    # 18.0f

    sub-float/2addr v1, v4

    goto :goto_5

    .line 283
    :cond_4
    return-void

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 246
    :array_0
    .array-data 4
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    .line 261
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 287
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/view/ColumnMonth;->a(I)F

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->B:F

    .line 288
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/view/ColumnMonth;->a(I)F

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->C:F

    .line 289
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->p:F

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    .line 290
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->B:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    .line 291
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->C:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    .line 292
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->A:D

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->s:F

    .line 294
    const/4 v1, 0x0

    .line 295
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/4 v0, 0x5

    if-ge v6, v0, :cond_0

    .line 296
    packed-switch v6, :pswitch_data_0

    .line 311
    :goto_1
    const/4 v2, 0x0

    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    iget v3, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->B:F

    add-float/2addr v0, v3

    iget v3, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->C:F

    sub-float v4, v0, v3

    iget-object v5, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->l:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 295
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 299
    :pswitch_0
    int-to-float v0, v6

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    iget v2, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 300
    goto :goto_1

    .line 302
    :pswitch_1
    int-to-float v0, v6

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    iget v2, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 303
    goto :goto_1

    .line 305
    :pswitch_2
    int-to-float v0, v6

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    iget v2, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 306
    goto :goto_1

    .line 308
    :pswitch_3
    int-to-float v0, v6

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    iget v2, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    goto :goto_1

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    const/4 v1, 0x0

    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    iget v2, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->B:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->C:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->p:F

    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    iget v4, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->B:F

    add-float/2addr v0, v4

    iget v4, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->C:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->m:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 321
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 325
    if-lez v3, :cond_4

    .line 327
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v3, :cond_4

    .line 328
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->v:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/CalorieItem;

    .line 329
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->getCalorie()D

    move-result-wide v0

    double-to-float v0, v0

    .line 331
    mul-int/lit8 v1, v2, 0x2

    add-int/lit8 v1, v1, -0x1

    iget v4, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->D:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v1, v4

    .line 332
    iget v4, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    iget v5, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->s:F

    mul-float/2addr v0, v5

    sub-float v0, v4, v0

    iget v4, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->B:F

    add-float/2addr v0, v4

    .line 333
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->D:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v4, v5

    .line 334
    iget v5, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    iget v6, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->B:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->C:F

    sub-float/2addr v5, v6

    .line 336
    const/4 v6, 0x1

    if-eq v2, v6, :cond_1

    iget v6, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->D:I

    rsub-int/lit8 v6, v6, 0x7

    if-eq v2, v6, :cond_1

    iget v6, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->D:I

    rsub-int/lit8 v6, v6, 0xc

    if-eq v2, v6, :cond_1

    iget v6, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->D:I

    rsub-int/lit8 v6, v6, 0x12

    if-eq v2, v6, :cond_1

    iget v6, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->D:I

    rsub-int/lit8 v6, v6, 0x18

    if-eq v2, v6, :cond_1

    iget v6, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->D:I

    rsub-int/lit8 v6, v6, 0x1d

    if-ne v2, v6, :cond_2

    .line 338
    :cond_1
    const/high16 v6, 0x40000000    # 2.0f

    sub-float/2addr v1, v6

    .line 340
    :cond_2
    const/4 v6, 0x0

    cmpg-float v6, v0, v6

    if-gez v6, :cond_3

    .line 341
    const/4 v0, 0x0

    .line 344
    :cond_3
    iget-object v6, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->w:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020169

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 346
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 347
    iput v1, v7, Landroid/graphics/RectF;->left:F

    .line 348
    iput v4, v7, Landroid/graphics/RectF;->right:F

    .line 349
    iput v5, v7, Landroid/graphics/RectF;->bottom:F

    .line 350
    iput v0, v7, Landroid/graphics/RectF;->top:F

    .line 351
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 327
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    .line 357
    :cond_4
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->m:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 359
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 360
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 361
    const/4 v6, 0x0

    .line 362
    const/4 v0, 0x0

    move v7, v0

    :goto_3
    if-ge v7, v8, :cond_7

    .line 363
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->v:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/CalorieItem;

    .line 364
    iget v3, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    float-to-double v4, v3

    iget v3, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->s:F

    float-to-double v10, v3

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->getCalorieGoal()D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v4, v10

    double-to-float v0, v4

    .line 366
    iget v3, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->B:F

    add-float v4, v0, v3

    .line 367
    const/4 v0, 0x0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_5

    const/high16 v4, 0x40a00000    # 5.0f

    .line 368
    :cond_5
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v0, v3

    int-to-float v3, v7

    mul-float/2addr v3, v0

    .line 371
    if-eqz v7, :cond_6

    .line 372
    iget-object v5, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->m:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v0, v6

    .line 362
    :goto_4
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v6, v0

    move v2, v4

    move v1, v3

    goto :goto_3

    :cond_6
    move v0, v4

    .line 375
    goto :goto_4

    .line 382
    :cond_7
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 384
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->w:Landroid/content/Context;

    const v1, 0x7f070115

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x42200000    # 40.0f

    add-float/2addr v2, v6

    iget-object v3, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 386
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->o:Landroid/graphics/Paint;

    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/yf/smart/weloopx/view/ColumnMonth;->a(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 387
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->o:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->o:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->E:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 389
    const/4 v1, 0x0

    .line 390
    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_5
    const/4 v1, 0x5

    if-ge v2, v1, :cond_9

    .line 391
    iget-object v1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->o:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    if-nez v2, :cond_8

    const-string v1, "1"

    .line 393
    :goto_6
    packed-switch v2, :pswitch_data_1

    .line 412
    :goto_7
    iget v3, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/yf/smart/weloopx/view/ColumnMonth;->a(I)F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->B:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->C:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 390
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    .line 392
    :cond_8
    mul-int/lit8 v1, v2, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 396
    :pswitch_4
    int-to-float v0, v2

    iget v3, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v0, v3

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v0, v3

    const/high16 v3, 0x40800000    # 4.0f

    iget v4, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 397
    const/high16 v3, 0x41200000    # 10.0f

    sub-float/2addr v0, v3

    .line 398
    goto :goto_7

    .line 400
    :pswitch_5
    int-to-float v0, v2

    iget v3, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v0, v3

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v0, v3

    const/high16 v3, 0x40c00000    # 6.0f

    iget v4, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 401
    const/high16 v3, 0x41200000    # 10.0f

    sub-float/2addr v0, v3

    .line 402
    goto :goto_7

    .line 404
    :pswitch_6
    int-to-float v0, v2

    iget v3, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v0, v3

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v0, v3

    const/high16 v3, 0x41000000    # 8.0f

    iget v4, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 405
    const/high16 v3, 0x41900000    # 18.0f

    sub-float/2addr v0, v3

    .line 406
    goto :goto_7

    .line 408
    :pswitch_7
    int-to-float v0, v2

    iget v3, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v0, v3

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v0, v3

    const/high16 v3, 0x41200000    # 10.0f

    iget v4, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->r:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 409
    const/high16 v3, 0x41900000    # 18.0f

    sub-float/2addr v0, v3

    goto :goto_7

    .line 415
    :cond_9
    return-void

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 393
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getBaseOrMax()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->t:I

    return v0
.end method

.method public getMaxSportHistory()D
    .locals 2

    .prologue
    .line 447
    iget-wide v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->A:D

    return-wide v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 101
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/ColumnMonth;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->p:F

    .line 102
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/ColumnMonth;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->q:F

    .line 104
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->z:I

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->x:I

    if-ne v0, v1, :cond_0

    .line 105
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/view/ColumnMonth;->a(Landroid/graphics/Canvas;)V

    .line 108
    :cond_0
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->z:I

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->y:I

    if-ne v0, v1, :cond_1

    .line 109
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/view/ColumnMonth;->b(Landroid/graphics/Canvas;)V

    .line 111
    :cond_1
    return-void
.end method

.method public setBaseOrMax(I)V
    .locals 0

    .prologue
    .line 423
    iput p1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->t:I

    .line 424
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/ColumnMonth;->postInvalidate()V

    .line 425
    return-void
.end method

.method public setMaxSportHistory(D)V
    .locals 1

    .prologue
    .line 451
    iput-wide p1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->A:D

    .line 452
    return-void
.end method

.method public setOffectNum(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->D:I

    .line 85
    return-void
.end method

.method public setSleepListData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/SleepItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 429
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->u:Ljava/util/List;

    .line 430
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->x:I

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->z:I

    .line 431
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/ColumnMonth;->postInvalidate()V

    .line 432
    return-void
.end method

.method public setSportListData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/CalorieItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 436
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->v:Ljava/util/List;

    .line 437
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->y:I

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnMonth;->z:I

    .line 438
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/ColumnMonth;->postInvalidate()V

    .line 439
    return-void
.end method
