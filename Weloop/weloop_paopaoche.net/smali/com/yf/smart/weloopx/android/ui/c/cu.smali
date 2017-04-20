.class public Lcom/yf/smart/weloopx/android/ui/c/cu;
.super Lcom/yf/smart/weloopx/android/ui/c/co;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/co;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/a/e;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/cu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/cu;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/a/e;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->v:Lcom/yf/smart/weloopx/android/ui/a/s;

    .line 21
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->v:Lcom/yf/smart/weloopx/android/ui/a/s;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->w:Lcom/yf/smart/weloopx/android/ui/a/s$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/a/s;->a(Lcom/yf/smart/weloopx/android/ui/a/s$a;)V

    .line 22
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->v:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/a/s;->c()V

    .line 23
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/a/d;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/cu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/cu;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/a/d;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->u:Lcom/yf/smart/weloopx/android/ui/a/s;

    .line 24
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->u:Lcom/yf/smart/weloopx/android/ui/a/s;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->w:Lcom/yf/smart/weloopx/android/ui/a/s$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/a/s;->a(Lcom/yf/smart/weloopx/android/ui/a/s$a;)V

    .line 25
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->u:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/a/s;->c()V

    .line 26
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->k:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->i:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/cu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->c:Landroid/widget/TextView;

    const v1, 0x7f070055

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/c/cu;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->g:Landroid/widget/ImageView;

    const v1, 0x7f02013c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 31
    return-void
.end method

.method protected a(Landroid/widget/ListAdapter;I)V
    .locals 10

    .prologue
    .line 45
    invoke-interface {p1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/b/a;

    .line 46
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/b/a;->d()Lcom/yf/smart/weloopx/data/models/CalorieStatistics;

    move-result-object v1

    .line 47
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/b/a;->e()Lcom/yf/smart/weloopx/data/models/CalorieStatistics;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->getCalorieSum()D

    move-result-wide v2

    .line 50
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->getCalorieAvg()D

    move-result-wide v4

    .line 51
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->getCalorieSum()D

    move-result-wide v6

    .line 52
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->getCalorieGoalSum()D

    move-result-wide v8

    .line 54
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->b:Landroid/widget/TextView;

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->d:Landroid/widget/TextView;

    invoke-static {v6, v7, v2, v3}, Lcom/yf/smart/weloopx/g/h;->a(DD)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0700a1

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/c/cu;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6, v7, v8, v9}, Lcom/yf/smart/weloopx/g/h;->b(DD)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->i:Landroid/widget/SeekBar;

    double-to-int v2, v8

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 58
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->i:Landroid/widget/SeekBar;

    double-to-int v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 59
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->t:Lcom/yf/smart/weloopx/android/ui/c/co$a;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/android/ui/c/co$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->e:Landroid/widget/TextView;

    const v2, 0x7f070091

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/c/cu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->h:Landroid/widget/TextView;

    const v2, 0x7f07022b

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/c/cu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_0
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->getActivePointSum()I

    move-result v0

    .line 68
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->getDistanceSum()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 69
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->getStepCountSum()I

    move-result v1

    .line 70
    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->p:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->q:Landroid/widget/TextView;

    double-to-int v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->r:Landroid/widget/TextView;

    const-string v4, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->s:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->e:Landroid/widget/TextView;

    const v2, 0x7f070090

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/c/cu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cu;->h:Landroid/widget/TextView;

    const v2, 0x7f070229

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/c/cu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
