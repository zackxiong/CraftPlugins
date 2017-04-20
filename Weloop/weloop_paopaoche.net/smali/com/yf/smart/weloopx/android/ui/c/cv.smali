.class public Lcom/yf/smart/weloopx/android/ui/c/cv;
.super Lcom/yf/smart/weloopx/android/ui/c/co;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/co;-><init>()V

    return-void
.end method

.method private a(I)Landroid/text/SpannableStringBuilder;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x3eae147b    # 0.34f

    .line 99
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 102
    div-int/lit8 v1, p1, 0x3c

    .line 103
    if-lez v1, :cond_0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 106
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 107
    const v2, 0x7f070123

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/c/cv;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 108
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v2, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 110
    :cond_0
    rem-int/lit8 v1, p1, 0x3c

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 113
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 114
    const v2, 0x7f070168

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/c/cv;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 115
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v2, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 116
    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/a/q;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/cv;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/cv;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/a/q;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->u:Lcom/yf/smart/weloopx/android/ui/a/s;

    .line 33
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->u:Lcom/yf/smart/weloopx/android/ui/a/s;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->w:Lcom/yf/smart/weloopx/android/ui/a/s$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/a/s;->a(Lcom/yf/smart/weloopx/android/ui/a/s$a;)V

    .line 34
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->u:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/a/s;->c()V

    .line 35
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/a/r;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/cv;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/cv;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/a/r;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->v:Lcom/yf/smart/weloopx/android/ui/a/s;

    .line 36
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->v:Lcom/yf/smart/weloopx/android/ui/a/s;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->w:Lcom/yf/smart/weloopx/android/ui/a/s$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/a/s;->a(Lcom/yf/smart/weloopx/android/ui/a/s$a;)V

    .line 37
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->v:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/a/s;->c()V

    .line 39
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->l:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->c:Landroid/widget/TextView;

    const v1, 0x7f0700a4

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/c/cv;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->g:Landroid/widget/ImageView;

    const v1, 0x7f020160

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 43
    return-void
.end method

.method protected a(Landroid/widget/ListAdapter;I)V
    .locals 6

    .prologue
    .line 58
    invoke-interface {p1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/b/a;

    .line 59
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/b/a;->f()Lcom/yf/smart/weloopx/data/models/SleepStatistics;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->getWakeSum()I

    move-result v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->getDeepSleepSum()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->getShallowSleepSum()I

    move-result v2

    add-int/2addr v1, v2

    .line 62
    int-to-double v2, v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->getSleepGoalSum()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/yf/smart/weloopx/g/h;->c(DD)I

    move-result v2

    .line 64
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->getDeepSleepAvg()I

    move-result v3

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->getShallowSleepAvg()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->getWakeAvg()I

    move-result v4

    add-int/2addr v3, v4

    .line 68
    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->b:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/yf/smart/weloopx/android/ui/c/cv;->a(I)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->getSleepScoreAvg()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/cv;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yf/smart/weloopx/g/h;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->f:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0700a1

    invoke-virtual {p0, v5}, Lcom/yf/smart/weloopx/android/ui/c/cv;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->i:Landroid/widget/SeekBar;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 74
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->i:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 75
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->i:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/cv;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020149

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->t:Lcom/yf/smart/weloopx/android/ui/c/co$a;

    invoke-interface {v2}, Lcom/yf/smart/weloopx/android/ui/c/co$a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->e:Landroid/widget/TextView;

    const v3, 0x7f0702d7

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/c/cv;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->h:Landroid/widget/TextView;

    const v3, 0x7f070227

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/c/cv;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_0
    if-lez v1, :cond_1

    .line 85
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->getWakeSum()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v1

    .line 86
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->getDeepSleepSum()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    .line 87
    rsub-int/lit8 v1, v2, 0x64

    sub-int/2addr v1, v0

    .line 88
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->m:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->n:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->o:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :goto_1
    return-void

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->e:Landroid/widget/TextView;

    const v3, 0x7f07016e

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/c/cv;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->h:Landroid/widget/TextView;

    const v3, 0x7f070223

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/c/cv;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->m:Landroid/widget/TextView;

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->n:Landroid/widget/TextView;

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cv;->o:Landroid/widget/TextView;

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/co;->onAttach(Landroid/app/Activity;)V

    .line 28
    return-void
.end method
