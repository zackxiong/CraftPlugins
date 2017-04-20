.class public Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;
.super Landroid/view/View;
.source "ProGuard"


# instance fields
.field private a:Lcom/yf/smart/weloopx/android/ui/widget/g;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;->a()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;->a()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/yf/smart/weloopx/R$styleable;->SmoothCircularProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 34
    const/16 v2, 0x8

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 35
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;->a:Lcom/yf/smart/weloopx/android/ui/widget/g;

    invoke-virtual {v3, v2}, Lcom/yf/smart/weloopx/android/ui/widget/g;->a(F)V

    .line 37
    const/4 v2, 0x7

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 38
    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;->setProgressOnly(I)V

    .line 40
    const/16 v2, 0x9

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 44
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;->a:Lcom/yf/smart/weloopx/android/ui/widget/g;

    invoke-virtual {v3, v2}, Lcom/yf/smart/weloopx/android/ui/widget/g;->a([I)V

    .line 47
    :cond_0
    const/16 v2, 0xa

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;->a:Lcom/yf/smart/weloopx/android/ui/widget/g;

    invoke-virtual {v3, v2}, Lcom/yf/smart/weloopx/android/ui/widget/g;->b([I)V

    .line 53
    :cond_1
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 56
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;->a:Lcom/yf/smart/weloopx/android/ui/widget/g;

    invoke-virtual {v2, v0}, Lcom/yf/smart/weloopx/android/ui/widget/g;->c([I)V

    .line 58
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/widget/g;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/android/ui/widget/g;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;->a:Lcom/yf/smart/weloopx/android/ui/widget/g;

    .line 63
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;->a:Lcom/yf/smart/weloopx/android/ui/widget/g;

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/android/ui/widget/g;->draw(Landroid/graphics/Canvas;)V

    .line 94
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 87
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;->a:Lcom/yf/smart/weloopx/android/ui/widget/g;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/g;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 88
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;->b:I

    if-eq p1, v0, :cond_0

    .line 67
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;->setProgressOnly(I)V

    .line 68
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;->postInvalidate()V

    .line 70
    :cond_0
    return-void
.end method

.method public setProgressOnly(I)V
    .locals 2

    .prologue
    .line 73
    if-gez p1, :cond_1

    .line 74
    const/4 v0, 0x0

    .line 77
    :goto_0
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 78
    const/16 v0, 0x6e

    .line 80
    :cond_0
    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;->b:I

    .line 81
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;->a:Lcom/yf/smart/weloopx/android/ui/widget/g;

    mul-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/widget/g;->b(F)V

    .line 82
    return-void

    :cond_1
    move v0, p1

    goto :goto_0
.end method
