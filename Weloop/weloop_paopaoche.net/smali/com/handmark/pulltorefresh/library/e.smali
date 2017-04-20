.class public abstract Lcom/handmark/pulltorefresh/library/e;
.super Landroid/widget/LinearLayout;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/e$1;,
        Lcom/handmark/pulltorefresh/library/e$g;,
        Lcom/handmark/pulltorefresh/library/e$i;,
        Lcom/handmark/pulltorefresh/library/e$j;,
        Lcom/handmark/pulltorefresh/library/e$h;,
        Lcom/handmark/pulltorefresh/library/e$f;,
        Lcom/handmark/pulltorefresh/library/e$e;,
        Lcom/handmark/pulltorefresh/library/e$d;,
        Lcom/handmark/pulltorefresh/library/e$c;,
        Lcom/handmark/pulltorefresh/library/e$b;,
        Lcom/handmark/pulltorefresh/library/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;"
    }
.end annotation


# instance fields
.field a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:Lcom/handmark/pulltorefresh/library/e$j;

.field private i:Lcom/handmark/pulltorefresh/library/e$b;

.field private j:Lcom/handmark/pulltorefresh/library/e$b;

.field private k:Landroid/widget/FrameLayout;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/view/animation/Interpolator;

.field private r:Lcom/handmark/pulltorefresh/library/e$a;

.field private s:Lcom/handmark/pulltorefresh/library/a/d;

.field private t:Lcom/handmark/pulltorefresh/library/a/d;

.field private u:Lcom/handmark/pulltorefresh/library/e$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/e$e",
            "<TT;>;"
        }
    .end annotation
.end field

.field private v:Lcom/handmark/pulltorefresh/library/e$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/e$f",
            "<TT;>;"
        }
    .end annotation
.end field

.field private w:Lcom/handmark/pulltorefresh/library/e$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/e$d",
            "<TT;>;"
        }
    .end annotation
.end field

.field private x:Lcom/handmark/pulltorefresh/library/e$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/e",
            "<TT;>.i;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 109
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/e;->g:Z

    .line 79
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$j;->a:Lcom/handmark/pulltorefresh/library/e$j;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->h:Lcom/handmark/pulltorefresh/library/e$j;

    .line 80
    invoke-static {}, Lcom/handmark/pulltorefresh/library/e$b;->a()Lcom/handmark/pulltorefresh/library/e$b;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    .line 86
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/e;->l:Z

    .line 87
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/e;->m:Z

    .line 88
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/e;->n:Z

    .line 89
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/e;->o:Z

    .line 90
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/e;->p:Z

    .line 93
    invoke-static {}, Lcom/handmark/pulltorefresh/library/e$a;->a()Lcom/handmark/pulltorefresh/library/e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->r:Lcom/handmark/pulltorefresh/library/e$a;

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/e;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/e;->g:Z

    .line 79
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$j;->a:Lcom/handmark/pulltorefresh/library/e$j;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->h:Lcom/handmark/pulltorefresh/library/e$j;

    .line 80
    invoke-static {}, Lcom/handmark/pulltorefresh/library/e$b;->a()Lcom/handmark/pulltorefresh/library/e$b;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    .line 86
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/e;->l:Z

    .line 87
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/e;->m:Z

    .line 88
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/e;->n:Z

    .line 89
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/e;->o:Z

    .line 90
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/e;->p:Z

    .line 93
    invoke-static {}, Lcom/handmark/pulltorefresh/library/e$a;->a()Lcom/handmark/pulltorefresh/library/e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->r:Lcom/handmark/pulltorefresh/library/e$a;

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/e;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 119
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/e;->g:Z

    .line 79
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$j;->a:Lcom/handmark/pulltorefresh/library/e$j;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->h:Lcom/handmark/pulltorefresh/library/e$j;

    .line 80
    invoke-static {}, Lcom/handmark/pulltorefresh/library/e$b;->a()Lcom/handmark/pulltorefresh/library/e$b;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    .line 86
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/e;->l:Z

    .line 87
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/e;->m:Z

    .line 88
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/e;->n:Z

    .line 89
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/e;->o:Z

    .line 90
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/e;->p:Z

    .line 93
    invoke-static {}, Lcom/handmark/pulltorefresh/library/e$a;->a()Lcom/handmark/pulltorefresh/library/e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->r:Lcom/handmark/pulltorefresh/library/e$a;

    .line 120
    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/e;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;Lcom/handmark/pulltorefresh/library/e$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 126
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/e;->g:Z

    .line 79
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$j;->a:Lcom/handmark/pulltorefresh/library/e$j;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->h:Lcom/handmark/pulltorefresh/library/e$j;

    .line 80
    invoke-static {}, Lcom/handmark/pulltorefresh/library/e$b;->a()Lcom/handmark/pulltorefresh/library/e$b;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    .line 86
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/e;->l:Z

    .line 87
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/e;->m:Z

    .line 88
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/e;->n:Z

    .line 89
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/e;->o:Z

    .line 90
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/e;->p:Z

    .line 93
    invoke-static {}, Lcom/handmark/pulltorefresh/library/e$a;->a()Lcom/handmark/pulltorefresh/library/e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->r:Lcom/handmark/pulltorefresh/library/e$a;

    .line 127
    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    .line 128
    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/e;->r:Lcom/handmark/pulltorefresh/library/e$a;

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/e;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method private final a(IJ)V
    .locals 8

    .prologue
    .line 1311
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/e;->a(IJJLcom/handmark/pulltorefresh/library/e$g;)V

    .line 1312
    return-void
