.class public Lcom/yf/smart/weloopx/android/ui/widget/ChartView;
.super Landroid/view/View;
.source "ProGuard"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/android/ui/widget/t;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/yf/smart/weloopx/android/ui/widget/t;

.field private c:F

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a:Ljava/util/List;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a:Ljava/util/List;

    .line 30
    sget-object v0, Lcom/yf/smart/weloopx/R$styleable;->ChartView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->e:F

    .line 32
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->d:F

    .line 33
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->c:F

    .line 34
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->b:Lcom/yf/smart/weloopx/android/ui/widget/t;

    .line 60
    return-void
.end method

.method public a(Lcom/yf/smart/weloopx/android/ui/widget/t;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public getBottomLabelHeight()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->e:F

    return v0
.end method

.method public getXSize()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->c:F

    return v0
.end method

.method public getYSize()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->d:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/widget/t;

    .line 95
    invoke-virtual {v0, p1, p0}, Lcom/yf/smart/weloopx/android/ui/widget/t;->a(Landroid/graphics/Canvas;Lcom/yf/smart/weloopx/android/ui/widget/ChartView;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->b:Lcom/yf/smart/weloopx/android/ui/widget/t;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->b:Lcom/yf/smart/weloopx/android/ui/widget/t;

    invoke-virtual {v0, p1, p0}, Lcom/yf/smart/weloopx/android/ui/widget/t;->a(Landroid/graphics/Canvas;Lcom/yf/smart/weloopx/android/ui/widget/ChartView;)V

    .line 101
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->c:F

    float-to-int v0, v0

    .line 85
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->getBottomLabelHeight()F

    move-result v1

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->getYSize()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 86
    invoke-static {v0, p1, v3}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->resolveSizeAndState(III)I

    move-result v0

    invoke-static {v1, p2, v3}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->setMeasuredDimension(II)V

    .line 88
    return-void
.end method

.method public setBottomLabelHeight(F)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->e:F

    .line 80
    return-void
.end method

.method public setBottomLabelSeries(Lcom/yf/smart/weloopx/android/ui/widget/t;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->b:Lcom/yf/smart/weloopx/android/ui/widget/t;

    .line 47
    return-void
.end method

.method public setXSize(F)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->c:F

    .line 64
    return-void
.end method

.method public setYSize(F)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->d:F

    .line 72
    return-void
.end method
