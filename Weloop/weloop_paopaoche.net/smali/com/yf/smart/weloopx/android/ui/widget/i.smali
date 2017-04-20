.class public Lcom/yf/smart/weloopx/android/ui/widget/i;
.super Landroid/widget/LinearLayout;
.source "ProGuard"


# instance fields
.field private A:Landroid/content/Context;

.field private final B:I

.field private final C:I

.field private final D:I

.field private final E:I

.field private final F:I

.field private final G:I

.field private final H:I

.field private final I:I

.field private final J:I

.field private final K:I

.field private final L:I

.field private M:Lcom/baidu/mapapi/model/LatLng;

.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Lcom/yf/smart/weloopx/view/PathView;

.field private v:Lcom/yf/smart/weloopx/view/PathView;

.field private w:Lcom/yf/smart/weloopx/data/models/Activity;

.field private x:Lcom/yf/smart/weloopx/data/f;

.field private y:Landroid/graphics/Typeface;

.field private z:Lcom/b/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 154
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->B:I

    .line 63
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->C:I

    .line 64
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->D:I

    .line 65
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->E:I

    .line 66
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->F:I

    .line 67
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->G:I

    .line 68
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->H:I

    .line 69
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->I:I

    .line 70
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->J:I

    .line 71
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->K:I

    .line 72
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->L:I

    .line 155
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->A:Landroid/content/Context;

    .line 156
    new-instance v0, Lcom/yf/smart/weloopx/data/f;

    invoke-direct {v0, p1}, Lcom/yf/smart/weloopx/data/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->x:Lcom/yf/smart/weloopx/data/f;

    .line 157
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/i;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/dincond_bold.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->y:Landroid/graphics/Typeface;

    .line 161
    new-instance v0, Lcom/b/a/a;

    invoke-direct {v0, p1}, Lcom/b/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->z:Lcom/b/a/a;

    .line 163
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/widget/i;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->k:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const v1, 0x7f070142

    const v6, 0x7f07013f

    const v5, 0x7f07013c

    const v4, 0x7f07002c

    const v3, 0x7f070233

    .line 467
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 473
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 474
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 475
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 477
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->C:I

    if-ne p1, v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->m:Landroid/widget/TextView;

    const v2, 0x7f07021f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 479
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 480
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 481
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 484
    :cond_0
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->B:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->I:I

    if-ne p1, v0, :cond_3

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->m:Landroid/widget/TextView;

    const v1, 0x7f07021f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 486
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 487
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 488
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 516
    :cond_2
    :goto_0
    return-void

    .line 492
    :cond_3
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->K:I

    if-eq p1, v0, :cond_4

    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->D:I

    if-eq p1, v0, :cond_4

    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->H:I

    if-eq p1, v0, :cond_4

    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->G:I

    if-eq p1, v0, :cond_4

    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->E:I

    if-eq p1, v0, :cond_4

    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->J:I

    if-ne p1, v0, :cond_5

    .line 493
    :cond_4
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 494
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 495
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 496
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->s:Landroid/widget/TextView;

    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->D:I

    if-ne p1, v0, :cond_7

    const v0, 0x7f070140

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 500
    :cond_5
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->F:I

    if-ne p1, v0, :cond_6

    .line 501
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->m:Landroid/widget/TextView;

    const v2, 0x7f07013e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 502
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->o:Landroid/widget/TextView;

    const v2, 0x7f070145

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 503
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->q:Landroid/widget/TextView;

    const v2, 0x7f070141

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 504
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->s:Landroid/widget/TextView;

    const v2, 0x7f070146

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 507
    :cond_6
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->L:I

    if-ne p1, v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->m:Landroid/widget/TextView;

    const v2, 0x7f07013d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 509
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 510
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->q:Landroid/widget/TextView;

    const v1, 0x7f070144

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 511
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->s:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->r:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    move v0, v1

    .line 496
    goto :goto_1
.end method