.end method

.method private final a(IJJLcom/handmark/pulltorefresh/library/e$g;)V
    .locals 8

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->x:Lcom/handmark/pulltorefresh/library/e$i;

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->x:Lcom/handmark/pulltorefresh/library/e$i;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/e$i;->a()V

    .line 1321
    :cond_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$1;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/e$h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/e$h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1327
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getScrollY()I

    move-result v2

    .line 1331
    :goto_0
    if-eq v2, p1, :cond_2

    .line 1332
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->q:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 1334
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->q:Landroid/view/animation/Interpolator;

    .line 1336
    :cond_1
    new-instance v0, Lcom/handmark/pulltorefresh/library/e$i;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/e$i;-><init>(Lcom/handmark/pulltorefresh/library/e;IIJLcom/handmark/pulltorefresh/library/e$g;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->x:Lcom/handmark/pulltorefresh/library/e$i;

    .line 1339
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_3

    .line 1340
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->x:Lcom/handmark/pulltorefresh/library/e$i;

    invoke-virtual {p0, v0, p4, p5}, Lcom/handmark/pulltorefresh/library/e;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1345
    :cond_2
    :goto_1
    return-void

    .line 1323
    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getScrollX()I

    move-result v2

    goto :goto_0

    .line 1342
    :cond_3
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->x:Lcom/handmark/pulltorefresh/library/e$i;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/e;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1321
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 1100
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->k:Landroid/widget/FrameLayout;

    .line 1101
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1105
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->k:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/e;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1107
    return-void
.end method

.method static synthetic a(Lcom/handmark/pulltorefresh/library/e;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/e;->n()V

    return-void
.end method

.method static synthetic b(Lcom/handmark/pulltorefresh/library/e;)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->q:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1123
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$1;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/e$h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/e$h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1129
    invoke-virtual {p0, v4}, Lcom/handmark/pulltorefresh/library/e;->setOrientation(I)V

    .line 1133
    :goto_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/e;->setGravity(I)V

    .line 1135
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1136
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/e;->b:I

    .line 1139
    sget-object v0, Lcom/yf/ui/R$styleable;->PullToRefresh:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1142
    sget v1, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrMode:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1143
    sget v1, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrMode:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/handmark/pulltorefresh/library/e$b;->a(I)Lcom/handmark/pulltorefresh/library/e$b;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    .line 1147
    :cond_0
    sget v1, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1148
    sget v1, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrAnimationStyle:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/handmark/pulltorefresh/library/e$a;->a(I)Lcom/handmark/pulltorefresh/library/e$a;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->r:Lcom/handmark/pulltorefresh/library/e$a;

    .line 1154
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->a:Landroid/view/View;

    .line 1155
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->a:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/handmark/pulltorefresh/library/e;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 1158
    sget-object v1, Lcom/handmark/pulltorefresh/library/e$b;->b:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {p0, p1, v1, v0}, Lcom/handmark/pulltorefresh/library/e;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/a/d;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->s:Lcom/handmark/pulltorefresh/library/a/d;

    .line 1159
    sget-object v1, Lcom/handmark/pulltorefresh/library/e$b;->c:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {p0, p1, v1, v0}, Lcom/handmark/pulltorefresh/library/e;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/a/d;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->t:Lcom/handmark/pulltorefresh/library/a/d;

    .line 1164
    sget v1, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrRefreshableViewBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1165
    sget v1, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrRefreshableViewBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1167
    if-eqz v1, :cond_2

    .line 1168
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/e;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1181
    :cond_2
    :goto_1
    sget v1, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrOverScroll:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1182
    sget v1, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrOverScroll:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/e;->o:Z

    .line 1186
    :cond_3
    sget v1, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrScrollingWhileRefreshingEnabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1187
    sget v1, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrScrollingWhileRefreshingEnabled:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/e;->m:Z

    .line 1195
    :cond_4
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/e;->a(Landroid/content/res/TypedArray;)V

    .line 1196
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1199
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->f()V

    .line 1200
    return-void

    .line 1125
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/handmark/pulltorefresh/library/e;->setOrientation(I)V

    goto/16 :goto_0

    .line 1170
    :cond_5
    sget v1, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrAdapterViewBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1172
    const-string v1, "ptrAdapterViewBackground"

    const-string v2, "ptrRefreshableViewBackground"

    invoke-static {v1, v2}, Lcom/handmark/pulltorefresh/library/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    sget v1, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrAdapterViewBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1176
    if-eqz v1, :cond_2

    .line 1177
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/e;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 1279
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$1;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/e$h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/e$h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1286
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0

    .line 1281
    :pswitch_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 1279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getMaximumPullScroll()I
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1293
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$1;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/e$h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/e$h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1298
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    return v0

    .line 1295
    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private n()V
    .locals 2

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->u:Lcom/handmark/pulltorefresh/library/e$e;

    if-eqz v0, :cond_1

    .line 1111
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->u:Lcom/handmark/pulltorefresh/library/e$e;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/e$e;->a(Lcom/handmark/pulltorefresh/library/e;)V

    .line 1119
    :cond_0
    :goto_0
    return-void

    .line 1112
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->v:Lcom/handmark/pulltorefresh/library/e$f;

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->j:Lcom/handmark/pulltorefresh/library/e$b;

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$b;->b:Lcom/handmark/pulltorefresh/library/e$b;

    if-ne v0, v1, :cond_2

    .line 1114
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->v:Lcom/handmark/pulltorefresh/library/e$f;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/e$f;->a(Lcom/handmark/pulltorefresh/library/e;)V

    goto :goto_0

    .line 1115
    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->j:Lcom/handmark/pulltorefresh/library/e$b;

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$b;->c:Lcom/handmark/pulltorefresh/library/e$b;

    if-ne v0, v1, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->v:Lcom/handmark/pulltorefresh/library/e$f;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/e$f;->b(Lcom/handmark/pulltorefresh/library/e;)V

    goto :goto_0
.end method

.method private o()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1203
    sget-object v1, Lcom/handmark/pulltorefresh/library/e$1;->c:[I

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/e$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1211
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1205
    :pswitch_1
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->d()Z

    move-result v0

    goto :goto_0

    .line 1207
    :pswitch_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->e()Z

    move-result v0

    goto :goto_0

    .line 1209
    :pswitch_3
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private p()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 1226
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$1;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/e$h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/e$h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1233
    iget v1, p0, Lcom/handmark/pulltorefresh/library/e;->f:F

    .line 1234
    iget v0, p0, Lcom/handmark/pulltorefresh/library/e;->d:F

    .line 1238
    :goto_0
    sget-object v2, Lcom/handmark/pulltorefresh/library/e$1;->c:[I

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/e;->j:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/e$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 1247
    sub-float v0, v1, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1250
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getHeaderSize()I

    move-result v0

    .line 1254
    :goto_1
    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/e;->setHeaderScroll(I)V

    .line 1256
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->i()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1257
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 1258
    sget-object v3, Lcom/handmark/pulltorefresh/library/e$1;->c:[I

    iget-object v4, p0, Lcom/handmark/pulltorefresh/library/e;->j:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v4}, Lcom/handmark/pulltorefresh/library/e$b;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    .line 1264
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/e;->s:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v3, v2}, Lcom/handmark/pulltorefresh/library/a/d;->b(F)V

    .line 1268
    :goto_2
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/e;->h:Lcom/handmark/pulltorefresh/library/e$j;

    sget-object v3, Lcom/handmark/pulltorefresh/library/e$j;->b:Lcom/handmark/pulltorefresh/library/e$j;

    if-eq v2, v3, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 1270
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$j;->b:Lcom/handmark/pulltorefresh/library/e$j;

    new-array v1, v6, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/e;->a(Lcom/handmark/pulltorefresh/library/e$j;[Z)V

    .line 1276
    :cond_0
    :goto_3
    return-void

    .line 1228
    :pswitch_0
    iget v1, p0, Lcom/handmark/pulltorefresh/library/e;->e:F

    .line 1229
    iget v0, p0, Lcom/handmark/pulltorefresh/library/e;->c:F

    goto :goto_0

    .line 1240
    :pswitch_1
    sub-float v0, v1, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1243
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getFooterSize()I

    move-result v0

    goto :goto_1

    .line 1260
    :pswitch_2
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/e;->t:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v3, v2}, Lcom/handmark/pulltorefresh/library/a/d;->b(F)V

    goto :goto_2

    .line 1271
    :cond_1
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/e;->h:Lcom/handmark/pulltorefresh/library/e$j;

    sget-object v3, Lcom/handmark/pulltorefresh/library/e$j;->b:Lcom/handmark/pulltorefresh/library/e$j;

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1273
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$j;->c:Lcom/handmark/pulltorefresh/library/e$j;

    new-array v1, v6, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/e;->a(Lcom/handmark/pulltorefresh/library/e$j;[Z)V

    goto :goto_3

    .line 1226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1238
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 1258
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method protected a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/a/d;
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->r:Lcom/handmark/pulltorefresh/library/e$a;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/e$h;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/handmark/pulltorefresh/library/e$a;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;Lcom/handmark/pulltorefresh/library/e$h;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/a/d;

    move-result-object v0

    .line 610
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/a/d;->setVisibility(I)V

    .line 611
    return-object v0
.end method

.method public final a(ZZ)Lcom/handmark/pulltorefresh/library/a;
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/e;->b(ZZ)Lcom/handmark/pulltorefresh/library/b;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 736
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$1;->c:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->j:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/e$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 747
    :goto_0
    return-void

    .line 738
    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->t:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/d;->f()V

    goto :goto_0

    .line 741
    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->s:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/d;->f()V

    goto :goto_0

    .line 736
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(I)V
    .locals 2

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/handmark/pulltorefresh/library/e;->a(IJ)V

    .line 1038
    return-void
.end method

.method protected final a(II)V
    .locals 3

    .prologue
    .line 961
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 964
    sget-object v1, Lcom/handmark/pulltorefresh/library/e$1;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/e$h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/e$h;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 966
    :pswitch_0
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v1, p1, :cond_0

    .line 967
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 968
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    .line 972
    :pswitch_1
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v1, p2, :cond_0

    .line 973
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 974
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    .line 964
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(ILcom/handmark/pulltorefresh/library/e$g;)V
    .locals 7

    .prologue
    .line 1051
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/e;->a(IJJLcom/handmark/pulltorefresh/library/e$g;)V

    .line 1053
    return-void
.end method

.method protected a(Landroid/content/res/TypedArray;)V
    .locals 0

    .prologue
    .line 691
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 719
    return-void
.end method

.method protected final a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 594
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 595
    return-void
.end method

.method protected final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 603
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 604
    return-void
.end method

.method final varargs a(Lcom/handmark/pulltorefresh/library/e$j;[Z)V
    .locals 3

    .prologue
    .line 558
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/e;->h:Lcom/handmark/pulltorefresh/library/e$j;

    .line 560
    const-string v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/e;->h:Lcom/handmark/pulltorefresh/library/e$j;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/e$j;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$1;->b:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->h:Lcom/handmark/pulltorefresh/library/e$j;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/e$j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 583
    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->w:Lcom/handmark/pulltorefresh/library/e$d;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->w:Lcom/handmark/pulltorefresh/library/e$d;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->h:Lcom/handmark/pulltorefresh/library/e$j;

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/e;->j:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-interface {v0, p0, v1, v2}, Lcom/handmark/pulltorefresh/library/e$d;->a(Lcom/handmark/pulltorefresh/library/e;Lcom/handmark/pulltorefresh/library/e$j;Lcom/handmark/pulltorefresh/library/e$b;)V

    .line 586
    :cond_0
    return-void

    .line 565
    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->c()V

    goto :goto_0

    .line 568
    :pswitch_1
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->a()V

    goto :goto_0

    .line 571
    :pswitch_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->b()V

    goto :goto_0

    .line 575
    :pswitch_3
    const/4 v0, 0x0

    aget-boolean v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/e;->a(Z)V

    goto :goto_0

    .line 563
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/e$b;)V
    .locals 2

    .prologue
    .line 538
    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/e$b;->c()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/e$b;->d()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/e;->a(ZZ)Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/a;->setReleaseLabel(Ljava/lang/CharSequence;)V

    .line 540
    return-void
.end method

.method protected a(Z)V
    .locals 3

    .prologue
    .line 757
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/e$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->s:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/d;->g()V

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/e$b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->t:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/d;->g()V

    .line 764
    :cond_1
    if-eqz p1, :cond_3

    .line 765
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/e;->l:Z

    if-eqz v0, :cond_2

    .line 768
    new-instance v0, Lcom/handmark/pulltorefresh/library/f;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/f;-><init>(Lcom/handmark/pulltorefresh/library/e;)V

    .line 775
    sget-object v1, Lcom/handmark/pulltorefresh/library/e$1;->c:[I

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/e;->j:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/e$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 782
    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/e;->a(ILcom/handmark/pulltorefresh/library/e$g;)V

    .line 792
    :goto_0
    return-void

    .line 778
    :pswitch_1
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getFooterSize()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/e;->a(ILcom/handmark/pulltorefresh/library/e$g;)V

    goto :goto_0

    .line 786
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/e;->a(I)V

    goto :goto_0

    .line 790
    :cond_3
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/e;->n()V

    goto :goto_0

    .line 775
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .prologue
    .line 135
    const-string v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    .line 140
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 141
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 146
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b(ZZ)Lcom/handmark/pulltorefresh/library/b;
    .locals 2

    .prologue
    .line 620
    new-instance v0, Lcom/handmark/pulltorefresh/library/b;

    invoke-direct {v0}, Lcom/handmark/pulltorefresh/library/b;-><init>()V

    .line 622
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/e$b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->s:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/b;->a(Lcom/handmark/pulltorefresh/library/a/d;)V

    .line 625
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/e$b;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 626
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->t:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/b;->a(Lcom/handmark/pulltorefresh/library/a/d;)V

    .line 629
    :cond_1
    return-object v0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 799
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$1;->c:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->j:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/e$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 810
    :goto_0
    return-void

    .line 801
    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->t:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/d;->h()V

    goto :goto_0

    .line 804
    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->s:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/d;->h()V

    goto :goto_0

    .line 799
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 729
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 817
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/e;->g:Z

    .line 818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/e;->p:Z

    .line 821
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->s:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/d;->i()V

    .line 822
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->t:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/d;->i()V

    .line 824
    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/e;->a(I)V

    .line 825
    return-void
.end method

.method protected abstract d()Z
.end method

.method protected abstract e()Z
.end method

.method protected f()V
    .locals 3

    .prologue
    .line 1073
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/e;->getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 1076
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->s:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/a/d;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 1077
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->s:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/e;->removeView(Landroid/view/View;)V

    .line 1079
    :cond_0
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/e$b;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1080
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->s:Lcom/handmark/pulltorefresh/library/a/d;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/handmark/pulltorefresh/library/e;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1084
    :cond_1
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->t:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/a/d;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_2

    .line 1085
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->t:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/e;->removeView(Landroid/view/View;)V

    .line 1087
    :cond_2
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/e$b;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1088
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->t:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/e;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    :cond_3
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->l()V

    .line 1096
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$b;->d:Lcom/handmark/pulltorefresh/library/e$b;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    :goto_0
    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->j:Lcom/handmark/pulltorefresh/library/e$b;

    .line 1097
    return-void

    .line 1096
    :cond_4
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$b;->b:Lcom/handmark/pulltorefresh/library/e$b;

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/e$b;->b()Z

    move-result v0

    return v0
.end method

.method public final getCurrentMode()Lcom/handmark/pulltorefresh/library/e$b;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->j:Lcom/handmark/pulltorefresh/library/e$b;

    return-object v0
.end method

.method public final getFilterTouchEvents()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/e;->n:Z

    return v0
.end method

.method protected final getFooterLayout()Lcom/handmark/pulltorefresh/library/a/d;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->t:Lcom/handmark/pulltorefresh/library/a/d;

    return-object v0
.end method

.method protected final getFooterSize()I
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->t:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/d;->getContentSize()I

    move-result v0

    return v0
.end method

.method protected final getHeaderLayout()Lcom/handmark/pulltorefresh/library/a/d;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->s:Lcom/handmark/pulltorefresh/library/a/d;

    return-object v0
.end method

.method protected final getHeaderSize()I
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->s:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/d;->getContentSize()I

    move-result v0

    return v0
.end method

.method public final getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 173
    invoke-virtual {p0, v0, v0}, Lcom/handmark/pulltorefresh/library/e;->a(ZZ)Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    return-object v0
.end method

.method public final getMode()Lcom/handmark/pulltorefresh/library/e$b;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    return-object v0
.end method

.method public abstract getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/e$h;
.end method

.method protected getPullToRefreshScrollDuration()I
    .locals 1

    .prologue
    .line 672
    const/16 v0, 0xc8

    return v0
.end method

.method protected getPullToRefreshScrollDurationLonger()I
    .locals 1

    .prologue
    .line 676
    const/16 v0, 0x145

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->a:Landroid/view/View;

    return-object v0
.end method

.method protected getRefreshableViewWrapper()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->k:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/e;->l:Z

    return v0
.end method

.method public final getState()Lcom/handmark/pulltorefresh/library/e$j;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->h:Lcom/handmark/pulltorefresh/library/e$j;

    return-object v0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/e;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/c;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->h:Lcom/handmark/pulltorefresh/library/e$j;

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$j;->d:Lcom/handmark/pulltorefresh/library/e$j;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->h:Lcom/handmark/pulltorefresh/library/e$j;

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$j;->e:Lcom/handmark/pulltorefresh/library/e$j;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$j;->a:Lcom/handmark/pulltorefresh/library/e$j;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/e;->a(Lcom/handmark/pulltorefresh/library/e$j;[Z)V

    .line 319
    :cond_0
    return-void
.end method

.method protected final k()V
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/e;->p:Z

    .line 653
    return-void
.end method

.method protected final l()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 909
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/e;->getMaximumPullScroll()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v2

    float-to-int v6, v0

    .line 911
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getPaddingLeft()I

    move-result v5

    .line 912
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getPaddingTop()I

    move-result v4

    .line 913
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getPaddingRight()I

    move-result v3

    .line 914
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getPaddingBottom()I

    move-result v2

    .line 916
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$1;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/e$h;

    move-result-object v7

    invoke-virtual {v7}, Lcom/handmark/pulltorefresh/library/e$h;->ordinal()I

    move-result v7

    aget v0, v0, v7

    packed-switch v0, :pswitch_data_0

    move v0, v2

    move v2, v3

    move v3, v4

    move v4, v5

    .line 951
    :goto_0
    const-string v5, "PullToRefresh"

    const-string v6, "Setting Padding. L: %d, T: %d, R: %d, B: %d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-virtual {p0, v4, v3, v2, v0}, Lcom/handmark/pulltorefresh/library/e;->setPadding(IIII)V

    .line 956
    return-void

    .line 918
    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/e$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->s:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v0, v6}, Lcom/handmark/pulltorefresh/library/a/d;->setWidth(I)V

    .line 920
    neg-int v0, v6

    .line 925
    :goto_1
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/e$b;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 926
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/e;->t:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v3, v6}, Lcom/handmark/pulltorefresh/library/a/d;->setWidth(I)V

    .line 927
    neg-int v3, v6

    move v9, v2

    move v2, v3

    move v3, v4

    move v4, v0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v1

    .line 922
    goto :goto_1

    :cond_1
    move v3, v4

    move v4, v0

    move v0, v2

    move v2, v1

    .line 931
    goto :goto_0

    .line 934
    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/e$b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 935
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->s:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v0, v6}, Lcom/handmark/pulltorefresh/library/a/d;->setHeight(I)V

    .line 936
    neg-int v0, v6

    .line 941
    :goto_2
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/e$b;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 942
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/e;->t:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v2, v6}, Lcom/handmark/pulltorefresh/library/a/d;->setHeight(I)V

    .line 943
    neg-int v2, v6

    move v4, v5

    move v9, v3

    move v3, v0

    move v0, v2

    move v2, v9

    goto :goto_0

    :cond_2
    move v0, v1

    .line 938
    goto :goto_2

    :cond_3
    move v2, v3

    move v4, v5

    move v3, v0

    move v0, v1

    .line 945
    goto :goto_0

    .line 916
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 1737
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getHeaderLayout()Lcom/handmark/pulltorefresh/library/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/d;->isShown()Z

    move-result v0

    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 235
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    :goto_0
    return v0

    .line 239
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 241
    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_2

    .line 243
    :cond_1
    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/e;->g:Z

    goto :goto_0

    .line 247
    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v3, p0, Lcom/handmark/pulltorefresh/library/e;->g:Z

    if-eqz v3, :cond_3

    move v0, v2

    .line 248
    goto :goto_0

    .line 251
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 311
    :cond_4
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/e;->g:Z

    goto :goto_0

    .line 254
    :pswitch_1
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/e;->m:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 255
    goto :goto_0

    .line 258
    :cond_5
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/e;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 264
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$1;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/e$h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/e$h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 271
    iget v0, p0, Lcom/handmark/pulltorefresh/library/e;->d:F

    sub-float v1, v3, v0

    .line 272
    iget v0, p0, Lcom/handmark/pulltorefresh/library/e;->c:F

    sub-float v0, v4, v0

    .line 275
    :goto_2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 277
    iget v6, p0, Lcom/handmark/pulltorefresh/library/e;->b:I

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_4

    iget-boolean v6, p0, Lcom/handmark/pulltorefresh/library/e;->n:Z

    if-eqz v6, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_4

    .line 280
    :cond_6
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/e$b;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_7

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 282
    iput v3, p0, Lcom/handmark/pulltorefresh/library/e;->d:F

    .line 283
    iput v4, p0, Lcom/handmark/pulltorefresh/library/e;->c:F

    .line 284
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/e;->g:Z

    .line 285
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$b;->d:Lcom/handmark/pulltorefresh/library/e$b;

    if-ne v0, v1, :cond_4

    .line 286
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$b;->b:Lcom/handmark/pulltorefresh/library/e$b;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->j:Lcom/handmark/pulltorefresh/library/e$b;

    goto :goto_1

    .line 266
    :pswitch_2
    iget v0, p0, Lcom/handmark/pulltorefresh/library/e;->c:F

    sub-float v1, v4, v0

    .line 267
    iget v0, p0, Lcom/handmark/pulltorefresh/library/e;->d:F

    sub-float v0, v3, v0

    .line 268
    goto :goto_2

    .line 288
    :cond_7
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/e$b;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_4

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 290
    iput v3, p0, Lcom/handmark/pulltorefresh/library/e;->d:F

    .line 291
    iput v4, p0, Lcom/handmark/pulltorefresh/library/e;->c:F

    .line 292
    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/e;->g:Z

    .line 293
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$b;->d:Lcom/handmark/pulltorefresh/library/e$b;

    if-ne v0, v1, :cond_4

    .line 294
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$b;->c:Lcom/handmark/pulltorefresh/library/e$b;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->j:Lcom/handmark/pulltorefresh/library/e$b;

    goto/16 :goto_1

    .line 302
    :pswitch_3
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/e;->o()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/handmark/pulltorefresh/library/e;->f:F

    iput v1, p0, Lcom/handmark/pulltorefresh/library/e;->d:F

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/handmark/pulltorefresh/library/e;->e:F

    iput v1, p0, Lcom/handmark/pulltorefresh/library/e;->c:F

    .line 305
    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/e;->g:Z

    goto/16 :goto_1

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 264
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 829
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 830
    check-cast p1, Landroid/os/Bundle;

    .line 832
    const-string v0, "ptr_mode"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/e$b;->a(I)Lcom/handmark/pulltorefresh/library/e$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/e;->setMode(Lcom/handmark/pulltorefresh/library/e$b;)V

    .line 833
    const-string v0, "ptr_current_mode"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/e$b;->a(I)Lcom/handmark/pulltorefresh/library/e$b;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->j:Lcom/handmark/pulltorefresh/library/e$b;

    .line 836
    const-string v0, "ptr_disable_scrolling"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/e;->m:Z

    .line 838
    const-string v0, "ptr_show_refreshing_view"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/e;->l:Z

    .line 842
    const-string v0, "ptr_super"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 844
    const-string v0, "ptr_state"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/e$j;->a(I)Lcom/handmark/pulltorefresh/library/e$j;

    move-result-object v0

    .line 846
    sget-object v1, Lcom/handmark/pulltorefresh/library/e$j;->d:Lcom/handmark/pulltorefresh/library/e$j;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$j;->e:Lcom/handmark/pulltorefresh/library/e$j;

    if-ne v0, v1, :cond_1

    .line 848
    :cond_0
    new-array v1, v3, [Z

    aput-boolean v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/e;->a(Lcom/handmark/pulltorefresh/library/e$j;[Z)V

    .line 852
    :cond_1
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/e;->a(Landroid/os/Bundle;)V

    .line 857
    :goto_0
    return-void

    .line 856
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 861
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 865
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/e;->b(Landroid/os/Bundle;)V

    .line 867
    const-string v1, "ptr_state"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/e;->h:Lcom/handmark/pulltorefresh/library/e$j;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/e$j;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 868
    const-string v1, "ptr_mode"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/e$b;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 869
    const-string v1, "ptr_current_mode"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/e;->j:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/e$b;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 870
    const-string v1, "ptr_disable_scrolling"

    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/e;->m:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 872
    const-string v1, "ptr_show_refreshing_view"

    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/e;->l:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 873
    const-string v1, "ptr_super"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 875
    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 5

    .prologue
    .line 881
    const-string v0, "PullToRefresh"

    const-string v1, "onSizeChanged. W: %d, H: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 887
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->l()V

    .line 890
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/e;->a(II)V

    .line 896
    new-instance v0, Lcom/handmark/pulltorefresh/library/g;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/g;-><init>(Lcom/handmark/pulltorefresh/library/e;)V

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/e;->post(Ljava/lang/Runnable;)Z

    .line 902
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 324
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->g()Z

    move-result v2

    if-nez v2, :cond_1

    .line 385
    :cond_0
    :goto_0
    return v0

    .line 329
    :cond_1
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/e;->m:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 330
    goto :goto_0

    .line 333
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-nez v2, :cond_0

    .line 338
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 350
    :pswitch_0
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/e;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/e;->f:F

    iput v0, p0, Lcom/handmark/pulltorefresh/library/e;->d:F

    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/e;->e:F

    iput v0, p0, Lcom/handmark/pulltorefresh/library/e;->c:F

    move v0, v1

    .line 353
    goto :goto_0

    .line 340
    :pswitch_1
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/e;->g:Z

    if-eqz v2, :cond_0

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/e;->d:F

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/e;->c:F

    .line 343
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/e;->p()V

    move v0, v1

    .line 344
    goto :goto_0

    .line 360
    :pswitch_2
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/e;->g:Z

    if-eqz v2, :cond_0

    .line 361
    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/e;->g:Z

    .line 363
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/e;->h:Lcom/handmark/pulltorefresh/library/e$j;

    sget-object v3, Lcom/handmark/pulltorefresh/library/e$j;->c:Lcom/handmark/pulltorefresh/library/e$j;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/e;->u:Lcom/handmark/pulltorefresh/library/e$e;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/e;->v:Lcom/handmark/pulltorefresh/library/e$f;

    if-eqz v2, :cond_5

    .line 365
    :cond_4
    sget-object v2, Lcom/handmark/pulltorefresh/library/e$j;->d:Lcom/handmark/pulltorefresh/library/e$j;

    new-array v3, v1, [Z

    aput-boolean v1, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/handmark/pulltorefresh/library/e;->a(Lcom/handmark/pulltorefresh/library/e$j;[Z)V

    move v0, v1

    .line 366
    goto :goto_0

    .line 370
    :cond_5
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->i()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 371
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/e;->a(I)V

    move v0, v1

    .line 372
    goto :goto_0

    .line 377
    :cond_6
    sget-object v2, Lcom/handmark/pulltorefresh/library/e$j;->a:Lcom/handmark/pulltorefresh/library/e$j;

    new-array v0, v0, [Z

    invoke-virtual {p0, v2, v0}, Lcom/handmark/pulltorefresh/library/e;->a(Lcom/handmark/pulltorefresh/library/e$j;[Z)V

    move v0, v1

    .line 379
    goto :goto_0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDisableScrollingWhileRefreshing(Z)V
    .locals 1

    .prologue
    .line 398
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/e;->setScrollingWhileRefreshingEnabled(Z)V

    .line 399
    return-void

    .line 398
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setFilterTouchEvents(Z)V
    .locals 0

    .prologue
    .line 403
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/e;->n:Z

    .line 404
    return-void
.end method

.method protected final setHeaderScroll(I)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 989
    const-string v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHeaderScroll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/e;->getMaximumPullScroll()I

    move-result v0

    .line 994
    neg-int v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 997
    iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/e;->p:Z

    if-eqz v1, :cond_0

    .line 998
    if-gez v0, :cond_1

    .line 999
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->s:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v1, v3}, Lcom/handmark/pulltorefresh/library/a/d;->setVisibility(I)V

    .line 1019
    :cond_0
    :goto_0
    sget-object v1, Lcom/handmark/pulltorefresh/library/e$1;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/e$h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/e$h;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1027
    :goto_1
    return-void

    .line 1000
    :cond_1
    if-lez v0, :cond_2

    .line 1001
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->t:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v1, v3}, Lcom/handmark/pulltorefresh/library/a/d;->setVisibility(I)V

    goto :goto_0

    .line 1003
    :cond_2
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->s:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v1, v4}, Lcom/handmark/pulltorefresh/library/a/d;->setVisibility(I)V

    .line 1004
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/e;->t:Lcom/handmark/pulltorefresh/library/a/d;

    invoke-virtual {v1, v4}, Lcom/handmark/pulltorefresh/library/a/d;->setVisibility(I)V

    goto :goto_0

    .line 1021
    :pswitch_0
    invoke-virtual {p0, v3, v0}, Lcom/handmark/pulltorefresh/library/e;->scrollTo(II)V

    goto :goto_1

    .line 1024
    :pswitch_1
    invoke-virtual {p0, v0, v3}, Lcom/handmark/pulltorefresh/library/e;->scrollTo(II)V

    goto :goto_1

    .line 1019
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/a;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 412
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/a;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 420
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 434
    return-void
.end method

.method public final setMode(Lcom/handmark/pulltorefresh/library/e$b;)V
    .locals 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    if-eq p1, v0, :cond_0

    .line 440
    const-string v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting mode to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/e;->i:Lcom/handmark/pulltorefresh/library/e$b;

    .line 443
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->f()V

    .line 445
    :cond_0
    return-void
.end method

.method public setOnPullEventListener(Lcom/handmark/pulltorefresh/library/e$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/e$d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 448
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/e;->w:Lcom/handmark/pulltorefresh/library/e$d;

    .line 449
    return-void
.end method

.method public final setOnRefreshListener(Lcom/handmark/pulltorefresh/library/e$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/e$e",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 453
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/e;->u:Lcom/handmark/pulltorefresh/library/e$e;

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->v:Lcom/handmark/pulltorefresh/library/e$f;

    .line 455
    return-void
.end method

.method public final setOnRefreshListener(Lcom/handmark/pulltorefresh/library/e$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/e$f",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 459
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/e;->v:Lcom/handmark/pulltorefresh/library/e$f;

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e;->u:Lcom/handmark/pulltorefresh/library/e$e;

    .line 461
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/a;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 469
    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .locals 1

    .prologue
    .line 487
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/handmark/pulltorefresh/library/e$b;->a()Lcom/handmark/pulltorefresh/library/e$b;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/e;->setMode(Lcom/handmark/pulltorefresh/library/e$b;)V

    .line 488
    return-void

    .line 487
    :cond_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$b;->a:Lcom/handmark/pulltorefresh/library/e$b;

    goto :goto_0
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
    .locals 0

    .prologue
    .line 492
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/e;->o:Z

    .line 493
    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 3

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$j;->e:Lcom/handmark/pulltorefresh/library/e$j;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/e;->a(Lcom/handmark/pulltorefresh/library/e$j;[Z)V

    .line 505
    :cond_0
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/a;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 513
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 530
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$b;->d:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/e;->a(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/e$b;)V

    .line 531
    return-void
.end method

.method public setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/e;->q:Landroid/view/animation/Interpolator;

    .line 544
    return-void
.end method

.method public final setScrollingWhileRefreshingEnabled(Z)V
    .locals 0

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/e;->m:Z

    .line 391
    return-void
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .locals 0

    .prologue
    .line 548
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/e;->l:Z

    .line 549
    return-void
.end method
