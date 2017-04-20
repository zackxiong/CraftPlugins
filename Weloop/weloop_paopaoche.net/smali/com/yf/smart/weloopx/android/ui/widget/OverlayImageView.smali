.class public Lcom/yf/smart/weloopx/android/ui/widget/OverlayImageView;
.super Landroid/widget/ImageView;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/res/ColorStateList;

.field private b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OverlayImageView;->a:Landroid/content/res/ColorStateList;

    .line 42
    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OverlayImageView;->b:Landroid/graphics/drawable/Drawable;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yf/smart/weloopx/android/ui/widget/OverlayImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OverlayImageView;->a:Landroid/content/res/ColorStateList;

    .line 42
    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OverlayImageView;->b:Landroid/graphics/drawable/Drawable;

    .line 27
    sget-object v0, Lcom/yf/smart/weloopx/R$styleable;->OverlayImageView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 28
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/OverlayImageView;->b:Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/OverlayImageView;->a:Landroid/content/res/ColorStateList;

    .line 30
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 46
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OverlayImageView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OverlayImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/OverlayImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 48
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OverlayImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OverlayImageView;->a:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OverlayImageView;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/OverlayImageView;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 54
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 36
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OverlayImageView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OverlayImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/OverlayImageView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/OverlayImageView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/OverlayImageView;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/OverlayImageView;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 39
    :cond_0
    return-void
.end method