.method private a(Lcom/yf/smart/weloopx/data/models/Activity;)V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/16 v3, 0x8

    .line 167
    const-string v0, "yonghong"

    const-string v1, "ffffffffffffffffff"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/Activity;->getType()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/Activity;->getSubType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/Activity;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/Activity;->getSubType()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    :goto_0
    return-void

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->x:Lcom/yf/smart/weloopx/data/f;

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/Activity;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/Activity;->getEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/yf/smart/weloopx/data/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_4

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 190
    :cond_4
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/LocationModel;

    .line 191
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_LAT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 192
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_LAT()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_LON()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v2, v2

    .line 203
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v4, v0

    .line 204
    invoke-static {v4, v5}, Lcom/yf/smart/weloopx/g/j;->a(D)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 205
    sget v0, Lcom/yf/smart/weloopx/g/j;->c:I

    int-to-double v0, v0

    div-double v0, v2, v0

    .line 206
    sget v2, Lcom/yf/smart/weloopx/g/j;->c:I

    int-to-double v2, v2

    div-double v2, v4, v2

    .line 212
    :goto_1
    new-instance v4, Lcom/baidu/mapapi/utils/CoordinateConverter;

    invoke-direct {v4}, Lcom/baidu/mapapi/utils/CoordinateConverter;-><init>()V

    .line 213
    sget-object v5, Lcom/baidu/mapapi/utils/CoordinateConverter$CoordType;->GPS:Lcom/baidu/mapapi/utils/CoordinateConverter$CoordType;

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/utils/CoordinateConverter;->from(Lcom/baidu/mapapi/utils/CoordinateConverter$CoordType;)Lcom/baidu/mapapi/utils/CoordinateConverter;

    .line 214
    new-instance v5, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/utils/CoordinateConverter;->coord(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/utils/CoordinateConverter;

    .line 215
    invoke-virtual {v4}, Lcom/baidu/mapapi/utils/CoordinateConverter;->convert()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    .line 216
    iget-wide v2, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    .line 217
    iget-wide v0, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 219
    new-instance v4, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    iput-object v4, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->M:Lcom/baidu/mapapi/model/LatLng;

    goto :goto_0

    .line 196
    :cond_5
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 208
    :cond_6
    sget v0, Lcom/yf/smart/weloopx/g/j;->b:I

    int-to-double v0, v0

    div-double v0, v2, v0

    .line 209
    sget v2, Lcom/yf/smart/weloopx/g/j;->b:I

    int-to-double v2, v2

    div-double v2, v4, v2

    goto :goto_1
.end method

.method private a(ZLjava/lang/String;II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 281
    if-eqz p1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->v:Lcom/yf/smart/weloopx/view/PathView;

    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/view/PathView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->u:Lcom/yf/smart/weloopx/view/PathView;

    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/view/PathView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->w:Lcom/yf/smart/weloopx/data/models/Activity;

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/widget/i;->a(Lcom/yf/smart/weloopx/data/models/Activity;)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->u:Lcom/yf/smart/weloopx/view/PathView;

    invoke-virtual {v0, v3}, Lcom/yf/smart/weloopx/view/PathView;->setVisibility(I)V

    .line 291
    if-ne p3, v5, :cond_3

    .line 292
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->v:Lcom/yf/smart/weloopx/view/PathView;

    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/view/PathView;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->u:Lcom/yf/smart/weloopx/view/PathView;

    invoke-virtual {v0, v3}, Lcom/yf/smart/weloopx/view/PathView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->u:Lcom/yf/smart/weloopx/view/PathView;

    invoke-virtual {v0, p2}, Lcom/yf/smart/weloopx/view/PathView;->setData(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 311
    :cond_2
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->u:Lcom/yf/smart/weloopx/view/PathView;

    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/view/PathView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->v:Lcom/yf/smart/weloopx/view/PathView;

    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/view/PathView;->setVisibility(I)V

    goto :goto_0

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->u:Lcom/yf/smart/weloopx/view/PathView;

    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/view/PathView;->setVisibility(I)V

    .line 298
    invoke-virtual {p0, p2}, Lcom/yf/smart/weloopx/android/ui/widget/i;->a(Ljava/lang/String;)[I

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->v:Lcom/yf/smart/weloopx/view/PathView;

    invoke-virtual {v1, v3}, Lcom/yf/smart/weloopx/view/PathView;->setVisibility(I)V

    .line 300
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->v:Lcom/yf/smart/weloopx/view/PathView;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/view/PathView;->setMaxNum(I)V

    .line 301
    aget v1, v0, v3

    if-nez v1, :cond_4

    .line 302
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->v:Lcom/yf/smart/weloopx/view/PathView;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/view/PathView;->setMaxNum(I)V

    .line 304
    :cond_4
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->v:Lcom/yf/smart/weloopx/view/PathView;

    aget v0, v0, v5

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/view/PathView;->setMinNum(I)V

    .line 305
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->v:Lcom/yf/smart/weloopx/view/PathView;

    invoke-virtual {v0, p2}, Lcom/yf/smart/weloopx/view/PathView;->setData(Ljava/lang/String;)V

    .line 306
    if-eqz p4, :cond_5

    if-ne p4, v5, :cond_2

    .line 307
    :cond_5
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/widget/i;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->A:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/widget/i;)Lcom/yf/smart/weloopx/data/models/Activity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->w:Lcom/yf/smart/weloopx/data/models/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/widget/i;)Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->M:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/widget/i;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->k:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 273
    return-void
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/android/ui/widget/i;)Lcom/b/a/a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->z:Lcom/b/a/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 437
    const-string v0, "0\u5206"

    const-string v1, "0"

    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/yf/smart/weloopx/android/ui/widget/i;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 394
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->E:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/widget/i;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public a(Z)V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->h:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->i:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->w:Lcom/yf/smart/weloopx/data/models/Activity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getType()I

    move-result v0

    .line 245
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->w:Lcom/yf/smart/weloopx/data/models/Activity;

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/data/models/Activity;->getSubType()I

    move-result v3

    .line 247
    if-ne v0, v6, :cond_1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 249
    const-string v1, ""

    invoke-direct {p0, v5, v1, v0, v3}, Lcom/yf/smart/weloopx/android/ui/widget/i;->a(ZLjava/lang/String;II)V

    .line 260
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 242
    goto :goto_0

    .line 250
    :cond_1
    if-eq v0, v5, :cond_2

    if-ne v0, v6, :cond_3

    .line 253
    :cond_2
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->w:Lcom/yf/smart/weloopx/data/models/Activity;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/Activity;->getBongValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/yf/smart/weloopx/android/ui/widget/i;->a(ZLjava/lang/String;II)V

    goto :goto_1

    .line 254
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    if-ne v3, v2, :cond_4

    .line 255
    const-string v1, ""

    invoke-direct {p0, v5, v1, v0, v3}, Lcom/yf/smart/weloopx/android/ui/widget/i;->a(ZLjava/lang/String;II)V

    goto :goto_1

    .line 257
    :cond_4
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/widget/i;->e()V

    goto :goto_1
.end method

.method public a(ZZ)V
    .locals 0

    .prologue
    .line 230
    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p0, p2}, Lcom/yf/smart/weloopx/android/ui/widget/i;->a(Z)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/i;->a()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)[I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 320
    const/4 v0, 0x2

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    .line 323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v4

    .line 350
    :goto_0
    return-object v0

    .line 326
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v4

    .line 328
    goto :goto_0

    .line 331
    :cond_1
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 332
    array-length v0, v5

    new-array v6, v0, [I

    move v0, v1

    .line 333
    :goto_1
    array-length v2, v5

    if-ge v0, v2, :cond_2

    .line 334
    aget-object v2, v5, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v6, v0

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 337
    :cond_2
    aget v2, v6, v1

    .line 338
    aget v0, v6, v1

    move v3, v2

    move v2, v0

    move v0, v1

    .line 339
    :goto_2
    array-length v7, v5

    if-ge v0, v7, :cond_5

    .line 340
    aget v7, v6, v0

    if-le v7, v3, :cond_3

    .line 341
    aget v3, v6, v0

    .line 343
    :cond_3
    aget v7, v6, v0

    if-ge v7, v2, :cond_4

    .line 344
    aget v2, v6, v0

    .line 339
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 347
    :cond_5
    aput v3, v4, v1

    .line 348
    const/4 v0, 0x1

    aput v2, v4, v0

    move-object v0, v4

    .line 350
    goto :goto_0

    .line 320
    nop

    :array_0
    .array-data 4
        0x64
        0x0
    .end array-data
.end method

.method public b()V
    .locals 0

    .prologue
    .line 453
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 399
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->K:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/widget/i;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 458
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 405
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->D:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/widget/i;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 463
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 410
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->H:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/widget/i;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 415
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->B:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/widget/i;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 420
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->J:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/widget/i;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 426
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->L:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/widget/i;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 442
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->G:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/widget/i;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 447
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->F:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/widget/i;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public setContentData(Lcom/yf/smart/weloopx/data/models/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->w:Lcom/yf/smart/weloopx/data/models/Activity;

    .line 76
    const v0, 0x7f0d0248

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/widget/i;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    const v0, 0x7f0d0240

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->j:Landroid/widget/LinearLayout;

    .line 79
    const v0, 0x7f0d0227

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->k:Landroid/widget/RelativeLayout;

    .line 80
    const v0, 0x7f0d0241

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->h:Landroid/view/View;

    .line 81
    const v0, 0x7f0d0242

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->i:Landroid/view/View;

    .line 82
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/i;->a()V

    .line 83
    const v0, 0x7f0d0230

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->l:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f0d0239

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->n:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0d0232

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->p:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0d023b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->r:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f0d022f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->m:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0d0231

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->q:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0d0238

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->o:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0d023a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->s:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0d0233

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->t:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->t:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->y:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    const v0, 0x7f0d0244

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->c:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->y:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->y:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 96
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->y:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 97
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->r:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->y:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 99
    const v0, 0x7f0d0228

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->g:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->g:Landroid/widget/ImageView;

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/widget/j;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/widget/j;-><init>(Lcom/yf/smart/weloopx/android/ui/widget/i;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->g:Landroid/widget/ImageView;

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/widget/k;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/widget/k;-><init>(Lcom/yf/smart/weloopx/android/ui/widget/i;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 141
    const v0, 0x7f0d0229

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/view/PathView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->u:Lcom/yf/smart/weloopx/view/PathView;

    .line 142
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->u:Lcom/yf/smart/weloopx/view/PathView;

    invoke-virtual {v0, v3}, Lcom/yf/smart/weloopx/view/PathView;->setMaxNum(I)V

    .line 143
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->u:Lcom/yf/smart/weloopx/view/PathView;

    const/16 v2, -0x64

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/view/PathView;->setMinNum(I)V

    .line 144
    const v0, 0x7f0d022a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/view/PathView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->v:Lcom/yf/smart/weloopx/view/PathView;

    .line 145
    const v0, 0x7f0d01af

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->a:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->y:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 147
    const v0, 0x7f0d023d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->d:Landroid/widget/ImageView;

    .line 148
    const v0, 0x7f0d023e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->e:Landroid/widget/ImageView;

    .line 149
    const v0, 0x7f0d023f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->f:Landroid/widget/ImageView;

    .line 150
    const v0, 0x7f0d0243

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->b:Landroid/widget/TextView;

    .line 151
    return-void
.end method

.method public setDuractionTime(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    return-void
.end method

.method setLabelIcon(I)V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 357
    return-void
.end method

.method setLabelString(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    return-void
.end method

.method setLabelTextColor(I)V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    return-void
.end method

.method setTimeString(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    return-void
.end method

.method setVerticalLineHeight(I)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 373
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 376
    packed-switch p1, :pswitch_data_0

    .line 390
    :goto_0
    return-void

    .line 378
    :pswitch_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 382
    :pswitch_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 386
    :pswitch_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/i;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 376
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
