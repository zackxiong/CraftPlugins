.class public Landroid/support/v7/widget/d;
.super Landroid/widget/Button;
.source "ProGuard"


# static fields
.field private static final a:[I


# instance fields
.field private b:Landroid/support/v7/internal/widget/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100d4

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/d;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 56
    sget v0, Landroid/support/v7/appcompat/R$attr;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const v5, 0x1010038

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    sget-boolean v0, Landroid/support/v7/internal/widget/ab;->a:Z

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0}, Landroid/support/v7/widget/d;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/d;->a:[I

    invoke-static {v0, p2, v1, p3, v3}, Landroid/support/v7/internal/widget/ac;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/ac;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ac;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ac;->c()Landroid/support/v7/internal/widget/ab;

    move-result-object v1

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/internal/widget/ac;->f(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ab;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/d;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 71
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ac;->b()V

    .line 75
    :cond_1
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_android_textAppearance:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    if-eq v1, v4, :cond_3

    .line 82
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/d;->setAllCaps(Z)V

    .line 86
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    :cond_3
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_textAllCaps:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_textAllCaps:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/d;->setAllCaps(Z)V

    .line 94
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    invoke-virtual {p0}, Landroid/support/v7/widget/d;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_5

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_6

    .line 105
    invoke-static {p1, v5}, Landroid/support/v7/internal/widget/y;->c(Landroid/content/Context;I)I

    move-result v0

    .line 115
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v1, v0}, Landroid/support/v7/internal/widget/y;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/d;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 118
    :cond_5
    return-void

    .line 111
    :cond_6
    invoke-static {p1, v5}, Landroid/support/v7/internal/widget/y;->a(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/support/v7/widget/d;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Landroid/support/v7/internal/widget/aa;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Landroid/support/v7/internal/widget/aa;

    invoke-static {p0, v0}, Landroid/support/v7/internal/widget/ab;->a(Landroid/view/View;Landroid/support/v7/internal/widget/aa;)V

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 182
    invoke-direct {p0}, Landroid/support/v7/widget/d;->a()V

    .line 183
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Landroid/support/v7/internal/widget/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Landroid/support/v7/internal/widget/aa;

    iget-object v0, v0, Landroid/support/v7/internal/widget/aa;->a:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Landroid/support/v7/internal/widget/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Landroid/support/v7/internal/widget/aa;

    iget-object v0, v0, Landroid/support/v7/internal/widget/aa;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 194
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 195
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 200
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 201
    return-void
.end method

.method public setAllCaps(Z)V
    .locals 2

    .prologue
    .line 204
    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/v7/internal/b/a;

    invoke-virtual {p0}, Landroid/support/v7/widget/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/b/a;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/d;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 205
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Landroid/support/v7/internal/widget/aa;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Landroid/support/v7/internal/widget/aa;

    invoke-direct {v0}, Landroid/support/v7/internal/widget/aa;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/d;->b:Landroid/support/v7/internal/widget/aa;

    .line 132
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Landroid/support/v7/internal/widget/aa;

    iput-object p1, v0, Landroid/support/v7/internal/widget/aa;->a:Landroid/content/res/ColorStateList;

    .line 133
    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Landroid/support/v7/internal/widget/aa;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/aa;->d:Z

    .line 135
    invoke-direct {p0}, Landroid/support/v7/widget/d;->a()V

    .line 136
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Landroid/support/v7/internal/widget/aa;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Landroid/support/v7/internal/widget/aa;

    invoke-direct {v0}, Landroid/support/v7/internal/widget/aa;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/d;->b:Landroid/support/v7/internal/widget/aa;

    .line 161
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Landroid/support/v7/internal/widget/aa;

    iput-object p1, v0, Landroid/support/v7/internal/widget/aa;->b:Landroid/graphics/PorterDuff$Mode;

    .line 162
    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Landroid/support/v7/internal/widget/aa;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/aa;->c:Z

    .line 164
    invoke-direct {p0}, Landroid/support/v7/widget/d;->a()V

    .line 165
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 209
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 211
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 212
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/d;->setAllCaps(Z)V

    .line 215
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 216
    return-void
.end method
