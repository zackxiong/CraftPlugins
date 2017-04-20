.class public abstract Lit/sephiroth/android/library/widget/AbsHListView;
.super Lit/sephiroth/android/library/widget/h;
.source "ProGuard"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/widget/AbsHListView$k;,
        Lit/sephiroth/android/library/widget/AbsHListView$l;,
        Lit/sephiroth/android/library/widget/AbsHListView$f;,
        Lit/sephiroth/android/library/widget/AbsHListView$a;,
        Lit/sephiroth/android/library/widget/AbsHListView$j;,
        Lit/sephiroth/android/library/widget/AbsHListView$e;,
        Lit/sephiroth/android/library/widget/AbsHListView$d;,
        Lit/sephiroth/android/library/widget/AbsHListView$b;,
        Lit/sephiroth/android/library/widget/AbsHListView$c;,
        Lit/sephiroth/android/library/widget/AbsHListView$i;,
        Lit/sephiroth/android/library/widget/AbsHListView$n;,
        Lit/sephiroth/android/library/widget/AbsHListView$g;,
        Lit/sephiroth/android/library/widget/AbsHListView$SavedState;,
        Lit/sephiroth/android/library/widget/AbsHListView$m;,
        Lit/sephiroth/android/library/widget/AbsHListView$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lit/sephiroth/android/library/widget/h",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field static final T:Landroid/view/animation/Interpolator;

