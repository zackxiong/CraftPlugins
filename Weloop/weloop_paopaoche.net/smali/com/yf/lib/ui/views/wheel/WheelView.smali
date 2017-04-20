.class public Lcom/yf/lib/ui/views/wheel/WheelView;
.super Landroid/view/View;
.source "ProGuard"


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field a:Z

.field b:Lcom/yf/lib/ui/views/wheel/f$b;

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:F

.field private k:I

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Z

.field private o:Lcom/yf/lib/ui/views/wheel/f;

.field private p:Z

.field private q:I

.field private r:Landroid/widget/LinearLayout;

.field private s:I

.field private t:Lcom/yf/lib/ui/views/wheel/a/a;

.field private u:Lcom/yf/lib/ui/views/wheel/e;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/lib/ui/views/wheel/b;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/lib/ui/views/wheel/d;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/lib/ui/views/wheel/c;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/database/DataSetObserver;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 62
    iput v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->c:I

    .line 65
    const/4 v0, 0x5

    iput v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->d:I

    .line 68
    iput v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->e:I

    .line 74
    iput-boolean v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->g:Z

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->h:Ljava/lang/String;

    .line 76
    iput v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->i:I

    .line 77
    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->j:F

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->k:I

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->n:Z

    .line 93
    iput-boolean v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->a:Z

    .line 105
    new-instance v0, Lcom/yf/lib/ui/views/wheel/e;

    invoke-direct {v0, p0}, Lcom/yf/lib/ui/views/wheel/e;-><init>(Lcom/yf/lib/ui/views/wheel/WheelView;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->u:Lcom/yf/lib/ui/views/wheel/e;

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->v:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->w:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->x:Ljava/util/List;

    .line 218
    new-instance v0, Lcom/yf/lib/ui/views/wheel/h;

    invoke-direct {v0, p0}, Lcom/yf/lib/ui/views/wheel/h;-><init>(Lcom/yf/lib/ui/views/wheel/WheelView;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->b:Lcom/yf/lib/ui/views/wheel/f$b;

    .line 295
    new-instance v0, Lcom/yf/lib/ui/views/wheel/i;

    invoke-direct {v0, p0}, Lcom/yf/lib/ui/views/wheel/i;-><init>(Lcom/yf/lib/ui/views/wheel/WheelView;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->y:Landroid/database/DataSetObserver;

    .line 185
    invoke-direct {p0, p1}, Lcom/yf/lib/ui/views/wheel/WheelView;->a(Landroid/content/Context;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yf/lib/ui/views/wheel/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->c:I

    .line 65
    const/4 v0, 0x5

    iput v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->d:I

    .line 68
    iput v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->e:I

    .line 74
    iput-boolean v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->g:Z

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->h:Ljava/lang/String;

    .line 76
    iput v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->i:I

    .line 77
    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->j:F

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->k:I

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->n:Z

    .line 93
    iput-boolean v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->a:Z

    .line 105
    new-instance v0, Lcom/yf/lib/ui/views/wheel/e;

    invoke-direct {v0, p0}, Lcom/yf/lib/ui/views/wheel/e;-><init>(Lcom/yf/lib/ui/views/wheel/WheelView;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->u:Lcom/yf/lib/ui/views/wheel/e;

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->v:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->w:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->x:Ljava/util/List;

    .line 218
    new-instance v0, Lcom/yf/lib/ui/views/wheel/h;

    invoke-direct {v0, p0}, Lcom/yf/lib/ui/views/wheel/h;-><init>(Lcom/yf/lib/ui/views/wheel/WheelView;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->b:Lcom/yf/lib/ui/views/wheel/f$b;

    .line 295
    new-instance v0, Lcom/yf/lib/ui/views/wheel/i;

    invoke-direct {v0, p0}, Lcom/yf/lib/ui/views/wheel/i;-><init>(Lcom/yf/lib/ui/views/wheel/WheelView;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->y:Landroid/database/DataSetObserver;

    .line 117
    sget-object v0, Lcom/yf/lib/R$styleable;->WheelView:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 119
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/yf/lib/ui/views/wheel/WheelView;->a(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    invoke-direct {p0, p1}, Lcom/yf/lib/ui/views/wheel/WheelView;->a(Landroid/content/Context;)V

    .line 124
    return-void

    .line 121
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private a(Landroid/widget/LinearLayout;)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 560
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->e:I

    .line 564
    :cond_0
    iget v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->e:I

    iget v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->d:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->e:I

    mul-int/lit8 v1, v1, 0x0

    div-int/lit8 v1, v1, 0x32

    sub-int/2addr v0, v1

    .line 566
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/yf/lib/ui/views/wheel/WheelView;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->q:I

    return v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yf/lib/R$drawable;->libyf_wheel_val:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->f:Landroid/graphics/drawable/Drawable;

    .line 197
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 198
    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->l:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 199
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->l:Landroid/graphics/drawable/Drawable;

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->m:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 203
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->m:Landroid/graphics/drawable/Drawable;

    .line 205
    :cond_2
    new-instance v0, Lcom/yf/lib/ui/views/wheel/f;

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->b:Lcom/yf/lib/ui/views/wheel/f$b;

    invoke-direct {v0, v1, v2}, Lcom/yf/lib/ui/views/wheel/f;-><init>(Landroid/content/Context;Lcom/yf/lib/ui/views/wheel/f$b;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->o:Lcom/yf/lib/ui/views/wheel/f;

    .line 206
    return-void

    .line 197
    :array_0
    .array-data 4
        -0xeeeeef
        0xaaaaaa
        0xaaaaaa
    .end array-data
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 698
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getItemHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 699
    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v4, v4, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 700
    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 702
    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getHeight()I

    move-result v2

    sub-int v0, v2, v0

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 703
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 704
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;IFI)V
    .locals 5

    .prologue
    .line 733
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 734
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 735
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 736
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 737
    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 738
    invoke-virtual {v3, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 739
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 740
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 741
    div-int/lit8 v4, v1, 0x2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, p3

    int-to-float v1, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, p2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 742
    return-void
.end method

.method static synthetic a(Lcom/yf/lib/ui/views/wheel/WheelView;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/yf/lib/ui/views/wheel/WheelView;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/yf/lib/ui/views/wheel/WheelView;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/yf/lib/ui/views/wheel/WheelView;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->q:I

    return p1
.end method

.method static synthetic b(Lcom/yf/lib/ui/views/wheel/WheelView;)Lcom/yf/lib/ui/views/wheel/f;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->o:Lcom/yf/lib/ui/views/wheel/f;

    return-object v0
.end method

.method private b(I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 781
    iget v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->q:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->q:I

    .line 783
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getItemHeight()I

    move-result v4

    .line 784
    iget v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->q:I

    div-int v3, v0, v4

    .line 786
    iget v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->c:I

    sub-int v2, v0, v3

    .line 787
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->t:Lcom/yf/lib/ui/views/wheel/a/a;

    invoke-interface {v0}, Lcom/yf/lib/ui/views/wheel/a/a;->a()I

    move-result v5

    .line 789
    iget v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->q:I

    rem-int/2addr v0, v4

    .line 790
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v7, v4, 0x2

    if-gt v6, v7, :cond_0

    move v0, v1

    .line 793
    :cond_0
    iget-boolean v6, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->a:Z

    if-eqz v6, :cond_4

    if-lez v5, :cond_4

    .line 794
    if-lez v0, :cond_1

    .line 795
    add-int/lit8 v2, v2, -0x1

    .line 796
    add-int/lit8 v3, v3, 0x1

    move v0, v2

    move v2, v3

    .line 802
    :goto_0
    if-gez v0, :cond_2

    .line 803
    add-int/2addr v0, v5

    goto :goto_0

    .line 797
    :cond_1
    if-gez v0, :cond_b

    .line 798
    add-int/lit8 v2, v2, 0x1

    .line 799
    add-int/lit8 v3, v3, -0x1

    move v0, v2

    move v2, v3

    goto :goto_0

    .line 805
    :cond_2
    rem-int/2addr v0, v5

    .line 823
    :goto_1
    iget v3, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->q:I

    .line 824
    iget v5, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->c:I

    if-eq v0, v5, :cond_8

    .line 825
    invoke-virtual {p0, v0, v1}, Lcom/yf/lib/ui/views/wheel/WheelView;->a(IZ)V

    .line 831
    :goto_2
    mul-int v0, v2, v4

    sub-int v0, v3, v0

    iput v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->q:I

    .line 832
    iget v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->q:I

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getHeight()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 833
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_9

    .line 834
    iput v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->q:I

    .line 839
    :cond_3
    :goto_3
    return-void

    .line 808
    :cond_4
    if-gez v2, :cond_5

    .line 809
    iget v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->c:I

    move v2, v0

    move v0, v1

    .line 810
    goto :goto_1

    .line 811
    :cond_5
    if-lt v2, v5, :cond_6

    .line 812
    iget v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->c:I

    sub-int/2addr v0, v5

    add-int/lit8 v2, v0, 0x1

    .line 813
    add-int/lit8 v0, v5, -0x1

    goto :goto_1

    .line 814
    :cond_6
    if-lez v2, :cond_7

    if-lez v0, :cond_7

    .line 815
    add-int/lit8 v0, v2, -0x1

    .line 816
    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    .line 817
    :cond_7
    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_a

    if-gez v0, :cond_a

    .line 818
    add-int/lit8 v0, v2, 0x1

    .line 819
    add-int/lit8 v2, v3, -0x1

    goto :goto_1

    .line 827
    :cond_8
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->invalidate()V

    goto :goto_2

    .line 836
    :cond_9
    iget v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->q:I

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getHeight()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->q:I

    goto :goto_3

    :cond_a
    move v0, v2

    move v2, v3

    goto :goto_1

    :cond_b
    move v0, v2

    move v2, v3

    goto :goto_0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 711
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 713
    iget v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->c:I

    iget v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->s:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getItemHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getItemHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 714
    const/high16 v1, 0x41200000    # 10.0f

    neg-int v0, v0

    iget v2, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->q:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 716
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 718
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 719
    return-void
.end method

.method private b(IZ)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 973
    invoke-direct {p0, p1}, Lcom/yf/lib/ui/views/wheel/WheelView;->d(I)Landroid/view/View;

    move-result-object v1

    .line 974
    if-eqz v1, :cond_0

    .line 975
    if-eqz p2, :cond_1

    .line 976
    iget-object v2, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 981
    :goto_0
    const/4 v0, 0x1

    .line 984
    :cond_0
    return v0

    .line 978
    :cond_1
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private c(II)I
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 594
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 596
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 598
    if-ne p2, v4, :cond_1

    .line 611
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    add-int/lit8 v1, p1, -0x14

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 614
    return p1

    .line 601
    :cond_1
    add-int/lit8 v0, v0, 0x14

    .line 604
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 606
    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_2

    if-lt p1, v0, :cond_0

    :cond_2
    move p1, v0

    goto :goto_0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 727
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getItemHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-double v2, v1

    const-wide v4, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 728
    iget-object v2, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->f:Landroid/graphics/drawable/Drawable;

    const/16 v3, -0xa

    sub-int v4, v0, v1

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v0, v1

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 729
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 730
    return-void
.end method

.method private c(I)Z
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->t:Lcom/yf/lib/ui/views/wheel/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->t:Lcom/yf/lib/ui/views/wheel/a/a;

    invoke-interface {v0}, Lcom/yf/lib/ui/views/wheel/a/a;->a()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->a:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->t:Lcom/yf/lib/ui/views/wheel/a/a;

    invoke-interface {v0}, Lcom/yf/lib/ui/views/wheel/a/a;->a()I

    move-result v0

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/yf/lib/ui/views/wheel/WheelView;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->p:Z

    return v0
.end method

.method private d(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->t:Lcom/yf/lib/ui/views/wheel/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->t:Lcom/yf/lib/ui/views/wheel/a/a;

    invoke-interface {v0}, Lcom/yf/lib/ui/views/wheel/a/a;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 1004
    :cond_0
    const/4 v0, 0x0

    .line 1016
    :goto_0
    return-object v0

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->t:Lcom/yf/lib/ui/views/wheel/a/a;

    invoke-interface {v0}, Lcom/yf/lib/ui/views/wheel/a/a;->a()I

    move-result v0

    .line 1007
    invoke-direct {p0, p1}, Lcom/yf/lib/ui/views/wheel/WheelView;->c(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1008
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->t:Lcom/yf/lib/ui/views/wheel/a/a;

    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->u:Lcom/yf/lib/ui/views/wheel/e;

    invoke-virtual {v1}, Lcom/yf/lib/ui/views/wheel/e;->b()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1, v2}, Lcom/yf/lib/ui/views/wheel/a/a;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1010
    :cond_2
    :goto_1
    if-gez p1, :cond_3

    .line 1011
    add-int/2addr p1, v0

    goto :goto_1

    .line 1015
    :cond_3
    rem-int v0, p1, v0

    .line 1016
    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->t:Lcom/yf/lib/ui/views/wheel/a/a;

    iget-object v2, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->u:Lcom/yf/lib/ui/views/wheel/e;

    invoke-virtual {v2}, Lcom/yf/lib/ui/views/wheel/e;->a()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    invoke-interface {v1, v0, v2, v3}, Lcom/yf/lib/ui/views/wheel/a/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private d(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 669
    add-int/lit8 v0, p1, -0x14

    .line 671
    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v2, v0, p2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 672
    return-void
.end method

.method private d()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 888
    .line 889
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getItemsRange()Lcom/yf/lib/ui/views/wheel/a;

    move-result-object v4

    .line 890
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 891
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->u:Lcom/yf/lib/ui/views/wheel/e;

    iget-object v3, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->s:I

    invoke-virtual {v0, v3, v5, v4}, Lcom/yf/lib/ui/views/wheel/e;->a(Landroid/widget/LinearLayout;ILcom/yf/lib/ui/views/wheel/a;)I

    move-result v3

    .line 892
    iget v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->s:I

    if-eq v0, v3, :cond_4

    move v0, v1

    .line 893
    :goto_0
    iput v3, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->s:I

    .line 899
    :goto_1
    if-nez v0, :cond_1

    .line 900
    iget v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->s:I

    invoke-virtual {v4}, Lcom/yf/lib/ui/views/wheel/a;->a()I

    move-result v3

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    invoke-virtual {v4}, Lcom/yf/lib/ui/views/wheel/a;->c()I

    move-result v3

    if-eq v0, v3, :cond_6

    :cond_0
    move v0, v1

    .line 903
    :cond_1
    :goto_2
    iget v3, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->s:I

    invoke-virtual {v4}, Lcom/yf/lib/ui/views/wheel/a;->a()I

    move-result v5

    if-le v3, v5, :cond_8

    iget v3, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->s:I

    invoke-virtual {v4}, Lcom/yf/lib/ui/views/wheel/a;->b()I

    move-result v5

    if-gt v3, v5, :cond_8

    .line 904
    iget v3, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->s:I

    add-int/lit8 v3, v3, -0x1

    :goto_3
    invoke-virtual {v4}, Lcom/yf/lib/ui/views/wheel/a;->a()I

    move-result v5

    if-lt v3, v5, :cond_2

    .line 905
    invoke-direct {p0, v3, v1}, Lcom/yf/lib/ui/views/wheel/WheelView;->b(IZ)Z

    move-result v5

    if-nez v5, :cond_7

    .line 914
    :cond_2
    :goto_4
    iget v3, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->s:I

    .line 915
    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    :goto_5
    invoke-virtual {v4}, Lcom/yf/lib/ui/views/wheel/a;->c()I

    move-result v5

    if-ge v1, v5, :cond_9

    .line 916
    iget v5, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->s:I

    add-int/2addr v5, v1

    invoke-direct {p0, v5, v2}, Lcom/yf/lib/ui/views/wheel/WheelView;->b(IZ)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-nez v5, :cond_3

    .line 917
    add-int/lit8 v3, v3, 0x1

    .line 915
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    move v0, v2

    .line 892
    goto :goto_0

    .line 895
    :cond_5
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->f()V

    move v0, v1

    .line 896
    goto :goto_1

    :cond_6
    move v0, v2

    .line 900
    goto :goto_2

    .line 908
    :cond_7
    iput v3, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->s:I

    .line 904
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 911
    :cond_8
    invoke-virtual {v4}, Lcom/yf/lib/ui/views/wheel/a;->a()I

    move-result v1

    iput v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->s:I

    goto :goto_4

    .line 920
    :cond_9
    iput v3, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->s:I

    .line 922
    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 929
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/yf/lib/ui/views/wheel/WheelView;->c(II)I

    .line 931
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yf/lib/ui/views/wheel/WheelView;->d(II)V

    .line 933
    :cond_0
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 939
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 940
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    .line 941
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 942
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 944
    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 951
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 952
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->u:Lcom/yf/lib/ui/views/wheel/e;

    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->s:I

    new-instance v3, Lcom/yf/lib/ui/views/wheel/a;

    invoke-direct {v3}, Lcom/yf/lib/ui/views/wheel/a;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/yf/lib/ui/views/wheel/e;->a(Landroid/widget/LinearLayout;ILcom/yf/lib/ui/views/wheel/a;)I

    .line 959
    :goto_0
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->t:Lcom/yf/lib/ui/views/wheel/a/a;

    invoke-interface {v0}, Lcom/yf/lib/ui/views/wheel/a/a;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 960
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/yf/lib/ui/views/wheel/WheelView;->b(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 961
    iput v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->s:I

    .line 959
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 954
    :cond_1
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->f()V

    goto :goto_0

    .line 964
    :cond_2
    return-void
.end method

.method private getItemHeight()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 574
    iget v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->e:I

    if-eqz v0, :cond_0

    .line 575
    iget v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->e:I

    .line 583
    :goto_0
    return v0

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->e:I

    .line 580
    iget v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->e:I

    goto :goto_0

    .line 583
    :cond_1
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->d:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method private getItemsRange()Lcom/yf/lib/ui/views/wheel/a;
    .locals 6

    .prologue
    .line 856
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getItemHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 857
    const/4 v0, 0x0

    .line 879
    :goto_0
    return-object v0

    .line 860
    :cond_0
    iget v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->c:I

    .line 861
    const/4 v0, 0x1

    .line 863
    :goto_1
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getItemHeight()I

    move-result v2

    mul-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 864
    add-int/lit8 v1, v1, -0x1

    .line 865
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 868
    :cond_1
    iget v2, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->q:I

    if-eqz v2, :cond_3

    .line 869
    iget v2, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->q:I

    if-lez v2, :cond_2

    .line 870
    add-int/lit8 v1, v1, -0x1

    .line 872
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 875
    iget v2, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->q:I

    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getItemHeight()I

    move-result v3

    div-int/2addr v2, v3

    .line 876
    sub-int/2addr v1, v2

    .line 877
    int-to-double v4, v0

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 879
    :cond_3
    new-instance v2, Lcom/yf/lib/ui/views/wheel/a;

    invoke-direct {v2, v1, v0}, Lcom/yf/lib/ui/views/wheel/a;-><init>(II)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/ui/views/wheel/d;

    .line 373
    invoke-interface {v0, p0}, Lcom/yf/lib/ui/views/wheel/d;->a(Lcom/yf/lib/ui/views/wheel/WheelView;)V

    goto :goto_0

    .line 375
    :cond_0
    return-void
.end method

.method protected a(I)V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/ui/views/wheel/c;

    .line 407
    invoke-interface {v0, p0, p1}, Lcom/yf/lib/ui/views/wheel/c;->a(Lcom/yf/lib/ui/views/wheel/WheelView;I)V

    goto :goto_0

    .line 409
    :cond_0
    return-void
.end method

.method protected a(II)V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/ui/views/wheel/b;

    .line 348
    invoke-interface {v0, p0, p1, p2}, Lcom/yf/lib/ui/views/wheel/b;->a(Lcom/yf/lib/ui/views/wheel/WheelView;II)V

    goto :goto_0

    .line 350
    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 427
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->t:Lcom/yf/lib/ui/views/wheel/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->t:Lcom/yf/lib/ui/views/wheel/a/a;

    invoke-interface {v0}, Lcom/yf/lib/ui/views/wheel/a/a;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->t:Lcom/yf/lib/ui/views/wheel/a/a;

    invoke-interface {v0}, Lcom/yf/lib/ui/views/wheel/a/a;->a()I

    move-result v0

    .line 432
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_4

    .line 433
    :cond_2
    iget-boolean v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->a:Z

    if-eqz v1, :cond_0

    .line 434
    :goto_1
    if-gez p1, :cond_3

    .line 435
    add-int/2addr p1, v0

    goto :goto_1

    .line 437
    :cond_3
    rem-int/2addr p1, v0

    .line 442
    :cond_4
    iget v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->c:I

    if-eq p1, v1, :cond_0

    .line 443
    if-eqz p2, :cond_6

    .line 444
    iget v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->c:I

    sub-int v1, p1, v1

    .line 445
    iget-boolean v2, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->a:Z

    if-eqz v2, :cond_7

    .line 446
    iget v2, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->c:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->c:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v0, v2

    .line 447
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 448
    if-gez v1, :cond_5

    .line 451
    :goto_2
    invoke-virtual {p0, v0, v3}, Lcom/yf/lib/ui/views/wheel/WheelView;->b(II)V

    goto :goto_0

    .line 448
    :cond_5
    neg-int v0, v0

    goto :goto_2

    .line 453
    :cond_6
    iput v3, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->q:I

    .line 455
    iget v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->c:I

    .line 456
    iput p1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->c:I

    .line 458
    iget v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->c:I

    invoke-virtual {p0, v0, v1}, Lcom/yf/lib/ui/views/wheel/WheelView;->a(II)V

    .line 460
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->invalidate()V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method a(Landroid/content/res/TypedArray;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    sget v0, Lcom/yf/lib/R$styleable;->WheelView_libyf_WheelView_centerDrawable:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget v0, Lcom/yf/lib/R$styleable;->WheelView_libyf_WheelView_centerDrawable:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->f:Landroid/graphics/drawable/Drawable;

    .line 131
    :cond_0
    sget v0, Lcom/yf/lib/R$styleable;->WheelView_libyf_WheelView_shadowColors:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    sget v0, Lcom/yf/lib/R$styleable;->WheelView_libyf_WheelView_shadowColors:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 134
    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 136
    invoke-virtual {p0, v0}, Lcom/yf/lib/ui/views/wheel/WheelView;->setShadowColor([I)V

    .line 140
    :cond_1
    sget v0, Lcom/yf/lib/R$styleable;->WheelView_libyf_WheelView_topShadow:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    sget v0, Lcom/yf/lib/R$styleable;->WheelView_libyf_WheelView_topShadow:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->l:Landroid/graphics/drawable/Drawable;

    .line 143
    :cond_2
    sget v0, Lcom/yf/lib/R$styleable;->WheelView_libyf_WheelView_bottomShadow:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    sget v0, Lcom/yf/lib/R$styleable;->WheelView_libyf_WheelView_bottomShadow:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->m:Landroid/graphics/drawable/Drawable;

    .line 148
    :cond_3
    sget v0, Lcom/yf/lib/R$styleable;->WheelView_libyf_WheelView_bg:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 149
    sget v0, Lcom/yf/lib/R$styleable;->WheelView_libyf_WheelView_bg:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/lib/ui/views/wheel/WheelView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    :cond_4
    :goto_0
    sget v0, Lcom/yf/lib/R$styleable;->WheelView_libyf_WheelView_unitText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 157
    sget v0, Lcom/yf/lib/R$styleable;->WheelView_libyf_WheelView_unitText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->h:Ljava/lang/String;

    .line 159
    :cond_5
    sget v0, Lcom/yf/lib/R$styleable;->WheelView_libyf_WheelView_unitTextSize:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 160
    sget v0, Lcom/yf/lib/R$styleable;->WheelView_libyf_WheelView_unitTextSize:I

    const/16 v1, 0x3c

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->j:F

    .line 162
    :cond_6
    sget v0, Lcom/yf/lib/R$styleable;->WheelView_libyf_WheelView_unitTextColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 163
    sget v0, Lcom/yf/lib/R$styleable;->WheelView_libyf_WheelView_unitTextColor:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->k:I

    .line 165
    :cond_7
    sget v0, Lcom/yf/lib/R$styleable;->WheelView_libyf_WheelView_unitMarginStart:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 166
    sget v0, Lcom/yf/lib/R$styleable;->WheelView_libyf_WheelView_unitMarginStart:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->i:I

    .line 168
    :cond_8
    sget v0, Lcom/yf/lib/R$styleable;->WheelView_libyf_WheelView_unitEnable:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 169
    sget v0, Lcom/yf/lib/R$styleable;->WheelView_libyf_WheelView_unitEnable:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->g:Z

    .line 171
    :cond_9
    return-void

    .line 151
    :cond_a
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_4

    .line 152
    sget v0, Lcom/yf/lib/R$drawable;->libyf_wheel_bg:I

    invoke-virtual {p0, v0}, Lcom/yf/lib/ui/views/wheel/WheelView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 4

    .prologue
    .line 538
    if-eqz p1, :cond_2

    .line 539
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->u:Lcom/yf/lib/ui/views/wheel/e;

    invoke-virtual {v0}, Lcom/yf/lib/ui/views/wheel/e;->c()V

    .line 540
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 543
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->q:I

    .line 549
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->invalidate()V

    .line 550
    return-void

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->u:Lcom/yf/lib/ui/views/wheel/e;

    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->s:I

    new-instance v3, Lcom/yf/lib/ui/views/wheel/a;

    invoke-direct {v3}, Lcom/yf/lib/ui/views/wheel/a;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/yf/lib/ui/views/wheel/e;->a(Landroid/widget/LinearLayout;ILcom/yf/lib/ui/views/wheel/a;)I

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/ui/views/wheel/d;

    .line 382
    invoke-interface {v0, p0}, Lcom/yf/lib/ui/views/wheel/d;->b(Lcom/yf/lib/ui/views/wheel/WheelView;)V

    goto :goto_0

    .line 384
    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 2

    .prologue
    .line 847
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getItemHeight()I

    move-result v0

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->q:I

    sub-int/2addr v0, v1

    .line 848
    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->o:Lcom/yf/lib/ui/views/wheel/f;

    invoke-virtual {v1, v0, p2}, Lcom/yf/lib/ui/views/wheel/f;->a(II)V

    .line 849
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->a:Z

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->c:I

    return v0
.end method

.method public getViewAdapter()Lcom/yf/lib/ui/views/wheel/a/a;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->t:Lcom/yf/lib/ui/views/wheel/a/a;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->d:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 676
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 678
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->t:Lcom/yf/lib/ui/views/wheel/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->t:Lcom/yf/lib/ui/views/wheel/a/a;

    invoke-interface {v0}, Lcom/yf/lib/ui/views/wheel/a/a;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 679
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->e()V

    .line 681
    invoke-direct {p0, p1}, Lcom/yf/lib/ui/views/wheel/WheelView;->b(Landroid/graphics/Canvas;)V

    .line 682
    invoke-direct {p0, p1}, Lcom/yf/lib/ui/views/wheel/WheelView;->c(Landroid/graphics/Canvas;)V

    .line 683
    iget-boolean v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->g:Z

    if-eqz v0, :cond_0

    .line 684
    iget-object v2, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->h:Ljava/lang/String;

    iget v3, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->i:I

    iget v4, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->j:F

    iget v5, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->k:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/yf/lib/ui/views/wheel/WheelView;->a(Landroid/graphics/Canvas;Ljava/lang/String;IFI)V

    .line 688
    :cond_0
    iget-boolean v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->n:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/yf/lib/ui/views/wheel/WheelView;->a(Landroid/graphics/Canvas;)V

    .line 691
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 655
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/yf/lib/ui/views/wheel/WheelView;->d(II)V

    .line 656
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    .line 621
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 622
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 623
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 624
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 626
    iget v4, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->z:I

    if-ne v4, v3, :cond_0

    iget v4, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->A:I

    if-ne v4, v0, :cond_0

    .line 628
    iget v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->B:I

    iget v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->C:I

    invoke-virtual {p0, v0, v1}, Lcom/yf/lib/ui/views/wheel/WheelView;->setMeasuredDimension(II)V

    .line 651
    :goto_0
    return-void

    .line 631
    :cond_0
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->g()V

    .line 632
    iput v3, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->z:I

    .line 633
    iput v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->A:I

    .line 635
    invoke-direct {p0, v3, v1}, Lcom/yf/lib/ui/views/wheel/WheelView;->c(II)I

    move-result v3

    .line 638
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_1

    .line 648
    :goto_1
    iput v3, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->B:I

    .line 649
    iput v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->C:I

    .line 650
    invoke-virtual {p0, v3, v0}, Lcom/yf/lib/ui/views/wheel/WheelView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 641
    :cond_1
    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->r:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/yf/lib/ui/views/wheel/WheelView;->a(Landroid/widget/LinearLayout;)I

    move-result v1

    .line 643
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_2

    .line 644
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 746
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getViewAdapter()Lcom/yf/lib/ui/views/wheel/a/a;

    move-result-object v1

    if-nez v1, :cond_1

    .line 773
    :cond_0
    :goto_0
    return v0

    .line 750
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 773
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->o:Lcom/yf/lib/ui/views/wheel/f;

    invoke-virtual {v0, p1}, Lcom/yf/lib/ui/views/wheel/f;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 752
    :pswitch_0
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 753
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 758
    :pswitch_1
    iget-boolean v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->p:Z

    if-nez v0, :cond_2

    .line 759
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 760
    if-lez v0, :cond_3

    .line 761
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getItemHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 765
    :goto_2
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getItemHeight()I

    move-result v1

    div-int/2addr v0, v1

    .line 766
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->c:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/yf/lib/ui/views/wheel/WheelView;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 767
    iget v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->c:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/yf/lib/ui/views/wheel/WheelView;->a(I)V

    goto :goto_1

    .line 763
    :cond_3
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getItemHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_2

    .line 750
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentItem(I)V
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yf/lib/ui/views/wheel/WheelView;->a(IZ)V

    .line 472
    return-void
.end method

.method public setCyclic(Z)V
    .locals 1

    .prologue
    .line 487
    iput-boolean p1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->a:Z

    .line 488
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yf/lib/ui/views/wheel/WheelView;->a(Z)V

    .line 489
    return-void
.end method

.method public setDrawShadows(Z)V
    .locals 0

    .prologue
    .line 504
    iput-boolean p1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->n:Z

    .line 505
    return-void
.end method

.method public setDrawUnit(Z)V
    .locals 0

    .prologue
    .line 1043
    iput-boolean p1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->g:Z

    .line 1044
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->o:Lcom/yf/lib/ui/views/wheel/f;

    invoke-virtual {v0, p1}, Lcom/yf/lib/ui/views/wheel/f;->a(Landroid/view/animation/Interpolator;)V

    .line 264
    return-void
.end method

.method public setShadowColor([I)V
    .locals 2

    .prologue
    .line 213
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->l:Landroid/graphics/drawable/Drawable;

    .line 214
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->m:Landroid/graphics/drawable/Drawable;

    .line 215
    return-void
.end method

.method public setUnitMarginStart(I)V
    .locals 0

    .prologue
    .line 1027
    iput p1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->i:I

    .line 1028
    return-void
.end method

.method public setUnitText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->h:Ljava/lang/String;

    .line 1032
    return-void
.end method

.method public setUnitTextColor(I)V
    .locals 0

    .prologue
    .line 1035
    iput p1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->k:I

    .line 1036
    return-void
.end method

.method public setUnitTextSize(F)V
    .locals 0

    .prologue
    .line 1039
    iput p1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->j:F

    .line 1040
    return-void
.end method

.method public setViewAdapter(Lcom/yf/lib/ui/views/wheel/a/a;)V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->t:Lcom/yf/lib/ui/views/wheel/a/a;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->t:Lcom/yf/lib/ui/views/wheel/a/a;

    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->y:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/yf/lib/ui/views/wheel/a/a;->b(Landroid/database/DataSetObserver;)V

    .line 317
    :cond_0
    iput-object p1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->t:Lcom/yf/lib/ui/views/wheel/a/a;

    .line 318
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->t:Lcom/yf/lib/ui/views/wheel/a/a;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->t:Lcom/yf/lib/ui/views/wheel/a/a;

    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->y:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/yf/lib/ui/views/wheel/a/a;->a(Landroid/database/DataSetObserver;)V

    .line 322
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/lib/ui/views/wheel/WheelView;->a(Z)V

    .line 323
    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0

    .prologue
    .line 283
    iput p1, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->d:I

    .line 284
    return-void
.end method

.method public setWheelBackground(I)V
    .locals 0

    .prologue
    .line 522
    invoke-virtual {p0, p1}, Lcom/yf/lib/ui/views/wheel/WheelView;->setBackgroundResource(I)V

    .line 523
    return-void
.end method

.method public setWheelForeground(I)V
    .locals 1

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/WheelView;->f:Landroid/graphics/drawable/Drawable;

    .line 531
    return-void
.end method
