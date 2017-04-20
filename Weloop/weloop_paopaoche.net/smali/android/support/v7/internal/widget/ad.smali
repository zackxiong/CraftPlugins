.class public Landroid/support/v7/internal/widget/ad;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/support/v7/internal/widget/n;


# instance fields
.field private a:Landroid/support/v7/widget/Toolbar;

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Z

.field private i:Ljava/lang/CharSequence;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field private l:Landroid/view/Window$Callback;

.field private m:Z

.field private n:Landroid/support/v7/widget/ActionMenuPresenter;

.field private o:I

.field private final p:Landroid/support/v7/internal/widget/ab;

.field private q:I

.field private r:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 2

    .prologue
    .line 87
    sget v0, Landroid/support/v7/appcompat/R$string;->abc_action_bar_up_description:I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_ab_back_mtrl_am_alpha:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/internal/widget/ad;-><init>(Landroid/support/v7/widget/Toolbar;ZII)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/Toolbar;ZII)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput v1, p0, Landroid/support/v7/internal/widget/ad;->o:I

    .line 83
    iput v1, p0, Landroid/support/v7/internal/widget/ad;->q:I

    .line 93
    iput-object p1, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    .line 94
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ad;->i:Ljava/lang/CharSequence;

    .line 95
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ad;->j:Ljava/lang/CharSequence;

    .line 96
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ad;->h:Z

    .line 97
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ad;->g:Landroid/graphics/drawable/Drawable;

    .line 99
    if-eqz p2, :cond_d

    .line 100
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    invoke-static {v0, v2, v3, v4, v1}, Landroid/support/v7/internal/widget/ac;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/ac;

    move-result-object v0

    .line 103
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_title:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ac;->c(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 104
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ad;->b(Ljava/lang/CharSequence;)V

    .line 108
    :cond_0
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_subtitle:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ac;->c(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 109
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 110
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ad;->c(Ljava/lang/CharSequence;)V

    .line 113
    :cond_1
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_logo:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ac;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 114
    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ad;->c(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :cond_2
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_icon:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ac;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 119
    iget-object v3, p0, Landroid/support/v7/internal/widget/ad;->g:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    .line 120
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ad;->a(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :cond_3
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ac;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 124
    if-eqz v2, :cond_4

    .line 125
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ad;->d(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_4
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_displayOptions:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/ac;->a(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ad;->c(I)V

    .line 130
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_customNavigationLayout:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/ac;->f(II)I

    move-result v2

    .line 132
    if-eqz v2, :cond_5

    .line 133
    iget-object v3, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ad;->a(Landroid/view/View;)V

    .line 135
    iget v2, p0, Landroid/support/v7/internal/widget/ad;->b:I

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ad;->c(I)V

    .line 138
    :cond_5
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/ac;->e(II)I

    move-result v2

    .line 139
    if-lez v2, :cond_6

    .line 140
    iget-object v3, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 141
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    iget-object v2, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    :cond_6
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_contentInsetStart:I

    invoke-virtual {v0, v2, v5}, Landroid/support/v7/internal/widget/ac;->c(II)I

    move-result v2

    .line 147
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_contentInsetEnd:I

    invoke-virtual {v0, v3, v5}, Landroid/support/v7/internal/widget/ac;->c(II)I

    move-result v3

    .line 149
    if-gez v2, :cond_7

    if-ltz v3, :cond_8

    .line 150
    :cond_7
    iget-object v4, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/support/v7/widget/Toolbar;->a(II)V

    .line 154
    :cond_8
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_titleTextStyle:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/ac;->f(II)I

    move-result v2

    .line 155
    if-eqz v2, :cond_9

    .line 156
    iget-object v3, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/content/Context;I)V

    .line 159
    :cond_9
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_subtitleTextStyle:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/ac;->f(II)I

    move-result v2

    .line 161
    if-eqz v2, :cond_a

    .line 162
    iget-object v3, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/content/Context;I)V

    .line 165
    :cond_a
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_popupTheme:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/ac;->f(II)I

    move-result v1

    .line 166
    if-eqz v1, :cond_b

    .line 167
    iget-object v2, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 170
    :cond_b
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ac;->b()V

    .line 172
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ac;->c()Landroid/support/v7/internal/widget/ab;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ad;->p:Landroid/support/v7/internal/widget/ab;

    .line 179
    :goto_1
    invoke-virtual {p0, p3}, Landroid/support/v7/internal/widget/ad;->d(I)V

    .line 180
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ad;->k:Ljava/lang/CharSequence;

    .line 182
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->p:Landroid/support/v7/internal/widget/ab;

    invoke-virtual {v0, p4}, Landroid/support/v7/internal/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ad;->b(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Landroid/support/v7/internal/widget/ae;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ae;-><init>(Landroid/support/v7/internal/widget/ad;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void

    :cond_c
    move v0, v1

    .line 96
    goto/16 :goto_0

    .line 174
    :cond_d
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ad;->q()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/ad;->b:I

    .line 176
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/widget/ab;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/ab;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ad;->p:Landroid/support/v7/internal/widget/ab;

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ad;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/ad;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->i:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/widget/ad;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->l:Landroid/view/Window$Callback;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/internal/widget/ad;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ad;->m:Z

    return v0
.end method

.method private e(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 283
    iput-object p1, p0, Landroid/support/v7/internal/widget/ad;->i:Ljava/lang/CharSequence;

    .line 284
    iget v0, p0, Landroid/support/v7/internal/widget/ad;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    :cond_0
    return-void
.end method

.method private q()I
    .locals 2

    .prologue
    .line 225
    const/16 v0, 0xb

    .line 227
    iget-object v1, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 228
    const/16 v0, 0xf

    .line 230
    :cond_0
    return v0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 366
    const/4 v0, 0x0

    .line 367
    iget v1, p0, Landroid/support/v7/internal/widget/ad;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 368
    iget v0, p0, Landroid/support/v7/internal/widget/ad;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->f:Landroid/graphics/drawable/Drawable;

    .line 374
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 375
    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 371
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 654
    iget v0, p0, Landroid/support/v7/internal/widget/ad;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/internal/widget/ad;->q:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ad;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 664
    iget v0, p0, Landroid/support/v7/internal/widget/ad;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 665
    iget-object v1, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->g:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 667
    :cond_0
    return-void

    .line 665
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->r:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 345
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->p:Landroid/support/v7/internal/widget/ab;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ad;->a(Landroid/graphics/drawable/Drawable;)V

    .line 346
    return-void

    .line 345
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Landroid/support/v7/internal/widget/ad;->e:Landroid/graphics/drawable/Drawable;

    .line 351
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ad;->r()V

    .line 352
    return-void
.end method

.method public a(Landroid/support/v7/internal/widget/s;)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 468
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 469
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ad;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 471
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ad;->c:Landroid/view/View;

    .line 472
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/internal/widget/ad;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 473
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ad;->c:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 474
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$b;

    .line 475
    iput v3, v0, Landroid/support/v7/widget/Toolbar$b;->width:I

    .line 476
    iput v3, v0, Landroid/support/v7/widget/Toolbar$b;->height:I

    .line 477
    const v1, 0x800053

    iput v1, v0, Landroid/support/v7/widget/Toolbar$b;->a:I

    .line 478
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/widget/s;->setAllowCollapse(Z)V

    .line 480
    :cond_1
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/m$a;)V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ad;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 411
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    sget v1, Landroid/support/v7/appcompat/R$id;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(I)V

    .line 413
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/m$a;)V

    .line 414
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    check-cast p1, Landroid/support/v7/internal/view/menu/f;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ad;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/internal/view/menu/f;Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 415
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/ad;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ad;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 589
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ad;->d:Landroid/view/View;

    .line 590
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/internal/widget/ad;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ad;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 593
    :cond_1
    return-void
.end method

.method public a(Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Landroid/support/v7/internal/widget/ad;->l:Landroid/view/Window$Callback;

    .line 261
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ad;->h:Z

    if-nez v0, :cond_0

    .line 267
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ad;->e(Ljava/lang/CharSequence;)V

    .line 269
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setCollapsible(Z)V

    .line 495
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 356
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->p:Landroid/support/v7/internal/widget/ab;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ad;->c(Landroid/graphics/drawable/Drawable;)V

    .line 357
    return-void

    .line 356
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->r:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 219
    iput-object p1, p0, Landroid/support/v7/internal/widget/ad;->r:Landroid/graphics/drawable/Drawable;

    .line 220
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ad;->t()V

    .line 222
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ad;->h:Z

    .line 279
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ad;->e(Ljava/lang/CharSequence;)V

    .line 280
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public c(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 429
    iget v0, p0, Landroid/support/v7/internal/widget/ad;->b:I

    .line 430
    xor-int/2addr v0, p1

    .line 431
    iput p1, p0, Landroid/support/v7/internal/widget/ad;->b:I

    .line 432
    if-eqz v0, :cond_3

    .line 433
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 434
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 435
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ad;->t()V

    .line 436
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ad;->s()V

    .line 442
    :cond_0
    :goto_0
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1

    .line 443
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ad;->r()V

    .line 446
    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 447
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 448
    iget-object v1, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ad;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v1, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ad;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 456
    :cond_2
    :goto_1
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 457
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_6

    .line 458
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ad;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 464
    :cond_3
    :goto_2
    return-void

    .line 438
    :cond_4
    iget-object v1, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 451
    :cond_5
    iget-object v1, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v1, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 460
    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ad;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Landroid/support/v7/internal/widget/ad;->f:Landroid/graphics/drawable/Drawable;

    .line 362
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ad;->r()V

    .line 363
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 296
    iput-object p1, p0, Landroid/support/v7/internal/widget/ad;->j:Ljava/lang/CharSequence;

    .line 297
    iget v0, p0, Landroid/support/v7/internal/widget/ad;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 300
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->g()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->h()V

    .line 256
    return-void
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Landroid/support/v7/internal/widget/ad;->q:I

    if-ne p1, v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iput p1, p0, Landroid/support/v7/internal/widget/ad;->q:I

    .line 211
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget v0, p0, Landroid/support/v7/internal/widget/ad;->q:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ad;->e(I)V

    goto :goto_0
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Landroid/support/v7/internal/widget/ad;->g:Landroid/graphics/drawable/Drawable;

    .line 632
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ad;->t()V

    .line 633
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Landroid/support/v7/internal/widget/ad;->k:Ljava/lang/CharSequence;

    .line 645
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ad;->s()V

    .line 646
    return-void
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 650
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ad;->d(Ljava/lang/CharSequence;)V

    .line 651
    return-void

    .line 650
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ad;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 304
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 309
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->a()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->b()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->c()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->d()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->e()Z

    move-result v0

    return v0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ad;->m:Z

    .line 405
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->f()V

    .line 420
    return-void
.end method

.method public o()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Landroid/support/v7/internal/widget/ad;->b:I

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Landroid/support/v7/internal/widget/ad;->o:I

    return v0
.end method
