.class public abstract Lcom/handmark/pulltorefresh/library/a/d;
.super Landroid/widget/FrameLayout;
.source "ProGuard"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/a/d$1;
    }
.end annotation


# static fields
.field static final a:Landroid/view/animation/Interpolator;


# instance fields
.field protected final b:Landroid/widget/ImageView;

.field protected final c:Landroid/widget/ProgressBar;

.field protected final d:Lcom/handmark/pulltorefresh/library/e$b;

.field protected final e:Lcom/handmark/pulltorefresh/library/e$h;

.field private f:Landroid/widget/FrameLayout;

.field private g:Z

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/handmark/pulltorefresh/library/a/d;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;Lcom/handmark/pulltorefresh/library/e$h;Landroid/content/res/TypedArray;)V
    .locals 3

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 69
    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/a/d;->d:Lcom/handmark/pulltorefresh/library/e$b;

    .line 70
    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/a/d;->e:Lcom/handmark/pulltorefresh/library/e$h;

    .line 72
    sget-object v0, Lcom/handmark/pulltorefresh/library/a/d$1;->a:[I

    invoke-virtual {p3}, Lcom/handmark/pulltorefresh/library/e$h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/yf/ui/R$layout;->pull_to_refresh_header_vertical:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    :goto_0
    sget v0, Lcom/yf/ui/R$id;->fl_inner:I

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->f:Landroid/widget/FrameLayout;

    .line 84
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->f:Landroid/widget/FrameLayout;

    sget v1, Lcom/yf/ui/R$id;->pull_to_refresh_text:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->h:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->f:Landroid/widget/FrameLayout;

    sget v1, Lcom/yf/ui/R$id;->pull_to_refresh_progress:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->c:Landroid/widget/ProgressBar;

    .line 86
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->f:Landroid/widget/FrameLayout;

    sget v1, Lcom/yf/ui/R$id;->pull_to_refresh_sub_text:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->f:Landroid/widget/FrameLayout;

    sget v1, Lcom/yf/ui/R$id;->pull_to_refresh_image:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->b:Landroid/widget/ImageView;

    .line 89
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 91
    sget-object v1, Lcom/handmark/pulltorefresh/library/a/d$1;->b:[I

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/e$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 103
    sget-object v1, Lcom/handmark/pulltorefresh/library/e$h;->a:Lcom/handmark/pulltorefresh/library/e$h;

    if-ne p3, v1, :cond_9

    const/16 v1, 0x50

    :goto_1
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 106
    sget v0, Lcom/yf/ui/R$string;->pull_to_refresh_pull_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->j:Ljava/lang/CharSequence;

    .line 107
    sget v0, Lcom/yf/ui/R$string;->pull_to_refresh_refreshing_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->k:Ljava/lang/CharSequence;

    .line 108
    sget v0, Lcom/yf/ui/R$string;->pull_to_refresh_release_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->l:Ljava/lang/CharSequence;

    .line 112
    :goto_2
    sget v0, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrHeaderBackground:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    sget v0, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrHeaderBackground:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    invoke-static {p0, v0}, Lcom/handmark/pulltorefresh/library/a/g;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_0
    sget v0, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrHeaderTextAppearance:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 121
    sget v1, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrHeaderTextAppearance:I

    invoke-virtual {p4, v1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 122
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v0}, Lcom/handmark/pulltorefresh/library/a/d;->setTextAppearance(I)V

    .line 124
    :cond_1
    sget v0, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrSubHeaderTextAppearance:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 126
    sget v1, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrSubHeaderTextAppearance:I

    invoke-virtual {p4, v1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 127
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v0}, Lcom/handmark/pulltorefresh/library/a/d;->setSubTextAppearance(I)V

    .line 131
    :cond_2
    sget v0, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrHeaderTextColor:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    sget v0, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrHeaderTextColor:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_3

    .line 134
    invoke-direct {p0, v0}, Lcom/handmark/pulltorefresh/library/a/d;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 137
    :cond_3
    sget v0, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrHeaderSubTextColor:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    sget v0, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrHeaderSubTextColor:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_4

    .line 140
    invoke-direct {p0, v0}, Lcom/handmark/pulltorefresh/library/a/d;->setSubTextColor(Landroid/content/res/ColorStateList;)V

    .line 145
    :cond_4
    const/4 v0, 0x0

    .line 146
    sget v1, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrDrawable:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 147
    sget v0, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrDrawable:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 152
    :cond_5
    sget-object v1, Lcom/handmark/pulltorefresh/library/a/d$1;->b:[I

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/e$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    .line 155
    sget v1, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrDrawableStart:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 156
    sget v0, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrDrawableStart:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 174
    :cond_6
    :goto_3
    if-nez v0, :cond_7

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/d;->getDefaultDrawableResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 179
    :cond_7
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/a/d;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/d;->i()V

    .line 182
    return-void

    .line 75
    :pswitch_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/yf/ui/R$layout;->pull_to_refresh_header_horizontal:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 93
    :pswitch_1
    sget-object v1, Lcom/handmark/pulltorefresh/library/e$h;->a:Lcom/handmark/pulltorefresh/library/e$h;

    if-ne p3, v1, :cond_8

    const/16 v1, 0x30

    :goto_4
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 96
    sget v0, Lcom/yf/ui/R$string;->pull_to_refresh_from_bottom_pull_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->j:Ljava/lang/CharSequence;

    .line 97
    sget v0, Lcom/yf/ui/R$string;->pull_to_refresh_from_bottom_refreshing_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->k:Ljava/lang/CharSequence;

    .line 98
    sget v0, Lcom/yf/ui/R$string;->pull_to_refresh_from_bottom_release_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->l:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 93
    :cond_8
    const/4 v1, 0x3

    goto :goto_4

    .line 103
    :cond_9
    const/4 v1, 0x5

    goto/16 :goto_1

    .line 157
    :cond_a
    sget v1, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrDrawableTop:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 158
    const-string v0, "ptrDrawableTop"

    const-string v1, "ptrDrawableStart"

    invoke-static {v0, v1}, Lcom/handmark/pulltorefresh/library/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget v0, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrDrawableTop:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    .line 164
    :pswitch_2
    sget v1, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrDrawableEnd:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 165
    sget v0, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrDrawableEnd:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    .line 166
    :cond_b
    sget v1, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrDrawableBottom:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 167
    const-string v0, "ptrDrawableBottom"

    const-string v1, "ptrDrawableEnd"

    invoke-static {v0, v1}, Lcom/handmark/pulltorefresh/library/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget v0, Lcom/yf/ui/R$styleable;->PullToRefresh_ptrDrawableBottom:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_3

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 91
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 152
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private setSubHeaderText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 350
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 351
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSubTextAppearance(I)V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 369
    :cond_0
    return-void
.end method

.method private setSubTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 375
    :cond_0
    return-void
.end method

.method private setTextAppearance(I)V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 384
    :cond_1
    return-void
.end method

.method private setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 393
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(F)V
.end method

.method protected abstract a(Landroid/graphics/drawable/Drawable;)V
.end method

.method protected abstract b()V
.end method

.method public final b(F)V
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->g:Z

    if-nez v0, :cond_0

    .line 223
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/a/d;->a(F)V

    .line 225
    :cond_0
    return-void
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method public final e()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 207
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    :cond_3
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/a/d;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/d;->a()V

    .line 234
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/a/d;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :cond_0
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->g:Z

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    :cond_1
    return-void

    .line 245
    :cond_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/d;->b()V

    goto :goto_0
.end method

.method public final getContentSize()I
    .locals 2

    .prologue
    .line 197
    sget-object v0, Lcom/handmark/pulltorefresh/library/a/d$1;->a:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/a/d;->e:Lcom/handmark/pulltorefresh/library/e$h;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/e$h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 202
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    .line 199
    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract getDefaultDrawableResId()I
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/a/d;->l:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/d;->c()V

    .line 260
    return-void
.end method

.method public final i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 263
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/a/d;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->g:Z

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    :cond_1
    :goto_1
    return-void

    .line 272
    :cond_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/d;->d()V

    goto :goto_0

    .line 279
    :cond_3
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final j()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 327
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    :cond_3
    return-void
.end method

.method public final setHeight(I)V
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/d;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 186
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 187
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/d;->requestLayout()V

    .line 188
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/a/d;->setSubHeaderText(Ljava/lang/CharSequence;)V

    .line 287
    return-void
.end method

.method public final setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->g:Z

    .line 296
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/a/d;->a(Landroid/graphics/drawable/Drawable;)V

    .line 297
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/a/d;->j:Ljava/lang/CharSequence;

    .line 301
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/a/d;->k:Ljava/lang/CharSequence;

    .line 305
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/a/d;->l:Ljava/lang/CharSequence;

    .line 309
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/a/d;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 314
    return-void
.end method

.method public final setWidth(I)V
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/d;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 192
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 193
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/a/d;->requestLayout()V

    .line 194
    return-void
.end method
