.class public Lit/sephiroth/android/library/widget/CenterHListView;
.super Lit/sephiroth/android/library/widget/m;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/widget/CenterHListView$a;
    }
.end annotation


# instance fields
.field private aA:I

.field private aB:Lit/sephiroth/android/library/widget/CenterHListView$a;

.field private aC:Ljava/lang/Runnable;

.field private aD:Z

.field private aE:I

.field private az:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/m;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lit/sephiroth/android/library/widget/i;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/i;-><init>(Lit/sephiroth/android/library/widget/CenterHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/CenterHListView;->aC:Ljava/lang/Runnable;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/CenterHListView;->aD:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lit/sephiroth/android/library/widget/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Lit/sephiroth/android/library/widget/i;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/i;-><init>(Lit/sephiroth/android/library/widget/CenterHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/CenterHListView;->aC:Ljava/lang/Runnable;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/CenterHListView;->aD:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Lit/sephiroth/android/library/widget/i;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/i;-><init>(Lit/sephiroth/android/library/widget/CenterHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/CenterHListView;->aC:Ljava/lang/Runnable;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/CenterHListView;->aD:Z

    .line 30
    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/CenterHListView;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lit/sephiroth/android/library/widget/CenterHListView;->az:I

    return v0
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/CenterHListView;I)I
    .locals 0

    .prologue
    .line 13
    iput p1, p0, Lit/sephiroth/android/library/widget/CenterHListView;->aA:I

    return p1
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/CenterHListView;)Lit/sephiroth/android/library/widget/CenterHListView$a;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lit/sephiroth/android/library/widget/CenterHListView;->aB:Lit/sephiroth/android/library/widget/CenterHListView$a;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 66
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/m;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/CenterHListView;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/CenterHListView;->aD:Z

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/CenterHListView;->aD:Z

    .line 72
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/CenterHListView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/CenterHListView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/CenterHListView;->a(II)I

    move-result v0

    .line 73
    if-ltz v0, :cond_0

    .line 74
    if-nez v0, :cond_4

    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 80
    :cond_2
    :goto_1
    iget v1, p0, Lit/sephiroth/android/library/widget/CenterHListView;->aE:I

    .line 81
    iget v2, p0, Lit/sephiroth/android/library/widget/CenterHListView;->V:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/CenterHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 82
    if-gtz v1, :cond_3

    .line 83
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/CenterHListView;->getWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 85
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-le v3, v1, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v1

    .line 86
    :goto_2
    const/16 v3, 0x64

    if-le v2, v3, :cond_6

    const/16 v2, 0x190

    .line 87
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lit/sephiroth/android/library/widget/CenterHListView;->a(III)V

    .line 88
    iput v0, p0, Lit/sephiroth/android/library/widget/CenterHListView;->az:I

    .line 89
    iget-object v0, p0, Lit/sephiroth/android/library/widget/CenterHListView;->aC:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/CenterHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 90
    iget-object v0, p0, Lit/sephiroth/android/library/widget/CenterHListView;->aC:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/CenterHListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 76
    :cond_4
    iget v1, p0, Lit/sephiroth/android/library/widget/CenterHListView;->ao:I

    add-int/lit8 v1, v1, -0x1

    if-ne v1, v0, :cond_2

    .line 77
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 85
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v1, v2

    goto :goto_2

    .line 86
    :cond_6
    mul-int/lit8 v2, v2, 0x4

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/m;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 54
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 55
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/CenterHListView;->aD:Z

    .line 57
    :cond_0
    return v0
.end method

.method public setActionUp(Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/CenterHListView;->aD:Z

    .line 62
    return-void
.end method

.method public setCenterItemLeft(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lit/sephiroth/android/library/widget/CenterHListView;->aE:I

    .line 100
    return-void
.end method

.method public setOnCenterItemListener(Lit/sephiroth/android/library/widget/CenterHListView$a;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lit/sephiroth/android/library/widget/CenterHListView;->aB:Lit/sephiroth/android/library/widget/CenterHListView$a;

    .line 38
    return-void
.end method