.field public static final U:[I


# instance fields
.field protected A:I

.field B:I

.field C:I

.field D:I

.field E:I

.field protected F:I

.field G:I

.field H:I

.field protected I:Lit/sephiroth/android/library/widget/AbsHListView$j;

.field protected J:I

.field protected K:Z

.field L:Z

.field protected M:I

.field protected N:I

.field protected O:Ljava/lang/Runnable;

.field protected final P:[Z

.field Q:I

.field R:I

.field protected S:Z

.field a:Lit/sephiroth/android/library/a/a$a;

.field private aA:I

.field private aB:Lit/sephiroth/android/library/widget/AbsHListView$c;

.field private aC:Ljava/lang/Runnable;

.field private aD:Lit/sephiroth/android/library/widget/AbsHListView$b;

.field private aE:Lit/sephiroth/android/library/widget/AbsHListView$i;

.field private aF:Ljava/lang/Runnable;

.field private aG:I

.field private aH:I

.field private aI:Z

.field private aJ:I

.field private aK:I

.field private aL:Ljava/lang/Runnable;

.field private aM:I

.field private aN:I

.field private aO:F

.field private aP:I

.field private aQ:Landroid/support/v4/widget/f;

.field private aR:Landroid/support/v4/widget/f;

.field private aS:I

.field private aT:I

.field private aU:I

.field private aV:Z

.field private aW:I

.field private aX:I

.field private aY:Lit/sephiroth/android/library/widget/AbsHListView$g;

.field private aZ:I

.field private au:Landroid/view/VelocityTracker;

.field private av:Lit/sephiroth/android/library/widget/AbsHListView$e;

.field private aw:Lit/sephiroth/android/library/widget/AbsHListView$h;

.field private ax:Z

.field private ay:Landroid/graphics/Rect;

.field private az:Landroid/view/ContextMenu$ContextMenuInfo;

.field protected b:I

.field private ba:I

.field private bb:I

.field private bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

.field private bd:F

.field public c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:I

.field protected f:Landroid/support/v4/f/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/j",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field g:Landroid/support/v4/f/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/f",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected h:I

.field protected i:Lit/sephiroth/android/library/widget/AbsHListView$a;

.field protected j:Landroid/widget/ListAdapter;

.field k:Z

.field l:Z

.field m:Landroid/graphics/drawable/Drawable;

.field n:I

.field protected o:Landroid/graphics/Rect;

.field protected final p:Lit/sephiroth/android/library/widget/AbsHListView$k;

.field q:I

.field r:I

.field s:I

.field t:I

.field protected u:Landroid/graphics/Rect;

.field protected v:I

.field w:Landroid/view/View;

.field x:Landroid/view/View;

.field protected y:Z

.field protected z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 546
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lit/sephiroth/android/library/widget/AbsHListView;->T:Landroid/view/animation/Interpolator;

    .line 2284
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Lit/sephiroth/android/library/widget/AbsHListView;->U:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 622
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/h;-><init>(Landroid/content/Context;)V

    .line 167
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    .line 201
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    .line 221
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l:Z

    .line 231
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    .line 236
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    .line 241
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$k;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 246
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:I

    .line 251
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r:I

    .line 256
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s:I

    .line 261
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t:I

    .line 266
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    .line 271
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:I

    .line 317
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 348
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:I

    .line 373
    iput-boolean v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ax:Z

    .line 383
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 410
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:I

    .line 455
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aJ:I

    .line 463
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:F

    .line 465
    new-array v0, v3, [Z

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:[Z

    .line 470
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    .line 515
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aU:I

    .line 623
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->y()V

    .line 624
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 627
    const v0, 0x7f010003

    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/AbsHListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 628
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 631
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    .line 201
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    .line 221
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l:Z

    .line 231
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    .line 236
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    .line 241
    new-instance v3, Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-direct {v3, p0}, Lit/sephiroth/android/library/widget/AbsHListView$k;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 246
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:I

    .line 251
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r:I

    .line 256
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s:I

    .line 261
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t:I

    .line 266
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    .line 271
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:I

    .line 317
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 348
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:I

    .line 373
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ax:Z

    .line 383
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 385
    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 410
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:I

    .line 455
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aJ:I

    .line 463
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:F

    .line 465
    new-array v3, v1, [Z

    iput-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:[Z

    .line 470
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    .line 515
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aU:I

    .line 637
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->y()V

    .line 639
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 641
    sget-object v4, Lcom/yf/smart/weloopx/R$styleable;->AbsHListView:[I

    invoke-virtual {v3, p2, v4, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 652
    if-eqz v8, :cond_1

    .line 653
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 654
    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 655
    const/4 v2, 0x6

    invoke-virtual {v8, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 656
    const/4 v2, 0x2

    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 657
    const/4 v2, 0x7

    invoke-virtual {v8, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 658
    const/4 v2, 0x3

    invoke-virtual {v8, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 659
    const/4 v9, 0x5

    invoke-virtual {v8, v9, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 660
    const/4 v9, 0x4

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 661
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 675
    :goto_0
    if-eqz v7, :cond_0

    .line 676
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 679
    :cond_0
    iput-boolean v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l:Z

    .line 680
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->setStackFromRight(Z)V

    .line 681
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->setScrollingCacheEnabled(Z)V

    .line 682
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setTranscriptMode(I)V

    .line 683
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setCacheColorHint(I)V

    .line 684
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setSmoothScrollbarEnabled(Z)V

    .line 685
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setChoiceMode(I)V

    .line 686
    return-void

    :cond_1
    move v3, v0

    move v4, v1

    move v5, v0

    move v6, v0

    move-object v7, v2

    move v2, v0

    goto :goto_0
.end method

.method private A()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1073
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v2

    .line 1074
    if-nez v2, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return v0

    .line 1075
    :cond_1
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-eq v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 1077
    :cond_2
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private B()V
    .locals 2

    .prologue
    .line 1258
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1259
    return-void
.end method

.method private C()V
    .locals 1

    .prologue
    .line 3500
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 3501
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    .line 3505
    :goto_0
    return-void

    .line 3503
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private D()V
    .locals 1

    .prologue
    .line 3508
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 3509
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    .line 3511
    :cond_0
    return-void
.end method

.method private E()V
    .locals 1

    .prologue
    .line 3514
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 3515
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 3516
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    .line 3518
    :cond_0
    return-void
.end method

.method private F()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4515
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/a$a;

    invoke-virtual {v0}, Lit/sephiroth/android/library/a/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4516
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 4517
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 4518
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->z:Z

    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y:Z

    .line 4520
    :cond_0
    return-void
.end method

.method private G()V
    .locals 1

    .prologue
    .line 4523
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/a$a;

    invoke-virtual {v0}, Lit/sephiroth/android/library/a/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4524
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aL:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 4525
    new-instance v0, Lit/sephiroth/android/library/widget/b;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/b;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aL:Ljava/lang/Runnable;

    .line 4542
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aL:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->post(Ljava/lang/Runnable;)Z

    .line 4544
    :cond_1
    return-void
.end method

.method private H()V
    .locals 1

    .prologue
    .line 5328
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Landroid/support/v4/widget/f;

    if-eqz v0, :cond_0

    .line 5329
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Landroid/support/v4/widget/f;

    invoke-virtual {v0}, Landroid/support/v4/widget/f;->b()V

    .line 5330
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Landroid/support/v4/widget/f;

    invoke-virtual {v0}, Landroid/support/v4/widget/f;->b()V

    .line 5332
    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 5

    .prologue
    .line 5154
    sparse-switch p2, :sswitch_data_0

    .line 5187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5156
    :sswitch_0
    iget v3, p0, Landroid/graphics/Rect;->right:I

    .line 5157
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v2, v0, v1

    .line 5158
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 5159
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 5191
    :goto_0
    sub-int/2addr v1, v3

    .line 5192
    sub-int/2addr v0, v2

    .line 5193
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    return v0

    .line 5162
    :sswitch_1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    .line 5163
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 5164
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 5165
    iget v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 5168
    :sswitch_2
    iget v3, p0, Landroid/graphics/Rect;->left:I

    .line 5169
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v2, v0, v1

    .line 5170
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 5171
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 5172
    goto :goto_0

    .line 5174
    :sswitch_3
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    .line 5175
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 5176
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 5177
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 5181
    :sswitch_4
    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    .line 5182
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v2, v0, v1

    .line 5183
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 5184
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 5185
    goto :goto_0

    .line 5154
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static a(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 5838
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5839
    if-lez v3, :cond_2

    .line 5841
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 5842
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5843
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lit/sephiroth/android/library/widget/AbsHListView$f;

    iget v1, v1, Lit/sephiroth/android/library/widget/AbsHListView$f;->d:I

    if-ne v1, p1, :cond_0

    .line 5844
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5850
    :goto_1
    return-object v0

    .line 5841
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 5848
    :cond_1
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_1

    .line 5850
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$c;)Lit/sephiroth/android/library/widget/AbsHListView$c;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Lit/sephiroth/android/library/widget/AbsHListView$c;

    return-object p1
.end method

.method private a(IIII)V
    .locals 5

    .prologue
    .line 2106
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:I

    sub-int v1, p1, v1

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r:I

    sub-int v2, p2, v2

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s:I

    add-int/2addr v3, p3

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2108
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 2182
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2183
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    .line 2184
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2185
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2187
    :cond_0
    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z
    .locals 1

    .prologue
    .line 61
    invoke-virtual/range {p0 .. p9}, Lit/sephiroth/android/library/widget/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3616
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v2, 0xff00

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    .line 3618
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 3619
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    if-ne v2, v3, :cond_0

    .line 3622
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3623
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    .line 3624
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    .line 3625
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    .line 3626
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    .line 3628
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 3622
    goto :goto_0
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/AbsHListView;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z
    .locals 1

    .prologue
    .line 61
    invoke-virtual/range {p0 .. p9}, Lit/sephiroth/android/library/widget/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/AbsHListView$c;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Lit/sephiroth/android/library/widget/AbsHListView$c;

    return-object v0
.end method

.method static synthetic c(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic c(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z
    .locals 1

    .prologue
    .line 61
    invoke-virtual/range {p0 .. p9}, Lit/sephiroth/android/library/widget/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    return v0
.end method

.method static synthetic d(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic e(Lit/sephiroth/android/library/widget/AbsHListView;)Landroid/view/VelocityTracker;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic e(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic f(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aN:I

    return v0
.end method

.method static synthetic g(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aM:I

    return v0
.end method

.method private g(I)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2770
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    sub-int v3, p1, v0

    .line 2771
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 2772
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 2773
    :goto_0
    if-nez v0, :cond_0

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aK:I

    if-le v4, v5, :cond_7

    .line 2774
    :cond_0
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->F()V

    .line 2775
    if-eqz v0, :cond_5

    .line 2776
    const/4 v0, 0x5

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 2777
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    .line 2782
    :goto_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2786
    if-eqz v0, :cond_1

    .line 2787
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Lit/sephiroth/android/library/widget/AbsHListView$c;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2789
    :cond_1
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    .line 2790
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2791
    if-eqz v0, :cond_2

    .line 2792
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2794
    :cond_2
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    .line 2797
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2798
    if-eqz v0, :cond_3

    .line 2799
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2801
    :cond_3
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->h(I)V

    move v0, v2

    .line 2805
    :goto_2
    return v0

    :cond_4
    move v0, v1

    .line 2772
    goto :goto_0

    .line 2779
    :cond_5
    const/4 v0, 0x3

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 2780
    if-lez v3, :cond_6

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aK:I

    :goto_3
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    goto :goto_1

    :cond_6
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aK:I

    neg-int v0, v0

    goto :goto_3

    :cond_7
    move v0, v1

    .line 2805
    goto :goto_2
.end method

.method private h(I)V
    .locals 14

    .prologue
    const/4 v10, 0x5

    const/4 v13, 0x3

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 2809
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    sub-int v12, p1, v0

    .line 2810
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    sub-int v1, v12, v0

    .line 2811
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_7

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    sub-int v0, p1, v0

    .line 2813
    :goto_0
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-ne v3, v13, :cond_b

    .line 2815
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    if-eq p1, v3, :cond_6

    .line 2819
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aK:I

    if-le v3, v4, :cond_0

    .line 2820
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 2821
    if-eqz v3, :cond_0

    .line 2822
    invoke-interface {v3, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2827
    :cond_0
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    if-ltz v3, :cond_8

    .line 2828
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v3, v4

    .line 2836
    :goto_1
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2837
    if-eqz v4, :cond_1a

    .line 2838
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 2843
    :goto_2
    if-eqz v0, :cond_19

    .line 2844
    invoke-virtual {p0, v1, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->d(II)Z

    move-result v1

    .line 2848
    :goto_3
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2849
    if-eqz v3, :cond_5

    .line 2852
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2853
    if-eqz v1, :cond_4

    .line 2856
    neg-int v0, v0

    sub-int v1, v3, v4

    sub-int v1, v0, v1

    .line 2857
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v3

    iget v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v2

    move v8, v2

    invoke-virtual/range {v0 .. v9}, Lit/sephiroth/android/library/widget/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    .line 2858
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 2860
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 2861
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2865
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getOverScrollMode()I

    move-result v0

    .line 2867
    if-eqz v0, :cond_2

    if-ne v0, v9, :cond_4

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->A()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2869
    :cond_2
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aU:I

    .line 2870
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 2871
    if-lez v12, :cond_9

    .line 2872
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Landroid/support/v4/widget/f;

    int-to-float v1, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/f;->a(F)Z

    .line 2873
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Landroid/support/v4/widget/f;

    invoke-virtual {v0}, Landroid/support/v4/widget/f;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2874
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Landroid/support/v4/widget/f;

    invoke-virtual {v0}, Landroid/support/v4/widget/f;->c()Z

    .line 2876
    :cond_3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 2886
    :cond_4
    :goto_4
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    .line 2888
    :cond_5
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 2953
    :cond_6
    :goto_5
    return-void

    :cond_7
    move v0, v1

    .line 2811
    goto/16 :goto_0

    .line 2832
    :cond_8
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    goto/16 :goto_1

    .line 2877
    :cond_9
    if-gez v12, :cond_4

    .line 2878
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Landroid/support/v4/widget/f;

    int-to-float v1, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/f;->a(F)Z

    .line 2879
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Landroid/support/v4/widget/f;

    invoke-virtual {v0}, Landroid/support/v4/widget/f;->a()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2880
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Landroid/support/v4/widget/f;

    invoke-virtual {v0}, Landroid/support/v4/widget/f;->c()Z

    .line 2882
    :cond_a
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    goto :goto_4

    .line 2890
    :cond_b
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-ne v1, v10, :cond_6

    .line 2891
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    if-eq p1, v1, :cond_6

    .line 2892
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v3

    .line 2893
    sub-int v4, v3, v0

    .line 2894
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    if-le p1, v1, :cond_15

    move v10, v9

    .line 2896
    :goto_6
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aU:I

    if-nez v1, :cond_c

    .line 2897
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aU:I

    .line 2900
    :cond_c
    neg-int v1, v0

    .line 2901
    if-gez v4, :cond_d

    if-gez v3, :cond_e

    :cond_d
    if-lez v4, :cond_16

    if-gtz v3, :cond_16

    .line 2902
    :cond_e
    neg-int v1, v3

    .line 2903
    add-int/2addr v0, v1

    move v11, v0

    .line 2908
    :goto_7
    if-eqz v1, :cond_11

    .line 2909
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v3

    iget v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v2

    move v8, v2

    invoke-virtual/range {v0 .. v9}, Lit/sephiroth/android/library/widget/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    .line 2910
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getOverScrollMode()I

    move-result v0

    .line 2911
    if-eqz v0, :cond_f

    if-ne v0, v9, :cond_11

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->A()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2912
    :cond_f
    if-lez v12, :cond_17

    .line 2913
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Landroid/support/v4/widget/f;

    int-to-float v1, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/f;->a(F)Z

    .line 2914
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Landroid/support/v4/widget/f;

    invoke-virtual {v0}, Landroid/support/v4/widget/f;->a()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2915
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Landroid/support/v4/widget/f;

    invoke-virtual {v0}, Landroid/support/v4/widget/f;->c()Z

    .line 2917
    :cond_10
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 2928
    :cond_11
    :goto_8
    if-eqz v11, :cond_14

    .line 2930
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_12

    .line 2931
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/a$a;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/a/a$a;->a(I)V

    .line 2932
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->k()V

    .line 2935
    :cond_12
    invoke-virtual {p0, v11, v11}, Lit/sephiroth/android/library/widget/AbsHListView;->d(II)Z

    .line 2937
    iput v13, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 2941
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->e(I)I

    move-result v0

    .line 2943
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    .line 2944
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2945
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    :cond_13
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 2946
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    .line 2947
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    .line 2949
    :cond_14
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 2950
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aU:I

    goto/16 :goto_5

    .line 2894
    :cond_15
    const/4 v1, -0x1

    move v10, v1

    goto/16 :goto_6

    :cond_16
    move v11, v2

    .line 2905
    goto :goto_7

    .line 2918
    :cond_17
    if-gez v12, :cond_11

    .line 2919
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Landroid/support/v4/widget/f;

    int-to-float v1, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/f;->a(F)Z

    .line 2920
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Landroid/support/v4/widget/f;

    invoke-virtual {v0}, Landroid/support/v4/widget/f;->a()Z

    move-result v0

    if-nez v0, :cond_18

    .line 2921
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Landroid/support/v4/widget/f;

    invoke-virtual {v0}, Landroid/support/v4/widget/f;->c()Z

    .line 2923
    :cond_18
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    goto :goto_8

    :cond_19
    move v1, v2

    goto/16 :goto_3

    :cond_1a
    move v4, v2

    goto/16 :goto_2
.end method

.method static synthetic h(Lit/sephiroth/android/library/widget/AbsHListView;)Z
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->A()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lit/sephiroth/android/library/widget/AbsHListView;)Landroid/support/v4/widget/f;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Landroid/support/v4/widget/f;

    return-object v0
.end method

.method static synthetic j(Lit/sephiroth/android/library/widget/AbsHListView;)Landroid/support/v4/widget/f;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Landroid/support/v4/widget/f;

    return-object v0
.end method

.method static synthetic k(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G()V

    return-void
.end method

.method private y()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 689
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setClickable(Z)V

    .line 690
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setFocusableInTouchMode(Z)V

    .line 691
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setWillNotDraw(Z)V

    .line 692
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 693
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setScrollingCacheEnabled(Z)V

    .line 695
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 696
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aK:I

    .line 697
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aM:I

    .line 698
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aN:I

    .line 699
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:I

    .line 700
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:I

    .line 701
    invoke-static {p0}, Lit/sephiroth/android/library/a/a;->a(Landroid/view/View;)Lit/sephiroth/android/library/a/a$a;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/a$a;

    .line 702
    return-void
.end method

.method private z()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 985
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    .line 986
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v6

    .line 987
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    move v4, v3

    .line 988
    :goto_1
    if-ge v4, v6, :cond_3

    .line 989
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 990
    add-int v1, v5, v4

    .line 992
    instance-of v7, v0, Landroid/widget/Checkable;

    if-eqz v7, :cond_2

    .line 993
    check-cast v0, Landroid/widget/Checkable;

    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Landroid/support/v4/f/j;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 988
    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_1
    move v2, v3

    .line 987
    goto :goto_0

    .line 994
    :cond_2
    if-eqz v2, :cond_0

    .line 995
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Landroid/support/v4/f/j;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 998
    :cond_3
    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 4

    .prologue
    .line 2682
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ay:Landroid/graphics/Rect;

    .line 2683
    if-nez v0, :cond_0

    .line 2684
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ay:Landroid/graphics/Rect;

    .line 2685
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ay:Landroid/graphics/Rect;

    .line 2688
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 2689
    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 2690
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2691
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 2692
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2693
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2694
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v0, v1

    .line 2698
    :goto_1
    return v0

    .line 2689
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2698
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected a(I[Z)Landroid/view/View;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1922
    aput-boolean v3, p2, v3

    .line 1925
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->d(I)Landroid/view/View;

    move-result-object v1

    .line 1926
    if-eqz v1, :cond_1

    .line 1989
    :cond_0
    :goto_0
    return-object v1

    .line 1930
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->e(I)Landroid/view/View;

    move-result-object v1

    .line 1933
    if-eqz v1, :cond_5

    .line 1934
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1936
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_2

    .line 1937
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 1938
    invoke-virtual {v0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1942
    :cond_2
    if-eq v0, v1, :cond_4

    .line 1943
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-virtual {v2, v1, p1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->a(Landroid/view/View;I)V

    .line 1944
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:I

    if-eqz v1, :cond_7

    .line 1945
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    move-object v1, v0

    .line 1965
    :goto_1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Z

    if-eqz v0, :cond_3

    .line 1966
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1968
    if-nez v0, :cond_8

    .line 1969
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$f;

    .line 1975
    :goto_2
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$f;->e:J

    .line 1976
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1979
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aq:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1980
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aY:Lit/sephiroth/android/library/widget/AbsHListView$g;

    if-nez v0, :cond_0

    .line 1981
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$g;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$g;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aY:Lit/sephiroth/android/library/widget/AbsHListView$g;

    goto :goto_0

    .line 1948
    :cond_4
    aput-boolean v4, p2, v3

    .line 1949
    invoke-virtual {v0}, Landroid/view/View;->onFinishTemporaryDetach()V

    move-object v1, v0

    goto :goto_1

    .line 1952
    :cond_5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1954
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_6

    .line 1955
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 1956
    invoke-virtual {v0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1960
    :cond_6
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:I

    if-eqz v1, :cond_7

    .line 1961
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_7
    move-object v1, v0

    goto :goto_1

    .line 1970
    :cond_8
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1971
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$f;

    goto :goto_2

    .line 1973
    :cond_9
    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$f;

    goto :goto_2
.end method

.method public a(Landroid/util/AttributeSet;)Lit/sephiroth/android/library/widget/AbsHListView$f;
    .locals 2

    .prologue
    .line 5225
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$f;

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lit/sephiroth/android/library/widget/AbsHListView$f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-virtual {v0}, Landroid/support/v4/f/j;->c()V

    .line 834
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    if-eqz v0, :cond_1

    .line 835
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    invoke-virtual {v0}, Landroid/support/v4/f/f;->c()V

    .line 837
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    .line 838
    return-void
.end method

.method public a(III)V
    .locals 1

    .prologue
    .line 4401
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    if-nez v0, :cond_0

    .line 4402
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$j;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$j;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    .line 4404
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    invoke-virtual {v0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView$j;->a(III)V

    .line 4405
    return-void
.end method

.method public a(IIZ)V
    .locals 6

    .prologue
    .line 4453
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    if-nez v0, :cond_0

    .line 4454
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$e;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    .line 4458
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    .line 4459
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 4460
    add-int v2, v0, v1

    .line 4461
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v3

    .line 4462
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 4464
    if-eqz p1, :cond_2

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-ne v0, v3, :cond_1

    if-ltz p1, :cond_2

    :cond_1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-ne v2, v0, :cond_4

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    if-ne v0, v4, :cond_4

    if-lez p1, :cond_4

    .line 4468
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$e;->b()V

    .line 4469
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    if-eqz v0, :cond_3

    .line 4470
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$j;->a()V

    .line 4476
    :cond_3
    :goto_0
    return-void

    .line 4473
    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    .line 4474
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-virtual {v0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView$e;->a(IIZ)V

    goto :goto_0
.end method

.method protected a(ILandroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 2084
    if-eq p1, v5, :cond_0

    .line 2085
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    .line 2088
    :cond_0
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    .line 2089
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2090
    instance-of v0, p2, Lit/sephiroth/android/library/widget/AbsHListView$m;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 2091
    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$m;

    invoke-interface {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView$m;->a(Landroid/graphics/Rect;)V

    .line 2093
    :cond_1
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v2, v3, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIII)V

    .line 2096
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aI:Z

    .line 2097
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_2

    .line 2098
    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aI:Z

    .line 2099
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemPosition()I

    move-result v0

    if-eq v0, v5, :cond_2

    .line 2100
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->refreshDrawableState()V

    .line 2103
    :cond_2
    return-void

    .line 2098
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 8

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x3

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 850
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-nez v0, :cond_1

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_4

    .line 856
    if-eqz p2, :cond_4

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 857
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/a/a/b;

    invoke-virtual {v0}, Lit/sephiroth/android/library/a/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 859
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/a/a/b;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    .line 867
    :cond_4
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_b

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-ne v0, v3, :cond_b

    .line 869
    :cond_5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/f/j;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 870
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/f/j;->b(ILjava/lang/Object;)V

    .line 871
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 872
    if-eqz p2, :cond_9

    .line 873
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/f/f;->b(JLjava/lang/Object;)V

    .line 878
    :cond_6
    :goto_1
    if-eq v0, p2, :cond_7

    .line 879
    if-eqz p2, :cond_a

    .line 880
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    .line 885
    :cond_7
    :goto_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 886
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 887
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v1, Lit/sephiroth/android/library/a/a/b;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lit/sephiroth/android/library/a/a/b;->a(Landroid/view/ActionMode;IJZ)V

    .line 913
    :cond_8
    :goto_3
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->af:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Z

    if-nez v0, :cond_0

    .line 914
    iput-boolean v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    .line 915
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->x()V

    .line 916
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    goto/16 :goto_0

    .line 875
    :cond_9
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/f/f;->b(J)V

    goto :goto_1

    .line 882
    :cond_a
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    goto :goto_2

    .line 890
    :cond_b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v7

    .line 893
    :goto_4
    if-nez p2, :cond_c

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 894
    :cond_c
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-virtual {v2}, Landroid/support/v4/f/j;->c()V

    .line 895
    if-eqz v0, :cond_d

    .line 896
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    invoke-virtual {v2}, Landroid/support/v4/f/f;->c()V

    .line 901
    :cond_d
    if-eqz p2, :cond_10

    .line 902
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/f/j;->b(ILjava/lang/Object;)V

    .line 903
    if-eqz v0, :cond_e

    .line 904
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/f/f;->b(JLjava/lang/Object;)V

    .line 906
    :cond_e
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    goto :goto_3

    :cond_f
    move v0, v1

    .line 890
    goto :goto_4

    .line 907
    :cond_10
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-virtual {v0}, Landroid/support/v4/f/j;->b()I

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/j;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    .line 908
    :cond_11
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    goto :goto_3
.end method

.method protected abstract a(Z)V
.end method

.method public a(FFI)Z
    .locals 4

    .prologue
    .line 2600
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(II)I

    move-result v0

    .line 2601
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2602
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 2603
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2604
    if-eqz v1, :cond_0

    .line 2605
    invoke-virtual {p0, v1, v0, v2, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2606
    invoke-super {p0, p0}, Lit/sephiroth/android/library/widget/h;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 2609
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->a(FFI)Z

    move-result v0

    goto :goto_0
.end method

.method public a(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 769
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    if-eqz v1, :cond_0

    .line 770
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/f/j;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 773
    :cond_0
    return v0
.end method

.method protected a(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 3005
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 3006
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 3007
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->a(FFI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3008
    const/4 v0, 0x1

    .line 3012
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;IJ)Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 922
    .line 925
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-eqz v0, :cond_f

    .line 929
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_7

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 931
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/f/j;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    move v6, v7

    .line 932
    :goto_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/f/j;->b(ILjava/lang/Object;)V

    .line 933
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 934
    if-eqz v6, :cond_5

    .line 935
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/f/f;->b(JLjava/lang/Object;)V

    .line 940
    :cond_1
    :goto_1
    if-eqz v6, :cond_6

    .line 941
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    .line 946
    :goto_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_e

    .line 947
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v1, Lit/sephiroth/android/library/a/a/b;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lit/sephiroth/android/library/a/a/b;->a(Landroid/view/ActionMode;IJZ)V

    :goto_3
    move v0, v8

    move v8, v7

    .line 968
    :goto_4
    if-eqz v8, :cond_2

    .line 969
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->z()V

    :cond_2
    move v9, v0

    move v0, v7

    move v7, v9

    .line 973
    :goto_5
    if-eqz v7, :cond_3

    .line 974
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/h;->a(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 977
    :cond_3
    return v0

    :cond_4
    move v6, v8

    .line 931
    goto :goto_0

    .line 937
    :cond_5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/f/f;->b(J)V

    goto :goto_1

    .line 943
    :cond_6
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    goto :goto_2

    .line 952
    :cond_7
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-ne v0, v7, :cond_d

    .line 953
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/f/j;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v7

    .line 954
    :goto_6
    if-eqz v0, :cond_b

    .line 955
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-virtual {v0}, Landroid/support/v4/f/j;->c()V

    .line 956
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/f/j;->b(ILjava/lang/Object;)V

    .line 957
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 958
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    invoke-virtual {v0}, Landroid/support/v4/f/f;->c()V

    .line 959
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/f/f;->b(JLjava/lang/Object;)V

    .line 961
    :cond_8
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    :cond_9
    :goto_7
    move v8, v7

    move v0, v7

    .line 965
    goto :goto_4

    :cond_a
    move v0, v8

    .line 953
    goto :goto_6

    .line 962
    :cond_b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-virtual {v0}, Landroid/support/v4/f/j;->b()I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-virtual {v0, v8}, Landroid/support/v4/f/j;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    .line 963
    :cond_c
    iput v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    goto :goto_7

    :cond_d
    move v0, v7

    goto/16 :goto_4

    :cond_e
    move v8, v7

    goto/16 :goto_3

    :cond_f
    move v0, v8

    goto/16 :goto_5
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3635
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 3636
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    .line 3637
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    .line 3639
    if-nez v3, :cond_1

    .line 3650
    :cond_0
    return-void

    .line 3643
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 3644
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3645
    add-int v5, v2, v0

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3646
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3648
    :cond_2
    invoke-virtual {v4, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 3643
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method b(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 2469
    new-instance v0, Lit/sephiroth/android/library/widget/h$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/h$a;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1133
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aw:Lit/sephiroth/android/library/widget/AbsHListView$h;

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aw:Lit/sephiroth/android/library/widget/AbsHListView$h;

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    invoke-interface {v0, p0, v1, v2, v3}, Lit/sephiroth/android/library/widget/AbsHListView$h;->a(Lit/sephiroth/android/library/widget/AbsHListView;III)V

    .line 1136
    :cond_0
    invoke-virtual {p0, v4, v4, v4, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->onScrollChanged(IIII)V

    .line 1137
    return-void
.end method

.method b(I)V
    .locals 1

    .prologue
    .line 3660
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aJ:I

    if-eq p1, v0, :cond_0

    .line 3661
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aw:Lit/sephiroth/android/library/widget/AbsHListView$h;

    if-eqz v0, :cond_0

    .line 3662
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aJ:I

    .line 3663
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aw:Lit/sephiroth/android/library/widget/AbsHListView$h;

    invoke-interface {v0, p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$h;->a(Lit/sephiroth/android/library/widget/AbsHListView;I)V

    .line 3666
    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 1

    .prologue
    .line 4434
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    if-nez v0, :cond_0

    .line 4435
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$j;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$j;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    .line 4437
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    invoke-virtual {v0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView$j;->a(II)V

    .line 4438
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 1284
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1285
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->d()V

    .line 1286
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    .line 1287
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 1289
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 3

    .prologue
    .line 4717
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 4719
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 4720
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4721
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4719
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4723
    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 1

    .prologue
    .line 4449
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    .line 4450
    return-void
.end method

.method c(Landroid/view/View;IJ)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 2568
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_2

    .line 2569
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 2570
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/a/a/b;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2572
    invoke-virtual {p0, p2, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IZ)V

    .line 2573
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->performHapticFeedback(I)Z

    :cond_0
    move v0, v1

    .line 2591
    :cond_1
    :goto_0
    return v0

    .line 2580
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Lit/sephiroth/android/library/widget/h$d;

    if-eqz v0, :cond_4

    .line 2581
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Lit/sephiroth/android/library/widget/h$d;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/widget/h$d;->a(Lit/sephiroth/android/library/widget/h;Landroid/view/View;IJ)Z

    move-result v0

    .line 2584
    :goto_1
    if-nez v0, :cond_3

    .line 2585
    invoke-virtual {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2586
    invoke-super {p0, p0}, Lit/sephiroth/android/library/widget/h;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 2588
    :cond_3
    if-eqz v0, :cond_1

    .line 2589
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_1
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 5209
    const/4 v0, 0x0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 5230
    instance-of v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$f;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1650
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v2

    .line 1651
    if-lez v2, :cond_3

    .line 1652
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ax:Z

    if-eqz v0, :cond_2

    .line 1653
    mul-int/lit8 v0, v2, 0x64

    .line 1655
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1656
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1657
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1658
    if-lez v1, :cond_0

    .line 1659
    mul-int/lit8 v3, v3, 0x64

    div-int v1, v3, v1

    add-int/2addr v0, v1

    .line 1662
    :cond_0
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1663
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1664
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1665
    if-lez v1, :cond_1

    .line 1666
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v1

    sub-int/2addr v0, v1

    .line 1674
    :cond_1
    :goto_0
    return v0

    .line 1671
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1674
    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1679
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    .line 1680
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v3

    .line 1681
    if-ltz v2, :cond_0

    if-lez v3, :cond_0

    .line 1682
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ax:Z

    if-eqz v1, :cond_1

    .line 1683
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1684
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1685
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1686
    if-lez v1, :cond_0

    .line 1687
    mul-int/lit8 v2, v2, 0x64

    mul-int/lit8 v3, v3, 0x64

    div-int v1, v3, v1

    sub-int v1, v2, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1703
    :cond_0
    :goto_0
    return v0

    .line 1692
    :cond_1
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    .line 1693
    if-nez v2, :cond_2

    .line 1700
    :goto_1
    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 1695
    :cond_2
    add-int v0, v2, v3

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 1696
    goto :goto_1

    .line 1698
    :cond_3
    div-int/lit8 v0, v3, 0x2

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .prologue
    .line 1709
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ax:Z

    if-eqz v0, :cond_1

    .line 1710
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1711
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1713
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1718
    :cond_0
    :goto_0
    return v0

    .line 1716
    :cond_1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    goto :goto_0
.end method

.method protected abstract d(I)I
.end method

.method protected d()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1632
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeAllViewsInLayout()V

    .line 1633
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    .line 1634
    iput-boolean v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    .line 1635
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O:Ljava/lang/Runnable;

    .line 1636
    iput-boolean v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ad:Z

    .line 1637
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 1638
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ar:I

    .line 1639
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->as:J

    .line 1640
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectedPositionInt(I)V

    .line 1641
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    .line 1642
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:I

    .line 1643
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    .line 1644
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1645
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 1646
    return-void
.end method

.method d(II)Z
    .locals 20

    .prologue
    .line 4557
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v9

    .line 4558
    if-nez v9, :cond_0

    .line 4559
    const/4 v2, 0x1

    .line 4710
    :goto_0
    return v2

    .line 4562
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 4563
    add-int/lit8 v2, v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 4565
    move-object/from16 v0, p0

    iget-object v5, v0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    .line 4570
    const/4 v2, 0x0

    .line 4571
    const/4 v6, 0x0

    .line 4577
    sub-int v10, v2, v3

    .line 4578
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v6

    .line 4579
    sub-int v11, v4, v2

    .line 4581
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v6

    sub-int v6, v2, v6

    .line 4582
    if-gez p1, :cond_2

    .line 4583
    add-int/lit8 v2, v6, -0x1

    neg-int v2, v2

    move/from16 v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v8, v2

    .line 4588
    :goto_1
    if-gez p2, :cond_3

    .line 4589
    add-int/lit8 v2, v6, -0x1

    neg-int v2, v2

    move/from16 v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4594
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    .line 4597
    if-nez v12, :cond_4

    .line 4598
    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int v6, v3, v6

    move-object/from16 v0, p0

    iput v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aS:I

    .line 4602
    :goto_3
    add-int v6, v12, v9

    move-object/from16 v0, p0

    iget v7, v0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-ne v6, v7, :cond_5

    .line 4603
    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v4

    move-object/from16 v0, p0

    iput v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    .line 4608
    :goto_4
    if-nez v12, :cond_6

    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-lt v3, v6, :cond_6

    if-ltz v2, :cond_6

    const/4 v3, 0x1

    .line 4609
    :goto_5
    add-int v6, v12, v9

    move-object/from16 v0, p0

    iget v7, v0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-ne v6, v7, :cond_7

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v6

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v5, v6, v5

    if-gt v4, v5, :cond_7

    if-gtz v2, :cond_7

    const/4 v4, 0x1

    .line 4611
    :goto_6
    if-nez v3, :cond_1

    if-eqz v4, :cond_9

    .line 4612
    :cond_1
    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 4585
    :cond_2
    add-int/lit8 v2, v6, -0x1

    move/from16 v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v8, v2

    goto :goto_1

    .line 4591
    :cond_3
    add-int/lit8 v2, v6, -0x1

    move/from16 v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    .line 4600
    :cond_4
    move-object/from16 v0, p0

    iget v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aS:I

    add-int/2addr v6, v2

    move-object/from16 v0, p0

    iput v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aS:I

    goto :goto_3

    .line 4605
    :cond_5
    move-object/from16 v0, p0

    iget v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    add-int/2addr v6, v2

    move-object/from16 v0, p0

    iput v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    goto :goto_4

    .line 4608
    :cond_6
    const/4 v3, 0x0

    goto :goto_5

    .line 4609
    :cond_7
    const/4 v4, 0x0

    goto :goto_6

    .line 4612
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 4615
    :cond_9
    if-gez v2, :cond_12

    const/4 v3, 0x1

    .line 4617
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v13

    .line 4618
    if-eqz v13, :cond_a

    .line 4619
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->m()V

    .line 4622
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHeaderViewsCount()I

    move-result v14

    .line 4623
    move-object/from16 v0, p0

    iget v4, v0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getFooterViewsCount()I

    move-result v5

    sub-int v15, v4, v5

    .line 4625
    const/4 v5, 0x0

    .line 4626
    const/4 v6, 0x0

    .line 4628
    if-eqz v3, :cond_15

    .line 4629
    neg-int v0, v2

    move/from16 v16, v0

    .line 4634
    const/4 v4, 0x0

    move/from16 v19, v4

    move v4, v6

    move/from16 v6, v19

    :goto_8
    if-ge v6, v9, :cond_b

    .line 4635
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 4636
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v7

    move/from16 v0, v16

    if-lt v7, v0, :cond_13

    .line 4666
    :cond_b
    move-object/from16 v0, p0

    iget v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    iput v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->C:I

    .line 4668
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Z

    .line 4670
    if-lez v4, :cond_c

    .line 4671
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->detachViewsFromParent(II)V

    .line 4672
    move-object/from16 v0, p0

    iget-object v5, v0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-virtual {v5}, Lit/sephiroth/android/library/widget/AbsHListView$k;->d()V

    .line 4677
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->awakenScrollBars()Z

    move-result v5

    if-nez v5, :cond_d

    .line 4678
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 4681
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->c(I)V

    .line 4683
    if-eqz v3, :cond_e

    .line 4684
    move-object/from16 v0, p0

    iget v5, v0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    .line 4687
    :cond_e
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4688
    if-lt v10, v2, :cond_f

    if-ge v11, v2, :cond_10

    .line 4689
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Z)V

    .line 4692
    :cond_10
    if-nez v13, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    .line 4693
    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v2, v3

    .line 4694
    if-ltz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 4695
    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->a(ILandroid/view/View;)V

    .line 4706
    :cond_11
    :goto_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Z

    .line 4708
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->b()V

    .line 4710
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 4615
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 4639
    :cond_13
    add-int/lit8 v7, v4, 0x1

    .line 4640
    add-int v4, v12, v6

    .line 4641
    if-lt v4, v14, :cond_14

    if-ge v4, v15, :cond_14

    .line 4642
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lit/sephiroth/android/library/widget/AbsHListView$k;->a(Landroid/view/View;I)V

    .line 4634
    :cond_14
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v7

    goto/16 :goto_8

    .line 4647
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v4

    sub-int v7, v4, v2

    .line 4651
    add-int/lit8 v4, v9, -0x1

    move/from16 v19, v4

    move v4, v6

    move/from16 v6, v19

    :goto_a
    if-ltz v6, :cond_b

    .line 4652
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4653
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v16

    move/from16 v0, v16

    if-le v0, v7, :cond_b

    .line 4657
    add-int/lit8 v5, v4, 0x1

    .line 4658
    add-int v4, v12, v6

    .line 4659
    if-lt v4, v14, :cond_16

    if-ge v4, v15, :cond_16

    .line 4660
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v4}, Lit/sephiroth/android/library/widget/AbsHListView$k;->a(Landroid/view/View;I)V

    .line 4651
    :cond_16
    add-int/lit8 v4, v6, -0x1

    move/from16 v19, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v19

    goto :goto_a

    .line 4697
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_18

    .line 4698
    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v2, v3

    .line 4699
    if-ltz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 4700
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->a(ILandroid/view/View;)V

    goto/16 :goto_9

    .line 4703
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_9
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 2118
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l:Z

    .line 2119
    if-nez v0, :cond_0

    .line 2120
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/graphics/Canvas;)V

    .line 2123
    :cond_0
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/h;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2125
    if-eqz v0, :cond_1

    .line 2126
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/graphics/Canvas;)V

    .line 2131
    :cond_1
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    .prologue
    .line 2669
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 3447
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/h;->draw(Landroid/graphics/Canvas;)V

    .line 3448
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Landroid/support/v4/widget/f;

    if-eqz v0, :cond_3

    .line 3449
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v0

    .line 3450
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Landroid/support/v4/widget/f;

    invoke-virtual {v1}, Landroid/support/v4/widget/f;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3451
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3452
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aW:I

    add-int/2addr v2, v3

    .line 3453
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aX:I

    add-int/2addr v3, v4

    .line 3454
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    sub-int v3, v4, v3

    .line 3457
    const/4 v4, 0x0

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aS:I

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3461
    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3462
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHeight()I

    move-result v5

    neg-int v5, v5

    add-int/2addr v2, v5

    int-to-float v2, v2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3463
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Landroid/support/v4/widget/f;

    invoke-virtual {v2, v3, v3}, Landroid/support/v4/widget/f;->a(II)V

    .line 3465
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Landroid/support/v4/widget/f;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/f;->a(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3467
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 3469
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3471
    :cond_1
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Landroid/support/v4/widget/f;

    invoke-virtual {v1}, Landroid/support/v4/widget/f;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3472
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3473
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aW:I

    add-int/2addr v2, v3

    .line 3474
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aX:I

    add-int/2addr v3, v4

    .line 3475
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    sub-int v3, v4, v3

    .line 3476
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v4

    .line 3478
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    add-int/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3479
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3480
    neg-int v2, v2

    int-to-float v2, v2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3482
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Landroid/support/v4/widget/f;

    invoke-virtual {v0, v3, v3}, Landroid/support/v4/widget/f;->a(II)V

    .line 3484
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Landroid/support/v4/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/f;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3487
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 3489
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3492
    :cond_3
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 2298
    invoke-super {p0}, Lit/sephiroth/android/library/widget/h;->drawableStateChanged()V

    .line 2299
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j()V

    .line 2300
    return-void
.end method

.method protected e(I)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 4799
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v2

    .line 4800
    if-nez v2, :cond_1

    move v0, v1

    .line 4805
    :cond_0
    :goto_0
    return v0

    .line 4804
    :cond_1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->d(I)I

    move-result v0

    .line 4805
    if-ne v0, v1, :cond_0

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 1813
    return-void
.end method

.method protected e(II)V
    .locals 0

    .prologue
    .line 5337
    return-void
.end method

.method protected f()V
    .locals 6

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1816
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->w:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1819
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    if-lez v0, :cond_3

    move v0, v1

    .line 1822
    :goto_0
    if-nez v0, :cond_0

    .line 1823
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 1824
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1825
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v0, v4, :cond_4

    move v0, v1

    .line 1829
    :cond_0
    :goto_1
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->w:Landroid/view/View;

    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1832
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->x:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1834
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v4

    .line 1837
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v0, v4

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-ge v0, v5, :cond_6

    move v0, v1

    .line 1840
    :goto_3
    if-nez v0, :cond_9

    if-lez v4, :cond_9

    .line 1841
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1842
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getRight()I

    move-result v4

    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_7

    .line 1845
    :goto_4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->x:Landroid/view/View;

    if-eqz v1, :cond_8

    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1847
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 1819
    goto :goto_0

    :cond_4
    move v0, v2

    .line 1825
    goto :goto_1

    :cond_5
    move v0, v3

    .line 1829
    goto :goto_2

    :cond_6
    move v0, v2

    .line 1837
    goto :goto_3

    :cond_7
    move v1, v2

    .line 1842
    goto :goto_4

    :cond_8
    move v2, v3

    .line 1845
    goto :goto_5

    :cond_9
    move v1, v0

    goto :goto_4
.end method

.method g()Z
    .locals 1

    .prologue
    .line 2162
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    packed-switch v0, :pswitch_data_0

    .line 2167
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2165
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 5214
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$f;

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lit/sephiroth/android/library/widget/AbsHListView$f;-><init>(III)V

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/util/AttributeSet;)Lit/sephiroth/android/library/widget/AbsHListView$f;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 5220
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$f;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$f;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 5290
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 812
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-nez v0, :cond_2

    .line 813
    :cond_0
    new-array v0, v1, [J

    .line 824
    :cond_1
    return-object v0

    .line 816
    :cond_2
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    .line 817
    invoke-virtual {v2}, Landroid/support/v4/f/f;->b()I

    move-result v3

    .line 818
    new-array v0, v3, [J

    .line 820
    :goto_0
    if-ge v1, v3, :cond_1

    .line 821
    invoke-virtual {v2, v1}, Landroid/support/v4/f/f;->a(I)J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 820
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 784
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-virtual {v0}, Landroid/support/v4/f/j;->b()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 785
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/f/j;->b(I)I

    move-result v0

    .line 788
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/support/v4/f/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/f/j",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 799
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    .line 802
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1006
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 2596
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1245
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1246
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1249
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1250
    invoke-virtual {p0, v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1255
    :goto_0
    return-void

    .line 1253
    :cond_0
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/h;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected getFooterViewsCount()I
    .locals 1

    .prologue
    .line 4742
    const/4 v0, 0x0

    return v0
.end method

.method protected getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 4732
    const/4 v0, 0x0

    return v0
.end method

.method protected getHorizontalScrollFactor()F
    .locals 4

    .prologue
    .line 3428
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bd:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 3430
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3431
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f010005

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 3433
    if-eqz v1, :cond_1

    .line 3434
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bd:F

    .line 3440
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bd:F

    return v0

    .line 3437
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected theme to define hlv_listPreferredItemWidth."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getHorizontalScrollbarHeight()I
    .locals 1

    .prologue
    .line 1083
    invoke-super {p0}, Lit/sephiroth/android/library/widget/h;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 1723
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 1724
    invoke-super {p0}, Lit/sephiroth/android/library/widget/h;->getLeftFadingEdgeStrength()F

    move-result v0

    .line 1725
    if-nez v1, :cond_1

    .line 1734
    :cond_0
    :goto_0
    return v0

    .line 1728
    :cond_1
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    if-lez v1, :cond_2

    .line 1729
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1732
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1733
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    .line 1734
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v0

    sub-int v0, v1, v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 1892
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 1904
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 1868
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1740
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 1741
    invoke-super {p0}, Lit/sephiroth/android/library/widget/h;->getRightFadingEdgeStrength()F

    move-result v0

    .line 1742
    if-nez v1, :cond_1

    .line 1752
    :cond_0
    :goto_0
    return v0

    .line 1745
    :cond_1
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 1746
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1749
    :cond_2
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1750
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    .line 1751
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    .line 1752
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v4

    sub-int v4, v2, v4

    if-le v1, v4, :cond_0

    sub-int v0, v1, v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1852
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-lez v0, :cond_0

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    if-ltz v0, :cond_0

    .line 1853
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1855
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2235
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 5258
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 5253
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    return v0
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 2178
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected i()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2242
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2277
    :cond_0
    :goto_0
    return-void

    .line 2246
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    .line 2247
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    .line 2248
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2251
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2253
    if-eqz v1, :cond_3

    .line 2254
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2255
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 2257
    :cond_3
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    .line 2259
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isLongClickable()Z

    move-result v1

    .line 2260
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2261
    if-eqz v0, :cond_4

    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_4

    .line 2262
    if-eqz v1, :cond_6

    .line 2263
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2269
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-nez v0, :cond_0

    .line 2270
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aD:Lit/sephiroth/android/library/widget/AbsHListView$b;

    if-nez v0, :cond_5

    .line 2271
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView$b;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/a;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aD:Lit/sephiroth/android/library/widget/AbsHListView$b;

    .line 2273
    :cond_5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aD:Lit/sephiroth/android/library/widget/AbsHListView$b;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$b;->a()V

    .line 2274
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aD:Lit/sephiroth/android/library/widget/AbsHListView$b;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2266
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method j()V
    .locals 2

    .prologue
    .line 2287
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2288
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2289
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2294
    :cond_0
    :goto_0
    return-void

    .line 2291
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lit/sephiroth/android/library/widget/AbsHListView;->U:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 2345
    invoke-super {p0}, Lit/sephiroth/android/library/widget/h;->jumpDrawablesToCurrentState()V

    .line 2346
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 2347
    :cond_0
    return-void
.end method

.method protected k()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 2957
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/a$a;

    invoke-virtual {v0}, Lit/sephiroth/android/library/a/a$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2958
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2960
    :cond_0
    return-void
.end method

.method protected l()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3016
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    if-nez v1, :cond_1

    .line 3019
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/AbsHListView$e;->a(Lit/sephiroth/android/library/widget/AbsHListView$e;)Lit/sephiroth/android/library/widget/o;

    move-result-object v1

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/o;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected m()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 4755
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    if-eq v0, v2, :cond_2

    .line 4756
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 4757
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 4759
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ak:I

    if-ltz v0, :cond_1

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ak:I

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    if-eq v0, v1, :cond_1

    .line 4760
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ak:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 4762
    :cond_1
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectedPositionInt(I)V

    .line 4763
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    .line 4764
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:I

    .line 4766
    :cond_2
    return-void
.end method

.method protected n()I
    .locals 2

    .prologue
    .line 4773
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    .line 4774
    if-gez v0, :cond_0

    .line 4775
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 4777
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4778
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4779
    return v0
.end method

.method protected o()Z
    .locals 1

    .prologue
    .line 4822
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4823
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j()V

    .line 4824
    const/4 v0, 0x1

    .line 4826
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2351
    invoke-super {p0}, Lit/sephiroth/android/library/widget/h;->onAttachedToWindow()V

    .line 2353
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2354
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2356
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:Lit/sephiroth/android/library/widget/AbsHListView$a;

    if-nez v0, :cond_0

    .line 2357
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$a;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$a;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:Lit/sephiroth/android/library/widget/AbsHListView$a;

    .line 2358
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:Lit/sephiroth/android/library/widget/AbsHListView$a;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2361
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    .line 2362
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ap:I

    .line 2363
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    .line 2365
    :cond_0
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:Z

    .line 2366
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    .line 2306
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aI:Z

    if-eqz v0, :cond_1

    .line 2308
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/h;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 2334
    :cond_0
    :goto_0
    return-object v0

    .line 2314
    :cond_1
    sget-object v0, Lit/sephiroth/android/library/widget/AbsHListView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v3, v0, v1

    .line 2319
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Lit/sephiroth/android/library/widget/h;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 2320
    const/4 v2, -0x1

    .line 2321
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 2322
    aget v4, v0, v1

    if-ne v4, v3, :cond_2

    .line 2329
    :goto_2
    if-ltz v1, :cond_0

    .line 2330
    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2321
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 5201
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2370
    invoke-super {p0}, Lit/sephiroth/android/library/widget/h;->onDetachedFromWindow()V

    .line 2375
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->b()V

    .line 2377
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2378
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2380
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:Lit/sephiroth/android/library/widget/AbsHListView$a;

    if-eqz v0, :cond_0

    .line 2381
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:Lit/sephiroth/android/library/widget/AbsHListView$a;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2382
    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:Lit/sephiroth/android/library/widget/AbsHListView$a;

    .line 2385
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    if-eqz v0, :cond_1

    .line 2386
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2389
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    if-eqz v0, :cond_2

    .line 2390
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$j;->a()V

    .line 2393
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aL:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 2394
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aL:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2397
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Lit/sephiroth/android/library/widget/AbsHListView$i;

    if-eqz v0, :cond_4

    .line 2398
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Lit/sephiroth/android/library/widget/AbsHListView$i;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2401
    :cond_4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 2402
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2403
    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:Ljava/lang/Runnable;

    .line 2405
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:Z

    .line 2406
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 1608
    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/h;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1609
    if-eqz p1, :cond_1

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1610
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    .line 1614
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ap:I

    .line 1615
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    .line 1617
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->p()Z

    .line 1619
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 3401
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 3402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3416
    :cond_0
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/h;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 3404
    :pswitch_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3405
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 3406
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 3407
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalScrollFactor()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 3408
    invoke-virtual {p0, v0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->d(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3409
    const/4 v0, 0x1

    goto :goto_0

    .line 3402
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1161
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/h;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1162
    const-class v0, Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1163
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1169
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/h;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1171
    const-class v0, Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1172
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1173
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 1174
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1176
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1177
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1180
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 3530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3533
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    if-eqz v3, :cond_0

    .line 3534
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView$j;->a()V

    .line 3537
    :cond_0
    iget-boolean v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:Z

    if-nez v3, :cond_2

    .line 3612
    :cond_1
    :goto_0
    return v1

    .line 3545
    :cond_2
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3547
    :pswitch_1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3548
    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    .line 3549
    :cond_3
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    move v1, v2

    .line 3550
    goto :goto_0

    .line 3553
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 3554
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 3555
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    .line 3557
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->d(I)I

    move-result v5

    .line 3558
    if-eq v0, v7, :cond_5

    if-ltz v5, :cond_5

    .line 3561
    iget v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v6, v5, v6

    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3562
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 3563
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    .line 3564
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    .line 3565
    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    .line 3566
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3567
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G()V

    .line 3569
    :cond_5
    const/high16 v3, -0x80000000

    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3570
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->C()V

    .line 3571
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3572
    if-ne v0, v7, :cond_1

    move v1, v2

    .line 3573
    goto :goto_0

    .line 3579
    :pswitch_2
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 3581
    :pswitch_3
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 3582
    if-ne v0, v4, :cond_6

    .line 3584
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    move v0, v1

    .line 3586
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    .line 3587
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->D()V

    .line 3588
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3589
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 3590
    goto :goto_0

    .line 3599
    :pswitch_4
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3600
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    .line 3601
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->E()V

    .line 3602
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    goto/16 :goto_0

    .line 3607
    :pswitch_5
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 3545
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 3579
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 2637
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 2642
    sparse-switch p1, :sswitch_data_0

    .line 2662
    :cond_0
    invoke-super {p0, p1, p2}, Lit/sephiroth/android/library/widget/h;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    .line 2645
    :sswitch_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2648
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2652
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2653
    if-eqz v1, :cond_2

    .line 2654
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    iget-wide v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:J

    invoke-virtual {p0, v1, v2, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/view/View;IJ)Z

    .line 2655
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 2657
    :cond_2
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    goto :goto_0

    .line 2642
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1783
    invoke-super/range {p0 .. p5}, Lit/sephiroth/android/library/widget/h;->onLayout(ZIIII)V

    .line 1784
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->af:Z

    .line 1785
    if-eqz p1, :cond_1

    .line 1786
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v2

    move v0, v1

    .line 1787
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1788
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 1787
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1790
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->a()V

    .line 1793
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    .line 1794
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->af:Z

    .line 1796
    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:I

    .line 1797
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1759
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1760
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->B()V

    .line 1762
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    .line 1763
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1764
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1765
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1766
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1769
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    if-ne v0, v2, :cond_1

    .line 1770
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v3

    .line 1771
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    .line 1772
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1773
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1774
    :goto_0
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v3, v4

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:I

    if-lt v3, v4, :cond_3

    if-gt v0, v1, :cond_3

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aV:Z

    .line 1776
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1773
    goto :goto_0

    .line 1774
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3

    .prologue
    .line 3389
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3390
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->onScrollChanged(IIII)V

    .line 3391
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/a$a;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/a/a$a;->a(I)V

    .line 3392
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->k()V

    .line 3394
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->awakenScrollBars()Z

    .line 3396
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 1555
    check-cast p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 1557
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lit/sephiroth/android/library/widget/h;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1558
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    .line 1560
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    int-to-long v0, v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ac:J

    .line 1562
    iget-wide v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_4

    .line 1563
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ad:Z

    .line 1564
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 1565
    iget-wide v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ab:J

    .line 1566
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:I

    .line 1567
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    .line 1568
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ae:I

    .line 1587
    :cond_0
    :goto_0
    iget-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/f/j;

    if-eqz v0, :cond_1

    .line 1588
    iget-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/f/j;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    .line 1591
    :cond_1
    iget-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/f/f;

    if-eqz v0, :cond_2

    .line 1592
    iget-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/f/f;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    .line 1595
    :cond_2
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    .line 1597
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 1598
    iget-boolean v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 1599
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/a/a/b;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    .line 1603
    :cond_3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    .line 1604
    return-void

    .line 1569
    :cond_4
    iget-wide v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 1570
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectedPositionInt(I)V

    .line 1572
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    .line 1573
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    .line 1574
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ad:Z

    .line 1575
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 1576
    iget-wide v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ab:J

    .line 1577
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:I

    .line 1578
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    .line 1579
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ae:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1469
    invoke-super {p0}, Lit/sephiroth/android/library/widget/h;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1471
    new-instance v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    invoke-direct {v3, v0}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1474
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-wide v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    iput-wide v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    .line 1477
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-wide v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    iput-wide v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    .line 1478
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    .line 1479
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    .line 1480
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    .line 1481
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;

    .line 1482
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    iput-boolean v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    .line 1483
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    .line 1484
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/f/j;

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/f/j;

    .line 1485
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/f/f;

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/f/f;

    move-object v0, v3

    .line 1547
    :goto_0
    return-object v0

    .line 1489
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-lez v0, :cond_2

    move v0, v1

    .line 1490
    :goto_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemId()J

    move-result-wide v4

    .line 1491
    iput-wide v4, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    .line 1492
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v6

    iput v6, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    .line 1494
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    .line 1496
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    .line 1497
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemPosition()I

    move-result v0

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    .line 1498
    iput-wide v8, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    .line 1525
    :goto_2
    const/4 v0, 0x0

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;

    .line 1526
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_6

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_6

    :goto_3
    iput-boolean v1, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    .line 1529
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    if-eqz v0, :cond_1

    .line 1531
    :try_start_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-virtual {v0}, Landroid/support/v4/f/j;->a()Landroid/support/v4/f/j;

    move-result-object v0

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/f/j;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1537
    :cond_1
    :goto_4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    if-eqz v0, :cond_8

    .line 1538
    new-instance v0, Landroid/support/v4/f/f;

    invoke-direct {v0}, Landroid/support/v4/f/f;-><init>()V

    .line 1539
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    invoke-virtual {v1}, Landroid/support/v4/f/f;->b()I

    move-result v1

    .line 1540
    :goto_5
    if-ge v2, v1, :cond_7

    .line 1541
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    invoke-virtual {v4, v2}, Landroid/support/v4/f/f;->a(I)J

    move-result-wide v4

    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    invoke-virtual {v6, v2}, Landroid/support/v4/f/f;->b(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/support/v4/f/f;->b(JLjava/lang/Object;)V

    .line 1540
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_2
    move v0, v2

    .line 1489
    goto :goto_1

    .line 1500
    :cond_3
    if-eqz v0, :cond_5

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    if-lez v0, :cond_5

    .line 1510
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1511
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    .line 1512
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    .line 1513
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-lt v0, v4, :cond_4

    .line 1514
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    add-int/lit8 v0, v0, -0x1

    .line 1516
    :cond_4
    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    .line 1517
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iput-wide v4, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    goto :goto_2

    .line 1519
    :cond_5
    iput v2, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    .line 1520
    iput-wide v8, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    .line 1521
    iput v2, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    goto :goto_2

    :cond_6
    move v1, v2

    .line 1526
    goto :goto_3

    .line 1532
    :catch_0
    move-exception v0

    .line 1533
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    .line 1534
    new-instance v0, Landroid/support/v4/f/j;

    invoke-direct {v0}, Landroid/support/v4/f/j;-><init>()V

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/f/j;

    goto :goto_4

    .line 1543
    :cond_7
    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/f/f;

    .line 1545
    :cond_8
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    move-object v0, v3

    .line 1547
    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 2152
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    .line 2154
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->x()V

    .line 2156
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 3025
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3028
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    move v2, v0

    .line 3384
    :cond_1
    :goto_1
    return v2

    :cond_2
    move v0, v1

    .line 3028
    goto :goto_0

    .line 3031
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    if-eqz v0, :cond_4

    .line 3032
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$j;->a()V

    .line 3035
    :cond_4
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:Z

    if-nez v0, :cond_5

    move v2, v1

    .line 3040
    goto :goto_1

    .line 3043
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3047
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->D()V

    .line 3048
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3050
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 3052
    :pswitch_1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    packed-switch v0, :pswitch_data_1

    .line 3068
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    .line 3069
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v4, v0

    .line 3070
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v5, v0

    .line 3071
    invoke-virtual {p0, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->a(II)I

    move-result v3

    .line 3072
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-nez v0, :cond_29

    .line 3073
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-eq v0, v6, :cond_9

    if-ltz v3, :cond_9

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3078
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3079
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aC:Ljava/lang/Runnable;

    if-nez v0, :cond_6

    .line 3080
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$d;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$d;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aC:Ljava/lang/Runnable;

    .line 3082
    :cond_6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aC:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p0, v0, v6, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v3

    .line 3095
    :goto_2
    if-ltz v0, :cond_7

    .line 3097
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3098
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 3100
    :cond_7
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    .line 3101
    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    .line 3102
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    .line 3103
    const/high16 v0, -0x80000000

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3108
    :goto_3
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3109
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-nez v0, :cond_1

    .line 3110
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aC:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 3054
    :pswitch_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$e;->b()V

    .line 3055
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    if-eqz v0, :cond_8

    .line 3056
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$j;->a()V

    .line 3058
    :cond_8
    const/4 v0, 0x5

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3059
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    .line 3060
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    .line 3061
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    .line 3062
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    .line 3063
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aU:I

    goto :goto_3

    .line 3084
    :cond_9
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-ne v0, v6, :cond_29

    .line 3086
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->F()V

    .line 3087
    const/4 v0, 0x3

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3088
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    .line 3089
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->d(I)I

    move-result v0

    .line 3090
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView$e;->c()V

    goto :goto_2

    .line 3117
    :pswitch_3
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 3118
    if-ne v0, v10, :cond_28

    .line 3120
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    .line 3122
    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    .line 3124
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-eqz v1, :cond_a

    .line 3127
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    .line 3130
    :cond_a
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    packed-switch v1, :pswitch_data_2

    :pswitch_4
    goto/16 :goto_1

    .line 3136
    :pswitch_5
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->g(I)Z

    goto/16 :goto_1

    .line 3140
    :pswitch_6
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->h(I)V

    goto/16 :goto_1

    .line 3147
    :pswitch_7
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    packed-switch v0, :pswitch_data_3

    .line 3288
    :cond_b
    :goto_5
    :pswitch_8
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    .line 3290
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Landroid/support/v4/widget/f;

    if-eqz v0, :cond_c

    .line 3291
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Landroid/support/v4/widget/f;

    invoke-virtual {v0}, Landroid/support/v4/widget/f;->c()Z

    .line 3292
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Landroid/support/v4/widget/f;

    invoke-virtual {v0}, Landroid/support/v4/widget/f;->c()Z

    .line 3296
    :cond_c
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 3298
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3299
    if-eqz v0, :cond_d

    .line 3300
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Lit/sephiroth/android/library/widget/AbsHListView$c;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3303
    :cond_d
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->E()V

    .line 3305
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    goto/16 :goto_1

    .line 3151
    :pswitch_9
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    .line 3152
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3155
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_14

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_14

    move v0, v2

    .line 3157
    :goto_6
    if-eqz v4, :cond_18

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_18

    if-eqz v0, :cond_18

    .line 3158
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-eqz v0, :cond_e

    .line 3159
    invoke-virtual {v4, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3162
    :cond_e
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Lit/sephiroth/android/library/widget/AbsHListView$i;

    if-nez v0, :cond_f

    .line 3163
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$i;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lit/sephiroth/android/library/widget/AbsHListView$i;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/a;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Lit/sephiroth/android/library/widget/AbsHListView$i;

    .line 3166
    :cond_f
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Lit/sephiroth/android/library/widget/AbsHListView$i;

    .line 3167
    iput v3, v5, Lit/sephiroth/android/library/widget/AbsHListView$i;->a:I

    .line 3168
    invoke-virtual {v5}, Lit/sephiroth/android/library/widget/AbsHListView$i;->a()V

    .line 3170
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 3172
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-eqz v0, :cond_10

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-ne v0, v2, :cond_17

    .line 3173
    :cond_10
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 3174
    if-eqz v6, :cond_11

    .line 3175
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-nez v0, :cond_15

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aC:Ljava/lang/Runnable;

    :goto_7
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3178
    :cond_11
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    .line 3180
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3181
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3182
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectedPositionInt(I)V

    .line 3183
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    .line 3184
    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3185
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    invoke-virtual {p0, v0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->a(ILandroid/view/View;)V

    .line 3186
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    .line 3187
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 3188
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3189
    if-eqz v0, :cond_12

    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_12

    .line 3190
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 3193
    :cond_12
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    .line 3194
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3196
    :cond_13
    new-instance v0, Lit/sephiroth/android/library/widget/a;

    invoke-direct {v0, p0, v4, v5}, Lit/sephiroth/android/library/widget/a;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Lit/sephiroth/android/library/widget/AbsHListView$i;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:Ljava/lang/Runnable;

    .line 3208
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {p0, v0, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_14
    move v0, v1

    .line 3155
    goto/16 :goto_6

    .line 3175
    :cond_15
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Lit/sephiroth/android/library/widget/AbsHListView$c;

    goto :goto_7

    .line 3211
    :cond_16
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3212
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j()V

    goto/16 :goto_1

    .line 3215
    :cond_17
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3216
    invoke-virtual {v5}, Lit/sephiroth/android/library/widget/AbsHListView$i;->run()V

    .line 3219
    :cond_18
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3220
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j()V

    goto/16 :goto_5

    .line 3223
    :pswitch_a
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    .line 3224
    if-lez v0, :cond_1f

    .line 3225
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 3226
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    .line 3227
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 3228
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    .line 3229
    iget v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    if-nez v7, :cond_19

    if-lt v3, v5, :cond_19

    iget v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v7, v0

    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-ge v7, v8, :cond_19

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v6

    if-gt v4, v7, :cond_19

    .line 3231
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3232
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    goto/16 :goto_5

    .line 3234
    :cond_19
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    .line 3235
    const/16 v8, 0x3e8

    iget v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aN:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3237
    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v7

    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 3242
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aM:I

    if-le v8, v9, :cond_1d

    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    if-nez v8, :cond_1a

    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:I

    sub-int/2addr v5, v8

    if-eq v3, v5, :cond_1d

    :cond_1a
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v0, v3

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-ne v0, v3, :cond_1b

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:I

    add-int/2addr v0, v6

    if-eq v4, v0, :cond_1d

    .line 3247
    :cond_1b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    if-nez v0, :cond_1c

    .line 3248
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$e;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    .line 3250
    :cond_1c
    invoke-virtual {p0, v11}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    .line 3252
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    neg-int v3, v7

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AbsHListView$e;->a(I)V

    goto/16 :goto_5

    .line 3254
    :cond_1d
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3255
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    .line 3256
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    if-eqz v0, :cond_1e

    .line 3257
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$e;->b()V

    .line 3259
    :cond_1e
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    if-eqz v0, :cond_b

    .line 3260
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$j;->a()V

    goto/16 :goto_5

    .line 3265
    :cond_1f
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3266
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    goto/16 :goto_5

    .line 3271
    :pswitch_b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    if-nez v0, :cond_20

    .line 3272
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$e;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    .line 3274
    :cond_20
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Landroid/view/VelocityTracker;

    .line 3275
    const/16 v3, 0x3e8

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aN:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3276
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 3278
    invoke-virtual {p0, v11}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    .line 3279
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aM:I

    if-le v3, v4, :cond_21

    .line 3280
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    neg-int v0, v0

    invoke-virtual {v3, v0}, Lit/sephiroth/android/library/widget/AbsHListView$e;->b(I)V

    goto/16 :goto_5

    .line 3282
    :cond_21
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$e;->a()V

    goto/16 :goto_5

    .line 3310
    :pswitch_c
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    packed-switch v0, :pswitch_data_4

    .line 3323
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3324
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    .line 3325
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3326
    if-eqz v0, :cond_22

    .line 3327
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3329
    :cond_22
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G()V

    .line 3331
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3332
    if-eqz v0, :cond_23

    .line 3333
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Lit/sephiroth/android/library/widget/AbsHListView$c;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3336
    :cond_23
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->E()V

    .line 3339
    :goto_8
    :pswitch_d
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Landroid/support/v4/widget/f;

    if-eqz v0, :cond_24

    .line 3340
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Landroid/support/v4/widget/f;

    invoke-virtual {v0}, Landroid/support/v4/widget/f;->c()Z

    .line 3341
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Landroid/support/v4/widget/f;

    invoke-virtual {v0}, Landroid/support/v4/widget/f;->c()Z

    .line 3343
    :cond_24
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    goto/16 :goto_1

    .line 3312
    :pswitch_e
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    if-nez v0, :cond_25

    .line 3313
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$e;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    .line 3315
    :cond_25
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$e;->a()V

    goto :goto_8

    .line 3348
    :pswitch_f
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Landroid/view/MotionEvent;)V

    .line 3349
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    .line 3350
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    .line 3351
    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(II)I

    move-result v1

    .line 3352
    if-ltz v1, :cond_26

    .line 3354
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3355
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 3356
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    .line 3358
    :cond_26
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    goto/16 :goto_1

    .line 3364
    :pswitch_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 3365
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 3366
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    .line 3367
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 3368
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    .line 3369
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:I

    .line 3370
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    .line 3371
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    .line 3372
    invoke-virtual {p0, v4, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->a(II)I

    move-result v0

    .line 3373
    if-ltz v0, :cond_27

    .line 3375
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3376
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 3377
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    .line 3379
    :cond_27
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    goto/16 :goto_1

    :cond_28
    move v1, v0

    goto/16 :goto_4

    :cond_29
    move v0, v3

    goto/16 :goto_2

    .line 3050
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_c
        :pswitch_0
        :pswitch_10
        :pswitch_f
    .end packed-switch

    .line 3052
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_2
    .end packed-switch

    .line 3130
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 3147
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
    .end packed-switch

    .line 3310
    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2

    .prologue
    .line 2964
    if-eqz p1, :cond_2

    .line 2966
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->m()V

    .line 2970
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2973
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    .line 2975
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j()V

    .line 2993
    :cond_1
    :goto_0
    return-void

    .line 2977
    :cond_2
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 2978
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 2979
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    if-eqz v0, :cond_4

    .line 2980
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$e;->b()V

    .line 2982
    :cond_4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    if-eqz v0, :cond_5

    .line 2983
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$j;->a()V

    .line 2986
    :cond_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2987
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/a/a$a;->a(I)V

    .line 2988
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->H()V

    .line 2989
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2410
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/h;->onWindowFocusChanged(Z)V

    .line 2412
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 2414
    :goto_0
    if-nez p1, :cond_4

    .line 2415
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2416
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    if-eqz v3, :cond_1

    .line 2417
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2420
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView$e;->b()V

    .line 2421
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    if-eqz v3, :cond_0

    .line 2422
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView$j;->a()V

    .line 2424
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2425
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/a$a;

    invoke-virtual {v3, v1}, Lit/sephiroth/android/library/a/a$a;->a(I)V

    .line 2426
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->H()V

    .line 2427
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 2432
    :cond_1
    if-ne v0, v2, :cond_2

    .line 2434
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 2453
    :cond_2
    :goto_1
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:I

    .line 2454
    return-void

    :cond_3
    move v0, v2

    .line 2412
    goto :goto_0

    .line 2438
    :cond_4
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 2440
    if-ne v0, v2, :cond_5

    .line 2442
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->p()Z

    goto :goto_1

    .line 2446
    :cond_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->m()V

    .line 2447
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    .line 2448
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    goto :goto_1
.end method

.method p()Z
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 4843
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v9

    .line 4845
    if-gtz v9, :cond_0

    .line 4940
    :goto_0
    return v4

    .line 4851
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 4852
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v7, v0, v1

    .line 4853
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    .line 4854
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 4857
    if-lt v2, v1, :cond_4

    add-int v0, v1, v9

    if-ge v2, v0, :cond_4

    .line 4860
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v0, v2, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4861
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 4862
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v9

    .line 4865
    if-ge v0, v5, :cond_3

    .line 4866
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    add-int/2addr v0, v5

    :cond_1
    :goto_1
    move v5, v0

    move v0, v3

    .line 4921
    :goto_2
    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 4922
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4923
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    if-eqz v7, :cond_2

    .line 4924
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$j;

    invoke-virtual {v7}, Lit/sephiroth/android/library/widget/AbsHListView$j;->a()V

    .line 4926
    :cond_2
    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 4927
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G()V

    .line 4928
    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    .line 4929
    invoke-virtual {p0, v2, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->b(IZ)I

    move-result v0

    .line 4930
    if-lt v0, v1, :cond_a

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getLastVisiblePosition()I

    move-result v1

    if-gt v0, v1, :cond_a

    .line 4931
    const/4 v1, 0x4

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    .line 4932
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j()V

    .line 4933
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectionInt(I)V

    .line 4934
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->b()V

    .line 4938
    :goto_3
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    .line 4940
    if-ltz v0, :cond_b

    :goto_4
    move v4, v3

    goto :goto_0

    .line 4867
    :cond_3
    if-le v9, v7, :cond_1

    .line 4868
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    sub-int/2addr v0, v5

    goto :goto_1

    .line 4871
    :cond_4
    if-ge v2, v1, :cond_7

    move v7, v4

    move v0, v4

    .line 4874
    :goto_5
    if-ge v7, v9, :cond_11

    .line 4875
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4876
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 4878
    if-nez v7, :cond_10

    .line 4882
    if-gtz v1, :cond_5

    if-ge v2, v5, :cond_f

    .line 4885
    :cond_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    add-int/2addr v0, v5

    move v5, v2

    .line 4888
    :goto_6
    if-lt v2, v0, :cond_6

    .line 4890
    add-int v0, v1, v7

    :goto_7
    move v5, v2

    move v2, v0

    move v0, v3

    .line 4874
    goto :goto_2

    :cond_6
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v13, v0

    move v0, v5

    move v5, v13

    goto :goto_5

    .line 4896
    :cond_7
    iget v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    .line 4898
    add-int v0, v1, v9

    add-int/lit8 v0, v0, -0x1

    .line 4900
    add-int/lit8 v2, v9, -0x1

    move v8, v2

    move v5, v4

    :goto_8
    if-ltz v8, :cond_e

    .line 4901
    invoke-virtual {p0, v8}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 4902
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 4903
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    .line 4905
    add-int/lit8 v12, v9, -0x1

    if-ne v8, v12, :cond_d

    .line 4907
    add-int v5, v1, v9

    if-lt v5, v10, :cond_8

    if-le v11, v7, :cond_c

    .line 4908
    :cond_8
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    sub-int v5, v7, v5

    move v7, v2

    .line 4912
    :goto_9
    if-gt v11, v5, :cond_9

    .line 4913
    add-int v0, v1, v8

    move v5, v2

    move v2, v0

    move v0, v4

    .line 4915
    goto/16 :goto_2

    .line 4900
    :cond_9
    add-int/lit8 v2, v8, -0x1

    move v8, v2

    move v13, v5

    move v5, v7

    move v7, v13

    goto :goto_8

    :cond_a
    move v0, v6

    .line 4936
    goto :goto_3

    :cond_b
    move v3, v4

    .line 4940
    goto :goto_4

    :cond_c
    move v5, v7

    move v7, v2

    goto :goto_9

    :cond_d
    move v13, v7

    move v7, v5

    move v5, v13

    goto :goto_9

    :cond_e
    move v2, v0

    move v0, v4

    goto/16 :goto_2

    :cond_f
    move v0, v5

    move v5, v2

    goto :goto_6

    :cond_10
    move v13, v5

    move v5, v0

    move v0, v13

    goto :goto_6

    :cond_11
    move v2, v0

    move v0, v1

    goto :goto_7
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/16 v4, 0xc8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1185
    invoke-super {p0, p1, p2}, Lit/sephiroth/android/library/widget/h;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1206
    :goto_0
    return v0

    .line 1188
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1206
    goto :goto_0

    .line 1190
    :sswitch_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 1191
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 1192
    invoke-virtual {p0, v1, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->c(II)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1196
    goto :goto_0

    .line 1198
    :sswitch_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    if-lez v2, :cond_2

    .line 1199
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 1200
    neg-int v1, v1

    invoke-virtual {p0, v1, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->c(II)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1204
    goto :goto_0

    .line 1188
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method q()V
    .locals 13

    .prologue
    const/16 v12, 0xb

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4948
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-virtual {v0}, Landroid/support/v4/f/j;->c()V

    move v1, v6

    move v2, v6

    .line 4951
    :goto_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    invoke-virtual {v0}, Landroid/support/v4/f/f;->b()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 4952
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/f;->a(I)J

    move-result-wide v4

    .line 4953
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/f;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4955
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    .line 4956
    cmp-long v0, v4, v8

    if-eqz v0, :cond_3

    .line 4958
    add-int/lit8 v0, v3, -0x14

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4959
    add-int/lit8 v8, v3, 0x14

    iget v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 4961
    :goto_1
    if-ge v0, v8, :cond_6

    .line 4962
    iget-object v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v9, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    .line 4963
    cmp-long v9, v4, v10

    if-nez v9, :cond_2

    .line 4965
    iget-object v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/support/v4/f/j;->b(ILjava/lang/Object;)V

    .line 4966
    iget-object v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/support/v4/f/f;->a(ILjava/lang/Object;)V

    move v0, v7

    .line 4971
    :goto_2
    if-nez v0, :cond_1

    .line 4972
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/f/f;->b(J)V

    .line 4973
    add-int/lit8 v0, v1, -0x1

    .line 4974
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    .line 4977
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v12, :cond_0

    .line 4978
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 4979
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v1, Lit/sephiroth/android/library/a/a/b;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/ActionMode;

    invoke-virtual/range {v1 .. v6}, Lit/sephiroth/android/library/a/a/b;->a(Landroid/view/ActionMode;IJZ)V

    :cond_0
    move v1, v0

    move v2, v7

    :cond_1
    move v0, v1

    move v1, v2

    .line 4951
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 4961
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4984
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/f/j;->b(ILjava/lang/Object;)V

    move v0, v1

    move v1, v2

    goto :goto_3

    .line 4988
    :cond_4
    if-eqz v2, :cond_5

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v12, :cond_5

    .line 4989
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 4991
    :cond_5
    return-void

    :cond_6
    move v0, v6

    goto :goto_2
.end method

.method protected r()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 4998
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    .line 4999
    iget v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:I

    .line 5000
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:I

    .line 5002
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5003
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->q()V

    .line 5006
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->c()V

    .line 5008
    if-lez v5, :cond_e

    .line 5013
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ad:Z

    if-eqz v0, :cond_7

    .line 5015
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ad:Z

    .line 5016
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 5018
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 5019
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    .line 5135
    :cond_1
    :goto_0
    return-void

    .line 5021
    :cond_2
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    if-ne v0, v4, :cond_6

    .line 5022
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aV:Z

    if-eqz v0, :cond_3

    .line 5023
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aV:Z

    .line 5024
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    goto :goto_0

    .line 5027
    :cond_3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v7

    .line 5028
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    .line 5029
    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5030
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 5031
    :goto_1
    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v7, v8

    if-lt v7, v6, :cond_5

    if-gt v0, v1, :cond_5

    .line 5033
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    goto :goto_0

    :cond_4
    move v0, v1

    .line 5030
    goto :goto_1

    .line 5038
    :cond_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->awakenScrollBars()Z

    .line 5041
    :cond_6
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ae:I

    packed-switch v0, :pswitch_data_0

    .line 5089
    :cond_7
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 5091
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemPosition()I

    move-result v0

    .line 5094
    if-lt v0, v5, :cond_8

    .line 5095
    add-int/lit8 v0, v5, -0x1

    .line 5097
    :cond_8
    if-gez v0, :cond_9

    move v0, v2

    .line 5102
    :cond_9
    invoke-virtual {p0, v0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->b(IZ)I

    move-result v1

    .line 5104
    if-ltz v1, :cond_c

    .line 5105
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 5043
    :pswitch_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5048
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    .line 5049
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v5, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:I

    goto :goto_0

    .line 5055
    :cond_a
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->w()I

    move-result v0

    .line 5056
    if-ltz v0, :cond_7

    .line 5058
    invoke-virtual {p0, v0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->b(IZ)I

    move-result v1

    .line 5059
    if-ne v1, v0, :cond_7

    .line 5061
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:I

    .line 5063
    iget-wide v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ac:J

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_b

    .line 5066
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    .line 5074
    :goto_2
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 5070
    :cond_b
    const/4 v1, 0x2

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    goto :goto_2

    .line 5082
    :pswitch_1
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    .line 5083
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v5, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:I

    goto/16 :goto_0

    .line 5109
    :cond_c
    invoke-virtual {p0, v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->b(IZ)I

    move-result v0

    .line 5110
    if-ltz v0, :cond_e

    .line 5111
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 5118
    :cond_d
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    if-gez v0, :cond_1

    .line 5126
    :cond_e
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K:Z

    if-eqz v0, :cond_f

    move v0, v3

    :goto_3
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    .line 5127
    iput v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    .line 5128
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:J

    .line 5129
    iput v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ak:I

    .line 5130
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->al:J

    .line 5131
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ad:Z

    .line 5132
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 5133
    iput v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    .line 5134
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->v()V

    goto/16 :goto_0

    :cond_f
    move v0, v4

    .line 5126
    goto :goto_3

    .line 5041
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .prologue
    .line 3522
    if-eqz p1, :cond_0

    .line 3523
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->E()V

    .line 3525
    :cond_0
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/h;->requestDisallowInterceptTouchEvent(Z)V

    .line 3526
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1623
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->af:Z

    if-nez v0, :cond_0

    .line 1624
    invoke-super {p0}, Lit/sephiroth/android/library/widget/h;->requestLayout()V

    .line 1626
    :cond_0
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3

    .prologue
    .line 1144
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    .line 1145
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1146
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getLastVisiblePosition()I

    move-result v1

    .line 1147
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aZ:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ba:I

    if-ne v2, v1, :cond_0

    .line 1156
    :goto_0
    return-void

    .line 1151
    :cond_0
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aZ:I

    .line 1152
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ba:I

    .line 1155
    :cond_1
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/h;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 724
    if-eqz p1, :cond_0

    .line 725
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Z

    .line 726
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    if-nez v0, :cond_0

    .line 728
    new-instance v0, Landroid/support/v4/f/f;

    invoke-direct {v0}, Landroid/support/v4/f/f;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    .line 732
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    invoke-virtual {v0}, Landroid/support/v4/f/j;->c()V

    .line 736
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    if-eqz v0, :cond_2

    .line 737
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    invoke-virtual {v0}, Landroid/support/v4/f/f;->c()V

    .line 739
    :cond_2
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3

    .prologue
    .line 5272
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:I

    if-eq p1, v0, :cond_1

    .line 5273
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:I

    .line 5274
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 5275
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 5276
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 5275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5278
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->f(I)V

    .line 5280
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/16 v1, 0xb

    .line 1019
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    .line 1021
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 1022
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1024
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 1025
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1027
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    .line 1031
    :cond_1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-eqz v0, :cond_4

    .line 1032
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    if-nez v0, :cond_2

    .line 1033
    new-instance v0, Landroid/support/v4/f/j;

    invoke-direct {v0}, Landroid/support/v4/f/j;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/f/j;

    .line 1035
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    if-nez v0, :cond_3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1036
    new-instance v0, Landroid/support/v4/f/f;

    invoke-direct {v0}, Landroid/support/v4/f/f;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/f/f;

    .line 1039
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_4

    .line 1040
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1041
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->a()V

    .line 1042
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setLongClickable(Z)V

    .line 1046
    :cond_4
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    .prologue
    .line 2198
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l:Z

    .line 2199
    return-void
.end method

.method public setFriction(F)V
    .locals 1

    .prologue
    .line 4358
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    if-nez v0, :cond_0

    .line 4359
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$e;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    .line 4361
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView$e;->a(Lit/sephiroth/android/library/widget/AbsHListView$e;)Lit/sephiroth/android/library/widget/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/o;->b(F)V

    .line 4362
    return-void
.end method

.method public setMultiChoiceModeListener(Lit/sephiroth/android/library/a/a/a;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1059
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1060
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1061
    new-instance v0, Lit/sephiroth/android/library/a/a/b;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/a/a/b;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    .line 1063
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/a/a/b;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/a/a/b;->a(Lit/sephiroth/android/library/a/a/a;)V

    .line 1067
    :goto_0
    return-void

    .line 1065
    :cond_1
    const-string v0, "AbsListView"

    const-string v1, "setMultiChoiceModeListener not supported for this version of Android"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnScrollListener(Lit/sephiroth/android/library/widget/AbsHListView$h;)V
    .locals 0

    .prologue
    .line 1125
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aw:Lit/sephiroth/android/library/widget/AbsHListView$h;

    .line 1126
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->b()V

    .line 1127
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 706
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 707
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Landroid/support/v4/widget/f;

    if-nez v0, :cond_0

    .line 708
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 709
    new-instance v1, Landroid/support/v4/widget/f;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Landroid/support/v4/widget/f;

    .line 710
    new-instance v1, Landroid/support/v4/widget/f;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Landroid/support/v4/widget/f;

    .line 716
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/h;->setOverScrollMode(I)V

    .line 717
    return-void

    .line 713
    :cond_1
    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Landroid/support/v4/widget/f;

    .line 714
    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:Landroid/support/v4/widget/f;

    goto :goto_0
.end method

.method public setRecyclerListener(Lit/sephiroth/android/library/widget/AbsHListView$l;)V
    .locals 1

    .prologue
    .line 5350
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-static {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->a(Lit/sephiroth/android/library/widget/AbsHListView$k;Lit/sephiroth/android/library/widget/AbsHListView$l;)Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 5351
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1

    .prologue
    .line 1237
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1238
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G()V

    .line 1240
    :cond_0
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Z

    .line 1241
    return-void
.end method

.method public abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1

    .prologue
    .line 2210
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2211
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 2214
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2215
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2216
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2218
    :cond_0
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    .line 2219
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2220
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2221
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:I

    .line 2222
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r:I

    .line 2223
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s:I

    .line 2224
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t:I

    .line 2225
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2226
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j()V

    .line 2227
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0

    .prologue
    .line 1103
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ax:Z

    .line 1104
    return-void
.end method

.method public setStackFromRight(Z)V
    .locals 1

    .prologue
    .line 1277
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K:Z

    if-eq v0, p1, :cond_0

    .line 1278
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K:Z

    .line 1279
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->c()V

    .line 1281
    :cond_0
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0

    .prologue
    .line 5244
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    .line 5245
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0

    .prologue
    .line 4371
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:F

    .line 4372
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2614
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/view/View;)I

    move-result v3

    .line 2615
    if-ltz v3, :cond_1

    .line 2616
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2619
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Lit/sephiroth/android/library/widget/h$d;

    if-eqz v1, :cond_0

    .line 2620
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Lit/sephiroth/android/library/widget/h$d;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/widget/h$d;->a(Lit/sephiroth/android/library/widget/h;Landroid/view/View;IJ)Z

    move-result v0

    .line 2623
    :cond_0
    if-nez v0, :cond_1

    .line 2624
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2627
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/h;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 2632
    :cond_1
    return v0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 2339
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/h;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
