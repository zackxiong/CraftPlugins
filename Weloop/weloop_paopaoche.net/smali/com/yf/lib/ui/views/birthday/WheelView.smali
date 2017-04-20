.class public Lcom/yf/lib/ui/views/birthday/WheelView;
.super Landroid/view/View;
.source "ProGuard"


# static fields
.field private static c:I

.field private static j:I

.field private static k:I


# instance fields
.field private A:Z

.field private B:I

.field private C:Landroid/view/GestureDetector;

.field private D:Landroid/widget/Scroller;

.field private E:I

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/lib/ui/views/birthday/b;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/lib/ui/views/birthday/c;",
            ">;"
        }
    .end annotation
.end field

.field private H:Landroid/content/Context;

.field private I:Z

.field private J:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private final K:I

.field private final L:I

.field private M:Landroid/os/Handler;

.field public a:I

.field b:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private final h:[I

.field private final i:I

.field private l:Lcom/yf/lib/ui/views/birthday/d;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/text/TextPaint;

.field private s:Landroid/text/TextPaint;

.field private t:Landroid/text/StaticLayout;

.field private u:Landroid/text/StaticLayout;

.field private v:Landroid/text/StaticLayout;

.field private w:Ljava/lang/String;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/GradientDrawable;

.field private z:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, -0x1

    sput v0, Lcom/yf/lib/ui/views/birthday/WheelView;->c:I

    .line 111
    const/4 v0, 0x1

    sput v0, Lcom/yf/lib/ui/views/birthday/WheelView;->j:I

    .line 115
    const/16 v0, 0x1e

    sput v0, Lcom/yf/lib/ui/views/birthday/WheelView;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 195
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 76
    const/16 v0, 0xe6

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->d:I

    .line 77
    const/16 v0, 0xb4

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->e:I

    .line 78
    const/16 v0, 0x82

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->f:I

    .line 79
    const/16 v0, 0x50

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->g:I

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [I

    iget v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->d:I

    aput v1, v0, v3

    iget v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->e:I

    aput v1, v0, v4

    const/4 v1, 0x2

    iget v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->f:I

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->g:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->h:[I

    .line 101
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->a:I

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->i:I

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    .line 129
    iput v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    .line 132
    iput v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->n:I

    .line 133
    iput v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->o:I

    .line 136
    const/4 v0, 0x5

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->p:I

    .line 139
    iput v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->q:I

    .line 168
    iput-boolean v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->b:Z

    .line 171
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->F:Ljava/util/List;

    .line 172
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->G:Ljava/util/List;

    .line 661
    iput-boolean v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->I:Z

    .line 893
    new-instance v0, Lcom/yf/lib/ui/views/birthday/e;

    invoke-direct {v0, p0}, Lcom/yf/lib/ui/views/birthday/e;-><init>(Lcom/yf/lib/ui/views/birthday/WheelView;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->J:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 927
    iput v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->K:I

    .line 928
    iput v4, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->L:I

    .line 949
    new-instance v0, Lcom/yf/lib/ui/views/birthday/f;

    invoke-direct {v0, p0}, Lcom/yf/lib/ui/views/birthday/f;-><init>(Lcom/yf/lib/ui/views/birthday/WheelView;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->M:Landroid/os/Handler;

    .line 196
    invoke-direct {p0, p1}, Lcom/yf/lib/ui/views/birthday/WheelView;->a(Landroid/content/Context;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 187
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const/16 v0, 0xe6

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->d:I

    .line 77
    const/16 v0, 0xb4

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->e:I

    .line 78
    const/16 v0, 0x82

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->f:I

    .line 79
    const/16 v0, 0x50

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->g:I

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [I

    iget v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->d:I

    aput v1, v0, v3

    iget v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->e:I

    aput v1, v0, v4

    const/4 v1, 0x2

    iget v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->f:I

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->g:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->h:[I

    .line 101
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->a:I

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->i:I

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    .line 129
    iput v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    .line 132
    iput v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->n:I

    .line 133
    iput v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->o:I

    .line 136
    const/4 v0, 0x5

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->p:I

    .line 139
    iput v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->q:I

    .line 168
    iput-boolean v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->b:Z

    .line 171
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->F:Ljava/util/List;

    .line 172
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->G:Ljava/util/List;

    .line 661
    iput-boolean v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->I:Z

    .line 893
    new-instance v0, Lcom/yf/lib/ui/views/birthday/e;

    invoke-direct {v0, p0}, Lcom/yf/lib/ui/views/birthday/e;-><init>(Lcom/yf/lib/ui/views/birthday/WheelView;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->J:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 927
    iput v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->K:I

    .line 928
    iput v4, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->L:I

    .line 949
    new-instance v0, Lcom/yf/lib/ui/views/birthday/f;

    invoke-direct {v0, p0}, Lcom/yf/lib/ui/views/birthday/f;-><init>(Lcom/yf/lib/ui/views/birthday/WheelView;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->M:Landroid/os/Handler;

    .line 188
    invoke-direct {p0, p1}, Lcom/yf/lib/ui/views/birthday/WheelView;->a(Landroid/content/Context;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const/16 v0, 0xe6

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->d:I

    .line 77
    const/16 v0, 0xb4

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->e:I

    .line 78
    const/16 v0, 0x82

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->f:I

    .line 79
    const/16 v0, 0x50

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->g:I

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [I

    iget v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->d:I

    aput v1, v0, v3

    iget v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->e:I

    aput v1, v0, v4

    const/4 v1, 0x2

    iget v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->f:I

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->g:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->h:[I

    .line 101
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->a:I

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->i:I

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    .line 129
    iput v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    .line 132
    iput v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->n:I

    .line 133
    iput v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->o:I

    .line 136
    const/4 v0, 0x5

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->p:I

    .line 139
    iput v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->q:I

    .line 168
    iput-boolean v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->b:Z

    .line 171
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->F:Ljava/util/List;

    .line 172
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->G:Ljava/util/List;

    .line 661
    iput-boolean v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->I:Z

    .line 893
    new-instance v0, Lcom/yf/lib/ui/views/birthday/e;

    invoke-direct {v0, p0}, Lcom/yf/lib/ui/views/birthday/e;-><init>(Lcom/yf/lib/ui/views/birthday/WheelView;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->J:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 927
    iput v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->K:I

    .line 928
    iput v4, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->L:I

    .line 949
    new-instance v0, Lcom/yf/lib/ui/views/birthday/f;

    invoke-direct {v0, p0}, Lcom/yf/lib/ui/views/birthday/f;-><init>(Lcom/yf/lib/ui/views/birthday/WheelView;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->M:Landroid/os/Handler;

    .line 180
    invoke-direct {p0, p1}, Lcom/yf/lib/ui/views/birthday/WheelView;->a(Landroid/content/Context;)V

    .line 181
    return-void
.end method

.method private a(Landroid/text/Layout;)I
    .locals 2

    .prologue
    .line 481
    if-nez p1, :cond_0

    .line 482
    const/4 v0, 0x0

    .line 491
    :goto_0
    return v0

    .line 485
    :cond_0
    invoke-direct {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getItemHeight()I

    move-result v0

    iget v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->p:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->i:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0xf

    .line 489
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 501
    iget-object v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    invoke-interface {v1}, Lcom/yf/lib/ui/views/birthday/d;->a()I

    move-result v1

    if-nez v1, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-object v0

    .line 504
    :cond_1
    iget-object v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    invoke-interface {v1}, Lcom/yf/lib/ui/views/birthday/d;->a()I

    move-result v1

    .line 505
    if-ltz p1, :cond_2

    if-lt p1, v1, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->b:Z

    if-eqz v2, :cond_0

    .line 508
    :cond_3
    :goto_1
    if-gez p1, :cond_4

    .line 509
    add-int/2addr p1, v1

    goto :goto_1

    .line 513
    :cond_4
    rem-int v0, p1, v1

    .line 514
    iget-object v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    invoke-interface {v1, v0}, Lcom/yf/lib/ui/views/birthday/d;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->p:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, 0x1

    .line 527
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    sub-int/2addr v0, v2

    :goto_0
    iget v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    add-int/2addr v3, v2

    if-gt v0, v3, :cond_3

    .line 528
    if-nez p1, :cond_0

    iget v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    if-eq v0, v3, :cond_1

    .line 529
    :cond_0
    invoke-direct {p0, v0}, Lcom/yf/lib/ui/views/birthday/WheelView;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 530
    if-eqz v3, :cond_1

    .line 531
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_1
    iget v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    add-int/2addr v3, v2

    if-ge v0, v3, :cond_2

    .line 535
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 539
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 205
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->J:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->C:Landroid/view/GestureDetector;

    .line 206
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->C:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 208
    sget v0, Lcom/yf/lib/ui/views/birthday/WheelView;->j:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/yf/lib/ui/views/birthday/a;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/yf/lib/ui/views/birthday/WheelView;->k:I

    .line 210
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->D:Landroid/widget/Scroller;

    .line 211
    iput-object p1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->H:Landroid/content/Context;

    .line 212
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 757
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->y:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x5

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 758
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->y:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 760
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->z:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 762
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->z:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 763
    return-void
.end method

.method static synthetic a(Lcom/yf/lib/ui/views/birthday/WheelView;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/yf/lib/ui/views/birthday/WheelView;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/yf/lib/ui/views/birthday/WheelView;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->A:Z

    return v0
.end method

.method static synthetic b(Lcom/yf/lib/ui/views/birthday/WheelView;I)I
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->E:I

    return p1
.end method

.method static synthetic b(Lcom/yf/lib/ui/views/birthday/WheelView;)Landroid/widget/Scroller;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->D:Landroid/widget/Scroller;

    return-object v0
.end method

.method private b(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 853
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->B:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->B:I

    .line 855
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->B:I

    invoke-direct {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getItemHeight()I

    move-result v2

    div-int v2, v0, v2

    .line 856
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    sub-int/2addr v0, v2

    .line 857
    iget-boolean v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->b:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    invoke-interface {v3}, Lcom/yf/lib/ui/views/birthday/d;->a()I

    move-result v3

    if-lez v3, :cond_3

    .line 859
    :goto_0
    if-gez v0, :cond_0

    .line 860
    iget-object v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    invoke-interface {v3}, Lcom/yf/lib/ui/views/birthday/d;->a()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 862
    :cond_0
    iget-object v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    invoke-interface {v3}, Lcom/yf/lib/ui/views/birthday/d;->a()I

    move-result v3

    rem-int/2addr v0, v3

    .line 878
    :cond_1
    :goto_1
    iget v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->B:I

    .line 879
    iget v4, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    if-eq v0, v4, :cond_6

    .line 880
    invoke-virtual {p0, v0, v1}, Lcom/yf/lib/ui/views/birthday/WheelView;->a(IZ)V

    .line 886
    :goto_2
    invoke-direct {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getItemHeight()I

    move-result v0

    mul-int/2addr v0, v2

    sub-int v0, v3, v0

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->B:I

    .line 887
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->B:I

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 888
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->B:I

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getHeight()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->B:I

    .line 890
    :cond_2
    return-void

    .line 863
    :cond_3
    iget-boolean v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->A:Z

    if-eqz v3, :cond_5

    .line 865
    if-gez v0, :cond_4

    .line 866
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    move v2, v0

    move v0, v1

    .line 867
    goto :goto_1

    .line 868
    :cond_4
    iget-object v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    invoke-interface {v3}, Lcom/yf/lib/ui/views/birthday/d;->a()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 869
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    iget-object v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    invoke-interface {v2}, Lcom/yf/lib/ui/views/birthday/d;->a()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    .line 870
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    invoke-interface {v0}, Lcom/yf/lib/ui/views/birthday/d;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 874
    :cond_5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 875
    iget-object v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    invoke-interface {v3}, Lcom/yf/lib/ui/views/birthday/d;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 882
    :cond_6
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->invalidate()V

    goto :goto_2
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 772
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->s:Landroid/text/TextPaint;

    sget v1, Lcom/yf/lib/ui/views/birthday/WheelView;->c:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 773
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->s:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->H:Landroid/content/Context;

    const/high16 v2, 0x41980000    # 19.0f

    invoke-static {v1, v2}, Lcom/yf/lib/ui/views/birthday/a;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 774
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->s:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 776
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 777
    iget-object v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->t:Landroid/text/StaticLayout;

    iget v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->p:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/text/StaticLayout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 781
    iget-object v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->u:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    .line 782
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 783
    iget-boolean v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->I:Z

    if-nez v1, :cond_2

    .line 784
    iget-object v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->t:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    sget v2, Lcom/yf/lib/ui/views/birthday/WheelView;->k:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 788
    :goto_0
    iget-object v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->u:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 789
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 793
    :cond_0
    iget-object v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->v:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1

    .line 794
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 795
    const/4 v1, 0x0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->B:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 796
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->v:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 797
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 799
    :cond_1
    return-void

    .line 786
    :cond_2
    iget-object v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->t:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->H:Landroid/content/Context;

    const/high16 v3, 0x43020000    # 130.0f

    invoke-static {v2, v3}, Lcom/yf/lib/ui/views/birthday/a;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private c(II)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 596
    invoke-direct {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->e()V

    .line 599
    invoke-direct {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getMaxTextLength()I

    move-result v0

    .line 600
    if-lez v0, :cond_4

    .line 601
    const-string v3, "0"

    iget-object v4, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->r:Landroid/text/TextPaint;

    invoke-static {v3, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    .line 603
    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->n:I

    .line 607
    :goto_0
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->n:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->n:I

    .line 609
    iput v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->o:I

    .line 610
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->w:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->w:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->w:Ljava/lang/String;

    iget-object v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->s:Landroid/text/TextPaint;

    invoke-static {v0, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->o:I

    .line 616
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ne p2, v0, :cond_5

    move v0, v1

    .line 634
    :goto_1
    if-eqz v0, :cond_2

    .line 636
    sget v0, Lcom/yf/lib/ui/views/birthday/WheelView;->k:I

    sub-int v0, p1, v0

    add-int/lit16 v0, v0, -0x190

    .line 637
    if-gtz v0, :cond_1

    .line 638
    iput v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->o:I

    iput v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->n:I

    .line 640
    :cond_1
    iget-boolean v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->I:Z

    if-eqz v1, :cond_7

    .line 641
    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->n:I

    .line 654
    :cond_2
    :goto_2
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->n:I

    if-lez v0, :cond_3

    .line 655
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->n:I

    iget v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->o:I

    invoke-direct {p0, v0, v1}, Lcom/yf/lib/ui/views/birthday/WheelView;->d(II)V

    .line 658
    :cond_3
    return p1

    .line 605
    :cond_4
    iput v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->n:I

    goto :goto_0

    .line 620
    :cond_5
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->n:I

    iget v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->o:I

    add-int/2addr v0, v3

    add-int/lit16 v0, v0, 0x190

    .line 621
    iget v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->o:I

    if-lez v3, :cond_6

    .line 622
    sget v3, Lcom/yf/lib/ui/views/birthday/WheelView;->k:I

    add-int/2addr v0, v3

    .line 626
    :cond_6
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 628
    const/high16 v3, -0x80000000

    if-ne p2, v3, :cond_9

    if-ge p1, v0, :cond_9

    move v0, v1

    .line 630
    goto :goto_1

    .line 643
    :cond_7
    iget v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->o:I

    if-lez v1, :cond_8

    .line 644
    iget v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->n:I

    int-to-double v2, v1

    int-to-double v4, v0

    mul-double/2addr v2, v4

    iget v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->n:I

    iget v4, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->o:I

    add-int/2addr v1, v4

    int-to-double v4, v1

    div-double/2addr v2, v4

    .line 646
    double-to-int v1, v2

    iput v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->n:I

    .line 647
    iget v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->n:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->o:I

    goto :goto_2

    .line 649
    :cond_8
    sget v1, Lcom/yf/lib/ui/views/birthday/WheelView;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->n:I

    goto :goto_2

    :cond_9
    move p1, v0

    move v0, v2

    goto :goto_1
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 808
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 810
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->t:Landroid/text/StaticLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    .line 811
    const/4 v1, 0x0

    neg-int v0, v0

    iget v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->B:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 813
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->r:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 814
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->r:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 815
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->t:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 817
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 818
    return-void
.end method

.method static synthetic c(Lcom/yf/lib/ui/views/birthday/WheelView;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->f()V

    return-void
.end method

.method static synthetic c(Lcom/yf/lib/ui/views/birthday/WheelView;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/yf/lib/ui/views/birthday/WheelView;->setNextMessage(I)V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 432
    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->t:Landroid/text/StaticLayout;

    .line 433
    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->v:Landroid/text/StaticLayout;

    .line 434
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->B:I

    .line 435
    return-void
.end method

.method private d(II)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x41700000    # 15.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 674
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->t:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->t:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_5

    .line 675
    :cond_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-boolean v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->A:Z

    invoke-direct {p0, v1}, Lcom/yf/lib/ui/views/birthday/WheelView;->a(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->r:Landroid/text/TextPaint;

    if-lez p2, :cond_4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_0
    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->t:Landroid/text/StaticLayout;

    .line 682
    :goto_1
    iget-boolean v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->A:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->v:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->v:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_9

    .line 683
    :cond_1
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getAdapter()Lcom/yf/lib/ui/views/birthday/d;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getAdapter()Lcom/yf/lib/ui/views/birthday/d;

    move-result-object v0

    iget v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    invoke-interface {v0, v1}, Lcom/yf/lib/ui/views/birthday/d;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 684
    :goto_2
    new-instance v0, Landroid/text/StaticLayout;

    if-eqz v1, :cond_7

    :goto_3
    iget-object v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->s:Landroid/text/TextPaint;

    if-lez p2, :cond_8

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_4
    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->v:Landroid/text/StaticLayout;

    .line 693
    :goto_5
    if-lez p2, :cond_3

    .line 694
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->u:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->u:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-le v0, p2, :cond_b

    .line 695
    :cond_2
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->w:Ljava/lang/String;

    iget-object v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->s:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->u:Landroid/text/StaticLayout;

    .line 701
    :cond_3
    :goto_6
    return-void

    .line 675
    :cond_4
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 679
    :cond_5
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->t:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_1

    :cond_6
    move-object v1, v8

    .line 683
    goto :goto_2

    .line 684
    :cond_7
    const-string v1, ""

    goto :goto_3

    :cond_8
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_4

    .line 687
    :cond_9
    iget-boolean v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->A:Z

    if-eqz v0, :cond_a

    .line 688
    iput-object v8, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->v:Landroid/text/StaticLayout;

    goto :goto_5

    .line 690
    :cond_a
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->v:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_5

    .line 698
    :cond_b
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->u:Landroid/text/StaticLayout;

    invoke-virtual {v0, p2}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_6
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 827
    invoke-direct {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getItemHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 828
    iget-object v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->x:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    sub-int v4, v0, v1

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getWidth()I

    move-result v5

    add-int/2addr v0, v1

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 830
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 831
    return-void
.end method

.method static synthetic d(Lcom/yf/lib/ui/views/birthday/WheelView;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->h()V

    return-void
.end method

.method static synthetic e(Lcom/yf/lib/ui/views/birthday/WheelView;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    return v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->H:Landroid/content/Context;

    const/high16 v1, 0x41980000    # 19.0f

    invoke-static {v0, v1}, Lcom/yf/lib/ui/views/birthday/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->a:I

    .line 442
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->r:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->r:Landroid/text/TextPaint;

    .line 445
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->r:Landroid/text/TextPaint;

    iget v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->s:Landroid/text/TextPaint;

    if-nez v0, :cond_1

    .line 452
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->s:Landroid/text/TextPaint;

    .line 453
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->s:Landroid/text/TextPaint;

    iget v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 457
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yf/lib/R$drawable;->wheel_val:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->x:Landroid/graphics/drawable/Drawable;

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->y:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_3

    .line 462
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->h:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->y:Landroid/graphics/drawable/GradientDrawable;

    .line 466
    :cond_3
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->z:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_4

    .line 467
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->h:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->z:Landroid/graphics/drawable/GradientDrawable;

    .line 472
    :cond_4
    return-void
.end method

.method static synthetic f(Lcom/yf/lib/ui/views/birthday/WheelView;)I
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getItemHeight()I

    move-result v0

    return v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 944
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->M:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 945
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->M:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 946
    return-void
.end method

.method static synthetic g(Lcom/yf/lib/ui/views/birthday/WheelView;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->B:I

    return v0
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 980
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    if-nez v0, :cond_0

    .line 1002
    :goto_0
    return-void

    .line 984
    :cond_0
    iput v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->E:I

    .line 985
    iget v4, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->B:I

    .line 986
    invoke-direct {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getItemHeight()I

    move-result v2

    .line 987
    if-lez v4, :cond_4

    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    iget-object v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    invoke-interface {v3}, Lcom/yf/lib/ui/views/birthday/d;->a()I

    move-result v3

    if-ge v0, v3, :cond_3

    move v0, v6

    .line 989
    :goto_1
    iget-boolean v3, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->b:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    int-to-float v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v3, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 991
    if-gez v4, :cond_6

    .line 992
    add-int/lit8 v0, v2, 0x1

    add-int/2addr v4, v0

    .line 996
    :cond_2
    :goto_2
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v6, :cond_7

    .line 997
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->D:Landroid/widget/Scroller;

    const/16 v5, 0x190

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 998
    invoke-direct {p0, v6}, Lcom/yf/lib/ui/views/birthday/WheelView;->setNextMessage(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 987
    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    if-lez v0, :cond_5

    move v0, v6

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1

    .line 994
    :cond_6
    add-int/lit8 v0, v2, 0x1

    sub-int/2addr v4, v0

    goto :goto_2

    .line 1000
    :cond_7
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->c()V

    goto :goto_0
.end method

.method private getItemHeight()I
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 578
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->q:I

    if-eqz v0, :cond_0

    .line 579
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->q:I

    .line 585
    :goto_0
    return v0

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->t:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->t:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 581
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->t:Landroid/text/StaticLayout;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->t:Landroid/text/StaticLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->q:I

    .line 582
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->q:I

    goto :goto_0

    .line 585
    :cond_1
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->p:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method private getMaxTextLength()I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 548
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getAdapter()Lcom/yf/lib/ui/views/birthday/d;

    move-result-object v4

    .line 549
    if-nez v4, :cond_0

    .line 569
    :goto_0
    return v3

    .line 553
    :cond_0
    invoke-interface {v4}, Lcom/yf/lib/ui/views/birthday/d;->b()I

    move-result v0

    .line 554
    if-lez v0, :cond_1

    move v3, v0

    .line 555
    goto :goto_0

    .line 558
    :cond_1
    const/4 v1, 0x0

    .line 559
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->p:I

    div-int/lit8 v0, v0, 0x2

    .line 560
    iget v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    sub-int v0, v2, v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v2, v0

    move-object v0, v1

    :goto_1
    iget v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    iget v5, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->p:I

    add-int/2addr v1, v5

    invoke-interface {v4}, Lcom/yf/lib/ui/views/birthday/d;->a()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 562
    invoke-interface {v4, v2}, Lcom/yf/lib/ui/views/birthday/d;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 563
    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    :cond_2
    move-object v0, v1

    .line 561
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 569
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_2
    move v3, v0

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_2
.end method

.method static synthetic h(Lcom/yf/lib/ui/views/birthday/WheelView;)Lcom/yf/lib/ui/views/birthday/d;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 1008
    iget-boolean v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->A:Z

    if-nez v0, :cond_0

    .line 1009
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->A:Z

    .line 1010
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->a()V

    .line 1012
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/yf/lib/ui/views/birthday/WheelView;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->E:I

    return v0
.end method

.method static synthetic j(Lcom/yf/lib/ui/views/birthday/WheelView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->M:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/yf/lib/ui/views/birthday/WheelView;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->g()V

    return-void
.end method

.method private setNextMessage(I)V
    .locals 1

    .prologue
    .line 936
    invoke-direct {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->f()V

    .line 937
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->M:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 938
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/ui/views/birthday/c;

    .line 338
    invoke-interface {v0, p0}, Lcom/yf/lib/ui/views/birthday/c;->a(Lcom/yf/lib/ui/views/birthday/WheelView;)V

    goto :goto_0

    .line 340
    :cond_0
    return-void
.end method

.method protected a(II)V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/ui/views/birthday/b;

    .line 311
    invoke-interface {v0, p0, p1, p2}, Lcom/yf/lib/ui/views/birthday/b;->a(Lcom/yf/lib/ui/views/birthday/WheelView;II)V

    goto :goto_0

    .line 313
    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    invoke-interface {v0}, Lcom/yf/lib/ui/views/birthday/d;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    invoke-interface {v0}, Lcom/yf/lib/ui/views/birthday/d;->a()I

    move-result v0

    if-lt p1, v0, :cond_4

    .line 371
    :cond_2
    iget-boolean v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->b:Z

    if-eqz v0, :cond_0

    .line 372
    :goto_1
    if-gez p1, :cond_3

    .line 373
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    invoke-interface {v0}, Lcom/yf/lib/ui/views/birthday/d;->a()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_1

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    invoke-interface {v0}, Lcom/yf/lib/ui/views/birthday/d;->a()I

    move-result v0

    rem-int/2addr p1, v0

    .line 380
    :cond_4
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    if-eq p1, v0, :cond_0

    .line 381
    if-eqz p2, :cond_5

    .line 382
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    sub-int v0, p1, v0

    const/16 v1, 0x190

    invoke-virtual {p0, v0, v1}, Lcom/yf/lib/ui/views/birthday/WheelView;->b(II)V

    goto :goto_0

    .line 384
    :cond_5
    invoke-direct {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->d()V

    .line 386
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    .line 387
    iput p1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    .line 389
    iget v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    invoke-virtual {p0, v0, v1}, Lcom/yf/lib/ui/views/birthday/WheelView;->a(II)V

    .line 391
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->invalidate()V

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/ui/views/birthday/c;

    .line 347
    invoke-interface {v0, p0}, Lcom/yf/lib/ui/views/birthday/c;->b(Lcom/yf/lib/ui/views/birthday/WheelView;)V

    goto :goto_0

    .line 349
    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1033
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->D:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1035
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->B:I

    iput v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->E:I

    .line 1036
    invoke-direct {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getItemHeight()I

    move-result v0

    mul-int v3, p1, v0

    .line 1038
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->D:Landroid/widget/Scroller;

    iget v2, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->E:I

    iget v4, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->E:I

    sub-int v4, v3, v4

    move v3, v1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1039
    invoke-direct {p0, v1}, Lcom/yf/lib/ui/views/birthday/WheelView;->setNextMessage(I)V

    .line 1041
    invoke-direct {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->h()V

    .line 1042
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 1018
    iget-boolean v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->A:Z

    if-eqz v0, :cond_0

    .line 1019
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->b()V

    .line 1020
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->A:Z

    .line 1022
    :cond_0
    invoke-direct {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->d()V

    .line 1023
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->invalidate()V

    .line 1024
    return-void
.end method

.method public getAdapter()Lcom/yf/lib/ui/views/birthday/d;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->m:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->p:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 728
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 730
    invoke-direct {p0, p1}, Lcom/yf/lib/ui/views/birthday/WheelView;->d(Landroid/graphics/Canvas;)V

    .line 732
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->t:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    .line 733
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->n:I

    if-nez v0, :cond_2

    .line 734
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/yf/lib/ui/views/birthday/WheelView;->c(II)I

    .line 740
    :cond_0
    :goto_0
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->n:I

    if-lez v0, :cond_1

    .line 741
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 743
    const/high16 v0, 0x43480000    # 200.0f

    iget v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->i:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 744
    invoke-direct {p0, p1}, Lcom/yf/lib/ui/views/birthday/WheelView;->c(Landroid/graphics/Canvas;)V

    .line 745
    invoke-direct {p0, p1}, Lcom/yf/lib/ui/views/birthday/WheelView;->b(Landroid/graphics/Canvas;)V

    .line 746
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 748
    :cond_1
    invoke-direct {p0, p1}, Lcom/yf/lib/ui/views/birthday/WheelView;->a(Landroid/graphics/Canvas;)V

    .line 749
    return-void

    .line 736
    :cond_2
    iget v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->n:I

    iget v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->o:I

    invoke-direct {p0, v0, v1}, Lcom/yf/lib/ui/views/birthday/WheelView;->d(II)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    .line 705
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 706
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 707
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 708
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 710
    invoke-direct {p0, v3, v1}, Lcom/yf/lib/ui/views/birthday/WheelView;->c(II)I

    move-result v3

    .line 713
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_0

    .line 723
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/yf/lib/ui/views/birthday/WheelView;->setMeasuredDimension(II)V

    .line 724
    return-void

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->t:Landroid/text/StaticLayout;

    invoke-direct {p0, v1}, Lcom/yf/lib/ui/views/birthday/WheelView;->a(Landroid/text/Layout;)I

    move-result v1

    .line 718
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_1

    .line 719
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 835
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getAdapter()Lcom/yf/lib/ui/views/birthday/d;

    move-result-object v0

    .line 836
    if-nez v0, :cond_1

    .line 844
    :cond_0
    :goto_0
    return v1

    .line 840
    :cond_1
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->C:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 842
    invoke-direct {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->g()V

    goto :goto_0
.end method

.method public setAdapter(Lcom/yf/lib/ui/views/birthday/d;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->l:Lcom/yf/lib/ui/views/birthday/d;

    .line 230
    invoke-direct {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->d()V

    .line 231
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->invalidate()V

    .line 232
    return-void
.end method

.method public setCenter(Z)V
    .locals 0

    .prologue
    .line 664
    iput-boolean p1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->I:Z

    .line 665
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yf/lib/ui/views/birthday/WheelView;->a(IZ)V

    .line 403
    return-void
.end method

.method public setCyclic(Z)V
    .locals 0

    .prologue
    .line 422
    iput-boolean p1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->b:Z

    .line 424
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->invalidate()V

    .line 425
    invoke-direct {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->d()V

    .line 426
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->D:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 241
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->D:Landroid/widget/Scroller;

    .line 242
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->w:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->w:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    :cond_0
    iput-object p1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->w:Ljava/lang/String;

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->u:Landroid/text/StaticLayout;

    .line 281
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->invalidate()V

    .line 283
    :cond_1
    return-void
.end method

.method public setLabelColor(I)V
    .locals 0

    .prologue
    .line 1050
    sput p1, Lcom/yf/lib/ui/views/birthday/WheelView;->c:I

    .line 1051
    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0

    .prologue
    .line 259
    iput p1, p0, Lcom/yf/lib/ui/views/birthday/WheelView;->p:I

    .line 260
    invoke-virtual {p0}, Lcom/yf/lib/ui/views/birthday/WheelView;->invalidate()V

    .line 261
    return-void
.end method
