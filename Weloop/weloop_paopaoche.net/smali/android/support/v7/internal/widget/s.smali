.class public Landroid/support/v7/internal/widget/s;
.super Landroid/widget/HorizontalScrollView;
.source "ProGuard"

# interfaces
.implements Landroid/support/v7/internal/widget/j$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/s$b;,
        Landroid/support/v7/internal/widget/s$a;,
        Landroid/support/v7/internal/widget/s$c;
    }
.end annotation


# static fields
.field private static final j:Landroid/view/animation/Interpolator;


# instance fields
.field a:Ljava/lang/Runnable;

.field b:I

.field c:I

.field private d:Landroid/support/v7/internal/widget/s$b;

.field private e:Landroid/support/v7/widget/m;

.field private f:Landroid/support/v7/internal/widget/SpinnerCompat;

.field private g:Z

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/internal/widget/s;->j:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private a(Landroid/support/v7/app/a$b;Z)Landroid/support/v7/internal/widget/s$c;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 288
    new-instance v0, Landroid/support/v7/internal/widget/s$c;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/support/v7/internal/widget/s$c;-><init>(Landroid/support/v7/internal/widget/s;Landroid/content/Context;Landroid/support/v7/app/a$b;Z)V

    .line 289
    if-eqz p2, :cond_0

    .line 290
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/s$c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Landroid/support/v7/internal/widget/s;->h:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/s$c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    :goto_0
    return-object v0

    .line 294
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/s$c;->setFocusable(Z)V

    .line 296
    iget-object v1, p0, Landroid/support/v7/internal/widget/s;->d:Landroid/support/v7/internal/widget/s$b;

    if-nez v1, :cond_1

    .line 297
    new-instance v1, Landroid/support/v7/internal/widget/s$b;

    invoke-direct {v1, p0, v2}, Landroid/support/v7/internal/widget/s$b;-><init>(Landroid/support/v7/internal/widget/s;Landroid/support/v7/internal/widget/t;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/s;->d:Landroid/support/v7/internal/widget/s$b;

    .line 299
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/widget/s;->d:Landroid/support/v7/internal/widget/s$b;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/s$c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/s;Landroid/support/v7/app/a$b;Z)Landroid/support/v7/internal/widget/s$c;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/s;->a(Landroid/support/v7/app/a$b;Z)Landroid/support/v7/internal/widget/s$c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/s;)Landroid/support/v7/widget/m;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->e:Landroid/support/v7/widget/m;

    return-object v0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 150
    invoke-direct {p0}, Landroid/support/v7/internal/widget/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-nez v0, :cond_1

    .line 153
    invoke-direct {p0}, Landroid/support/v7/internal/widget/s;->d()Landroid/support/v7/internal/widget/SpinnerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/s;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    .line 155
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->e:Landroid/support/v7/widget/m;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/s;->removeView(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/s;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->c()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 159
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    new-instance v1, Landroid/support/v7/internal/widget/s$a;

    invoke-direct {v1, p0, v4}, Landroid/support/v7/internal/widget/s$a;-><init>(Landroid/support/v7/internal/widget/s;Landroid/support/v7/internal/widget/t;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/widget/SpinnerAdapter;)V

    .line 161
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/s;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 163
    iput-object v4, p0, Landroid/support/v7/internal/widget/s;->a:Ljava/lang/Runnable;

    .line 165
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget v1, p0, Landroid/support/v7/internal/widget/s;->i:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    goto :goto_0
.end method

.method private c()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 169
    invoke-direct {p0}, Landroid/support/v7/internal/widget/s;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return v4

    .line 171
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/s;->removeView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->e:Landroid/support/v7/widget/m;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/s;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/s;->setTabSelected(I)V

    goto :goto_0
.end method

.method private d()Landroid/support/v7/internal/widget/SpinnerCompat;
    .locals 4

    .prologue
    .line 210
    new-instance v0, Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$attr;->actionDropDownStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 212
    new-instance v1, Landroid/support/v7/widget/m$a;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/m$a;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/j$b;)V

    .line 215
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->e:Landroid/support/v7/widget/m;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 257
    iget-object v1, p0, Landroid/support/v7/internal/widget/s;->a:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Landroid/support/v7/internal/widget/s;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/s;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 260
    :cond_0
    new-instance v1, Landroid/support/v7/internal/widget/t;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/internal/widget/t;-><init>(Landroid/support/v7/internal/widget/s;Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/s;->a:Ljava/lang/Runnable;

    .line 267
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/s;->post(Ljava/lang/Runnable;)Z

    .line 268
    return-void
.end method

.method public a(Landroid/support/v7/internal/widget/j;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/internal/widget/j",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 366
    check-cast p2, Landroid/support/v7/internal/widget/s$c;

    .line 367
    invoke-virtual {p2}, Landroid/support/v7/internal/widget/s$c;->b()Landroid/support/v7/app/a$b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a$b;->d()V

    .line 368
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 273
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/s;->post(Ljava/lang/Runnable;)Z

    .line 277
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 220
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->e()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/s;->setContentHeight(I)V

    .line 227
    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->g()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/s;->c:I

    .line 228
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 282
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/s;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 285
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 94
    if-ne v3, v6, :cond_2

    move v0, v1

    .line 95
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/s;->setFillViewport(Z)V

    .line 97
    iget-object v4, p0, Landroid/support/v7/internal/widget/s;->e:Landroid/support/v7/widget/m;

    invoke-virtual {v4}, Landroid/support/v7/widget/m;->getChildCount()I

    move-result v4

    .line 98
    if-le v4, v1, :cond_4

    if-eq v3, v6, :cond_0

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_4

    .line 100
    :cond_0
    const/4 v3, 0x2

    if-le v4, v3, :cond_3

    .line 101
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v7/internal/widget/s;->b:I

    .line 105
    :goto_1
    iget v3, p0, Landroid/support/v7/internal/widget/s;->b:I

    iget v4, p0, Landroid/support/v7/internal/widget/s;->c:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/s;->b:I

    .line 110
    :goto_2
    iget v3, p0, Landroid/support/v7/internal/widget/s;->h:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 112
    if-nez v0, :cond_5

    iget-boolean v4, p0, Landroid/support/v7/internal/widget/s;->g:Z

    if-eqz v4, :cond_5

    .line 114
    :goto_3
    if-eqz v1, :cond_7

    .line 116
    iget-object v1, p0, Landroid/support/v7/internal/widget/s;->e:Landroid/support/v7/widget/m;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/m;->measure(II)V

    .line 117
    iget-object v1, p0, Landroid/support/v7/internal/widget/s;->e:Landroid/support/v7/widget/m;

    invoke-virtual {v1}, Landroid/support/v7/widget/m;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-le v1, v2, :cond_6

    .line 118
    invoke-direct {p0}, Landroid/support/v7/internal/widget/s;->b()V

    .line 126
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s;->getMeasuredWidth()I

    move-result v1

    .line 127
    invoke-super {p0, p1, v3}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 128
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s;->getMeasuredWidth()I

    move-result v2

    .line 130
    if-eqz v0, :cond_1

    if-eq v1, v2, :cond_1

    .line 132
    iget v0, p0, Landroid/support/v7/internal/widget/s;->i:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/s;->setTabSelected(I)V

    .line 134
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 94
    goto :goto_0

    .line 103
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/support/v7/internal/widget/s;->b:I

    goto :goto_1

    .line 107
    :cond_4
    const/4 v3, -0x1

    iput v3, p0, Landroid/support/v7/internal/widget/s;->b:I

    goto :goto_2

    :cond_5
    move v1, v2

    .line 112
    goto :goto_3

    .line 120
    :cond_6
    invoke-direct {p0}, Landroid/support/v7/internal/widget/s;->c()Z

    goto :goto_4

    .line 123
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/internal/widget/s;->c()Z

    goto :goto_4
.end method

.method public setAllowCollapse(Z)V
    .locals 0

    .prologue
    .line 146
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/s;->g:Z

    .line 147
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    .prologue
    .line 195
    iput p1, p0, Landroid/support/v7/internal/widget/s;->h:I

    .line 196
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s;->requestLayout()V

    .line 197
    return-void
.end method

.method public setTabSelected(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 179
    iput p1, p0, Landroid/support/v7/internal/widget/s;->i:I

    .line 180
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->e:Landroid/support/v7/widget/m;

    invoke-virtual {v0}, Landroid/support/v7/widget/m;->getChildCount()I

    move-result v3

    move v2, v1

    .line 181
    :goto_0
    if-ge v2, v3, :cond_2

    .line 182
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->e:Landroid/support/v7/widget/m;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 183
    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    .line 184
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/s;->a(I)V

    .line 181
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 183
    goto :goto_1

    .line 189
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    .line 190
    iget-object v0, p0, Landroid/support/v7/internal/widget/s;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 192
    :cond_3
    return-void
.end method
