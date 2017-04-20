.class public Lcom/yf/smart/weloopx/view/ColumnWeek;
.super Landroid/view/View;
.source "ProGuard"


# instance fields
.field private A:D

.field private B:F

.field private C:F

.field private D:I

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
    .locals 7

    .prologue
    const/16 v6, 0x23

    const/4 v5, 0x0

    const/16 v4, 0xf5

    const/16 v3, 0xff

    .line 84
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    const-string v0, "ColumnWeek"

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->a:Ljava/lang/String;

    .line 33
    const/16 v0, 0x20

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->b:I

    .line 35
    const/16 v0, 0x56

    const/16 v1, 0x13

    const/16 v2, 0x91

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->c:I

    .line 36
    const/16 v0, 0x86

    const/16 v1, 0x1b

    const/16 v2, 0xe5

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->d:I

    .line 37
    const/16 v0, 0xa5

    const/16 v1, 0x3f

    invoke-static {v3, v0, v1, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->e:I

    .line 39
    const/16 v0, 0xf2

    const/16 v1, 0xf3

    invoke-static {v3, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->f:I

    .line 41
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->c:I

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->g:I

    .line 43
    const/16 v0, 0xa6

    invoke-static {v3, v4, v0, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->h:I

    .line 45
    const/4 v0, 0x3

    const/16 v1, 0xcc

    const/16 v2, 0x9d

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->i:I

    .line 47
    const/16 v0, 0xa7

    invoke-static {v3, v4, v0, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->j:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->u:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->v:Ljava/util/List;

    .line 72
    const/16 v0, 0x1e9a

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->x:I

    .line 73
    const/16 v0, 0x614

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->y:I

    .line 74
    iput v5, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->z:I

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->A:D

    .line 77
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->B:F

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->C:F

    .line 80
    iput v5, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->D:I

    .line 85
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/view/ColumnWeek;->a(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/16 v6, 0x23

    const/4 v5, 0x0

    const/16 v4, 0xf5

    const/16 v3, 0xff

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const-string v0, "ColumnWeek"

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->a:Ljava/lang/String;

    .line 33
    const/16 v0, 0x20

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->b:I

    .line 35
    const/16 v0, 0x56

    const/16 v1, 0x13

    const/16 v2, 0x91

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->c:I

    .line 36
    const/16 v0, 0x86

    const/16 v1, 0x1b

    const/16 v2, 0xe5

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->d:I

    .line 37
    const/16 v0, 0xa5

    const/16 v1, 0x3f

    invoke-static {v3, v0, v1, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->e:I

    .line 39
    const/16 v0, 0xf2

    const/16 v1, 0xf3

    invoke-static {v3, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->f:I

    .line 41
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->c:I

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->g:I

    .line 43
    const/16 v0, 0xa6

    invoke-static {v3, v4, v0, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->h:I

    .line 45
    const/4 v0, 0x3

    const/16 v1, 0xcc

    const/16 v2, 0x9d

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->i:I

    .line 47
    const/16 v0, 0xa7

    invoke-static {v3, v4, v0, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->j:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->u:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->v:Ljava/util/List;

    .line 72
    const/16 v0, 0x1e9a

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->x:I

    .line 73
    const/16 v0, 0x614

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->y:I

    .line 74
    iput v5, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->z:I

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->A:D

    .line 77
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->B:F

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->C:F

    .line 80
    iput v5, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->D:I

    .line 90
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/view/ColumnWeek;->a(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    const-string v0, ""

    .line 142
    packed-switch p1, :pswitch_data_0

    .line 168
    :goto_0
    return-object v0

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->w:Landroid/content/Context;

    const v1, 0x7f07016b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->w:Landroid/content/Context;

    const v1, 0x7f07027d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 150
    :pswitch_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->w:Landroid/content/Context;

    const v1, 0x7f0702d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 153
    :pswitch_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->w:Landroid/content/Context;

    const v1, 0x7f07026d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    :pswitch_4
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->w:Landroid/content/Context;

    const v1, 0x7f07010a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :pswitch_5
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->w:Landroid/content/Context;

    const v1, 0x7f0701f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 162
    :pswitch_6
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->w:Landroid/content/Context;

    const v1, 0x7f070235

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 109
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->w:Landroid/content/Context;

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->k:Landroid/graphics/Paint;

    .line 112
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->k:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 114
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->l:Landroid/graphics/Paint;

    .line 117
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->l:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->m:Landroid/graphics/Paint;

    .line 123
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->m:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 126
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->n:Landroid/graphics/Paint;

    .line 129
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 130
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 132
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->o:Landroid/graphics/Paint;

    .line 133
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->o:Landroid/graphics/Paint;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/yf/smart/weloopx/view/ColumnWeek;->b(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 137
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/view/ColumnWeek;->b(I)F

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->B:F

    .line 138
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 173
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->B:F

    .line 174
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/view/ColumnWeek;->b(I)F

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->C:F

    .line 175
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->p:F

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->r:F

    .line 176
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->B:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    .line 177
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->C:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    .line 178
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->A:D

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->s:F

    .line 180
    const/4 v0, 0x1

    move v6, v0

    :goto_0
    const/4 v0, 0x7

    if-gt v6, v0, :cond_0

    .line 181
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->r:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    int-to-float v1, v6

    mul-float/2addr v1, v0

    .line 182
    const/4 v2, 0x0

    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    iget v3, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->B:F

    add-float/2addr v0, v3

    iget v3, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->C:F

    sub-float v4, v0, v3

    iget-object v5, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->l:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 180
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    const/4 v1, 0x0

    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    iget v2, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->B:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->C:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->p:F

    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    iget v4, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->B:F

    add-float/2addr v0, v4

    iget v4, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->C:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->m:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 191
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 195
    if-lez v2, :cond_2

    .line 197
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 198
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/CalorieItem;

    .line 199
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->getCalorie()D

    move-result-wide v4

    double-to-float v0, v4

    .line 201
    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->D:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->r:F

    mul-float/2addr v3, v4

    .line 202
    iget v4, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    iget v5, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->s:F

    mul-float/2addr v0, v5

    sub-float v0, v4, v0

    iget v4, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->B:F

    add-float/2addr v0, v4

    .line 203
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->D:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->r:F

    mul-float/2addr v4, v5

    .line 204
    iget v5, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    iget v6, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->B:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->C:F

    sub-float/2addr v5, v6

    .line 206
    const/4 v6, 0x0

    cmpg-float v6, v0, v6

    if-gez v6, :cond_1

    .line 207
    const/4 v0, 0x0

    .line 210
    :cond_1
    iget-object v6, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->w:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020169

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 212
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 213
    iput v3, v7, Landroid/graphics/RectF;->left:F

    .line 214
    iput v4, v7, Landroid/graphics/RectF;->right:F

    .line 215
    iput v5, v7, Landroid/graphics/RectF;->bottom:F

    .line 216
    iput v0, v7, Landroid/graphics/RectF;->top:F

    .line 217
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 197
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->m:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 225
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 226
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 227
    const/4 v6, 0x0

    .line 228
    const/4 v2, 0x0

    .line 231
    const/4 v0, 0x0

    move v7, v0

    move v8, v4

    :goto_2
    const/16 v0, 0x9

    if-ge v7, v0, :cond_6

    .line 232
    add-int/lit8 v0, v7, 0x1

    if-le v0, v9, :cond_3

    .line 234
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->r:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v0, v3

    int-to-float v3, v7

    mul-float/2addr v3, v0

    .line 235
    iget-object v5, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->m:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v4, v2

    move v0, v6

    .line 231
    :goto_3
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v2, v4

    move v6, v0

    move v8, v4

    move v1, v3

    goto :goto_2

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->v:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/CalorieItem;

    .line 239
    iget v2, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    float-to-double v2, v2

    iget v4, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->s:F

    float-to-double v4, v4

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->getCalorieGoal()D

    move-result-wide v10

    mul-double/2addr v4, v10

    sub-double/2addr v2, v4

    double-to-float v0, v2

    .line 241
    iget v2, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->B:F

    add-float v4, v0, v2

    .line 242
    const/4 v0, 0x0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_4

    const/high16 v4, 0x40a00000    # 5.0f

    .line 243
    :cond_4
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->r:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    int-to-float v2, v7

    mul-float v3, v0, v2

    .line 244
    if-eqz v7, :cond_5

    .line 245
    iget-object v5, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->m:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v0, v6

    goto :goto_3

    :cond_5
    move v0, v4

    .line 248
    goto :goto_3

    .line 255
    :cond_6
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/ColumnWeek;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x42200000    # 40.0f

    add-float/2addr v2, v6

    iget-object v3, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 258
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->o:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->o:Landroid/graphics/Paint;

    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/yf/smart/weloopx/view/ColumnWeek;->b(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 260
    const/4 v0, 0x1

    :goto_4
    const/4 v1, 0x7

    if-gt v0, v1, :cond_7

    .line 261
    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->r:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    mul-float/2addr v1, v2

    .line 262
    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/view/ColumnWeek;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {p0, v3}, Lcom/yf/smart/weloopx/view/ColumnWeek;->b(I)F

    move-result v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    iget v4, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->C:F

    sub-float/2addr v3, v4

    const/16 v4, 0x12

    invoke-direct {p0, v4}, Lcom/yf/smart/weloopx/view/ColumnWeek;->b(I)F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 265
    :cond_7
    return-void
.end method

.method private b(I)F
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->w:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 382
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

.method private b(Landroid/graphics/Canvas;)V
    .locals 16

    .prologue
    .line 268
    const/high16 v1, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iput v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->B:F

    .line 269
    const/16 v1, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/view/ColumnWeek;->b(I)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->C:F

    .line 270
    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->B:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    .line 271
    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->C:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    .line 272
    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->p:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->r:F

    .line 273
    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->t:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->s:F

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColumnWeek \u5355\u4f4d\u5bbd\u5ea6 widthCompany= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->r:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff0c heightCompany = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->s:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->l:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0xc9

    const/16 v4, 0xcf

    const/16 v5, 0xd5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    const/4 v1, 0x1

    move v7, v1

    :goto_0
    const/4 v1, 0x7

    if-gt v7, v1, :cond_0

    .line 280
    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->r:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    int-to-float v2, v7

    mul-float/2addr v2, v1

    .line 281
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->B:F

    add-float/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->C:F

    sub-float v5, v1, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->l:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 279
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    .line 286
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->B:F

    add-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->C:F

    sub-float v3, v1, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->p:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->B:F

    add-float/2addr v1, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->C:F

    sub-float v5, v1, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->m:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    .line 293
    if-lez v12, :cond_1

    .line 295
    const/4 v1, 0x0

    move v11, v1

    :goto_1
    if-ge v11, v12, :cond_1

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->u:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/SleepItem;

    .line 297
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getDeepSleepMinutes()I

    move-result v13

    .line 298
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getShallowSleepMinutes()I

    move-result v14

    .line 299
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getWakeMinutes()I

    move-result v15

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->n:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->c:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    mul-int/lit8 v1, v11, 0x4

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->D:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->r:F

    mul-float/2addr v2, v1

    .line 303
    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    int-to-float v3, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->s:F

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->B:F

    add-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->C:F

    sub-float v3, v1, v3

    .line 304
    mul-int/lit8 v1, v11, 0x4

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->D:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v1, v4

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->r:F

    mul-float/2addr v4, v1

    .line 305
    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->B:F

    add-float/2addr v1, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->C:F

    sub-float v5, v1, v5

    .line 310
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->n:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->n:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->d:I

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    int-to-float v5, v13

    move-object/from16 v0, p0

    iget v6, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->s:F

    mul-float/2addr v5, v6

    sub-float/2addr v1, v5

    int-to-float v5, v14

    move-object/from16 v0, p0

    iget v6, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->s:F

    mul-float/2addr v5, v6

    sub-float/2addr v1, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->B:F

    add-float v7, v1, v5

    .line 319
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->n:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v6, v2

    move v8, v4

    move v9, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->n:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->e:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    int-to-float v3, v13

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->s:F

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->s:F

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    int-to-float v3, v15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->s:F

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->B:F

    add-float/2addr v3, v1

    .line 329
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->n:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 295
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto/16 :goto_1

    .line 336
    :cond_1
    const/high16 v1, 0x43f00000    # 480.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->s:F

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->B:F

    sub-float v2, v1, v2

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->m:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->m:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->h:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->m:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 340
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 341
    const/16 v4, 0xa

    .line 342
    move-object/from16 v0, p0

    iget v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    sub-float/2addr v1, v2

    .line 343
    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    if-gez v5, :cond_2

    .line 344
    const/high16 v1, 0x41a00000    # 20.0f

    .line 346
    :cond_2
    int-to-float v5, v4

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 347
    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->p:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    sub-float v2, v6, v2

    invoke-virtual {v3, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 348
    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x4

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-direct {v2, v5, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 350
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->m:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->m:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/yf/smart/weloopx/view/ColumnWeek;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v4

    const/high16 v4, 0x42200000    # 40.0f

    add-float/2addr v1, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->o:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->o:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->o:Landroid/graphics/Paint;

    const/16 v2, 0xf

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/yf/smart/weloopx/view/ColumnWeek;->b(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 358
    const/4 v1, 0x1

    :goto_2
    const/4 v2, 0x7

    if-gt v1, v2, :cond_3

    .line 359
    move-object/from16 v0, p0

    iget v2, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->r:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    .line 360
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/view/ColumnWeek;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/yf/smart/weloopx/view/ColumnWeek;->b(I)F

    move-result v4

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->C:F

    sub-float/2addr v4, v5

    const/16 v5, 0x12

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/yf/smart/weloopx/view/ColumnWeek;->b(I)F

    move-result v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yf/smart/weloopx/view/ColumnWeek;->o:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 363
    :cond_3
    return-void

    .line 348
    :array_0
    .array-data 4
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 96
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/ColumnWeek;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->p:F

    .line 97
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/ColumnWeek;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->q:F

    .line 99
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->z:I

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->x:I

    if-ne v0, v1, :cond_0

    .line 100
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/view/ColumnWeek;->b(Landroid/graphics/Canvas;)V

    .line 103
    :cond_0
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->z:I

    iget v1, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->y:I

    if-ne v0, v1, :cond_1

    .line 104
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/view/ColumnWeek;->a(Landroid/graphics/Canvas;)V

    .line 106
    :cond_1
    return-void
.end method

.method public setBaseOrMax(I)V
    .locals 0

    .prologue
    .line 370
    iput p1, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->t:I

    .line 371
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/ColumnWeek;->postInvalidate()V

    .line 372
    return-void
.end method

.method public setListSports(Ljava/util/List;)V
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
    .line 390
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->v:Ljava/util/List;

    .line 391
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->y:I

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->z:I

    .line 392
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/ColumnWeek;->postInvalidate()V

    .line 393
    return-void
.end method

.method public setMaxSportHistory(D)V
    .locals 1

    .prologue
    .line 386
    iput-wide p1, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->A:D

    .line 387
    return-void
.end method

.method public setOffectNum(I)V
    .locals 0

    .prologue
    .line 366
    iput p1, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->D:I

    .line 367
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
    .line 375
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->u:Ljava/util/List;

    .line 376
    iget v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->x:I

    iput v0, p0, Lcom/yf/smart/weloopx/view/ColumnWeek;->z:I

    .line 377
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/view/ColumnWeek;->postInvalidate()V

    .line 378
    return-void
.end method
