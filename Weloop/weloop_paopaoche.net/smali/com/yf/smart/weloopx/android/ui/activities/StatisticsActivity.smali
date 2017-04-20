.class public Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;
.super Landroid/app/Activity;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yf/smart/weloopx/android/ui/c/am$a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Z

.field private D:Landroid/graphics/Typeface;

.field private E:Lcom/yf/smart/weloopx/android/ui/a/s;

.field private F:Lcom/yf/smart/weloopx/android/ui/a/s;

.field private G:Lcom/yf/smart/weloopx/android/ui/a/s;

.field private H:Lcom/yf/smart/weloopx/android/ui/a/s;

.field private I:Lcom/yf/smart/weloopx/android/ui/a/s;

.field private J:Lcom/yf/smart/weloopx/android/ui/a/s$a;

.field private K:Lit/sephiroth/android/library/widget/CenterHListView$a;

.field a:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017d
    .end annotation
.end field

.field b:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0122
    .end annotation
.end field

.field c:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0120
    .end annotation
.end field

.field d:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017e
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d016e
    .end annotation
.end field

.field f:Lit/sephiroth/android/library/widget/CenterHListView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0131
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0133
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0134
    .end annotation
.end field

.field i:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0135
    .end annotation
.end field

.field j:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0136
    .end annotation
.end field

.field k:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d013a
    .end annotation
.end field

.field l:Landroid/widget/ImageView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0137
    .end annotation
.end field

.field m:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0139
    .end annotation
.end field

.field n:Landroid/widget/SeekBar;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0138
    .end annotation
.end field

.field o:Landroid/widget/ProgressBar;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d013b
    .end annotation
.end field

.field p:Landroid/view/View;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0123
    .end annotation
.end field

.field q:Landroid/view/View;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0121
    .end annotation
.end field

.field r:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0124
    .end annotation
.end field

.field s:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d012b
    .end annotation
.end field

.field t:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0125
    .end annotation
.end field

.field u:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0127
    .end annotation
.end field

.field v:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0129
    .end annotation
.end field

.field w:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d012c
    .end annotation
.end field

.field x:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d012d
    .end annotation
.end field

.field y:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d012f
    .end annotation
.end field

.field z:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0130
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const-string v0, "StatisticsActivity"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->A:Ljava/lang/String;

    .line 102
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->B:Z

    .line 104
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->C:Z

    .line 138
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/gf;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/gf;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->J:Lcom/yf/smart/weloopx/android/ui/a/s$a;

    .line 175
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/gh;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/gh;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->K:Lit/sephiroth/android/library/widget/CenterHListView$a;

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;)Lcom/yf/smart/weloopx/android/ui/a/s;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->E:Lcom/yf/smart/weloopx/android/ui/a/s;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/a/e;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yf/smart/weloopx/android/ui/a/e;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->G:Lcom/yf/smart/weloopx/android/ui/a/s;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->E:Lcom/yf/smart/weloopx/android/ui/a/s;

    .line 122
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->G:Lcom/yf/smart/weloopx/android/ui/a/s;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->J:Lcom/yf/smart/weloopx/android/ui/a/s$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/a/s;->a(Lcom/yf/smart/weloopx/android/ui/a/s$a;)V

    .line 123
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->G:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/a/s;->c()V

    .line 124
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/a/d;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yf/smart/weloopx/android/ui/a/d;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->F:Lcom/yf/smart/weloopx/android/ui/a/s;

    .line 125
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->F:Lcom/yf/smart/weloopx/android/ui/a/s;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->J:Lcom/yf/smart/weloopx/android/ui/a/s$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/a/s;->a(Lcom/yf/smart/weloopx/android/ui/a/s$a;)V

    .line 126
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->F:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/a/s;->c()V

    .line 127
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/a/q;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yf/smart/weloopx/android/ui/a/q;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->H:Lcom/yf/smart/weloopx/android/ui/a/s;

    .line 128
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->H:Lcom/yf/smart/weloopx/android/ui/a/s;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->J:Lcom/yf/smart/weloopx/android/ui/a/s$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/a/s;->a(Lcom/yf/smart/weloopx/android/ui/a/s$a;)V

    .line 129
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->H:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/a/s;->c()V

    .line 130
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/a/r;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yf/smart/weloopx/android/ui/a/r;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->I:Lcom/yf/smart/weloopx/android/ui/a/s;

    .line 131
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->I:Lcom/yf/smart/weloopx/android/ui/a/s;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->J:Lcom/yf/smart/weloopx/android/ui/a/s$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/a/s;->a(Lcom/yf/smart/weloopx/android/ui/a/s$a;)V

    .line 132
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->I:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/a/s;->c()V

    .line 134
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/dincond_bold.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->D:Landroid/graphics/Typeface;

    .line 135
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->c()V

    .line 136
    return-void
.end method

.method private a(I)V
    .locals 10

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->g()V

    .line 279
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->E:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/android/ui/a/s;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/b/a;

    .line 280
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/b/a;->d()Lcom/yf/smart/weloopx/data/models/CalorieStatistics;

    move-result-object v1

    .line 281
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/b/a;->e()Lcom/yf/smart/weloopx/data/models/CalorieStatistics;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->getCalorieSum()D

    move-result-wide v2

    .line 284
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->getCalorieAvg()D

    move-result-wide v4

    .line 285
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->getCalorieSum()D

    move-result-wide v6

    .line 286
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->getCalorieGoalSum()D

    move-result-wide v8

    .line 288
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->g:Landroid/widget/TextView;

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->i:Landroid/widget/TextView;

    invoke-static {v6, v7, v2, v3}, Lcom/yf/smart/weloopx/g/h;->a(DD)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0700a1

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getString(I)Ljava/lang/String;

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

    .line 291
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->n:Landroid/widget/SeekBar;

    double-to-int v2, v8

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 292
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->n:Landroid/widget/SeekBar;

    double-to-int v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 293
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->n:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02014a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->B:Z

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->j:Landroid/widget/TextView;

    const v2, 0x7f070091

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->m:Landroid/widget/TextView;

    const v2, 0x7f07022b

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :goto_0
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->getActivePointSum()I

    move-result v0

    .line 303
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->getDistanceSum()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 304
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/CalorieStatistics;->getStepCountSum()I

    move-result v1

    .line 305
    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->w:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->x:Landroid/widget/TextView;

    double-to-int v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->y:Landroid/widget/TextView;

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

    .line 308
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->z:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->j:Landroid/widget/TextView;

    const v2, 0x7f070090

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->m:Landroid/widget/TextView;

    const v2, 0x7f070229

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->a(I)V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f0702d8

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->d:Landroid/widget/Button;

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 159
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 161
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 162
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 163
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->o:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 165
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 166
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 167
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 168
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 169
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 170
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 171
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->f:Lit/sephiroth/android/library/widget/CenterHListView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->K:Lit/sephiroth/android/library/widget/CenterHListView$a;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/CenterHListView;->setOnCenterItemListener(Lit/sephiroth/android/library/widget/CenterHListView$a;)V

    .line 172
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->n:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 173
    return-void
.end method

.method private b(I)V
    .locals 6

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->h()V

    .line 327
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->E:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/android/ui/a/s;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/b/a;

    .line 328
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/b/a;->f()Lcom/yf/smart/weloopx/data/models/SleepStatistics;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->getWakeSum()I

    move-result v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->getDeepSleepSum()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->getShallowSleepSum()I

    move-result v2

    add-int/2addr v1, v2

    .line 331
    int-to-double v2, v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->getSleepGoalSum()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/yf/smart/weloopx/g/h;->c(DD)I

    move-result v2

    .line 333
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->getDeepSleepAvg()I

    move-result v3

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->getShallowSleepAvg()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->getWakeAvg()I

    move-result v4

    add-int/2addr v3, v4

    .line 335
    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->g:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->c(I)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->getSleepScoreAvg()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4, p0}, Lcom/yf/smart/weloopx/g/h;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->k:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0700a1

    invoke-virtual {p0, v5}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getString(I)Ljava/lang/String;

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

    .line 340
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->n:Landroid/widget/SeekBar;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 341
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->n:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 342
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->n:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020149

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    iget-boolean v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->B:Z

    if-eqz v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->j:Landroid/widget/TextView;

    const v3, 0x7f0702d7

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->m:Landroid/widget/TextView;

    const v3, 0x7f070227

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    :goto_0
    if-lez v1, :cond_1

    .line 352
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->getWakeSum()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v1

    .line 353
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/SleepStatistics;->getDeepSleepSum()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    .line 354
    rsub-int/lit8 v1, v2, 0x64

    sub-int/2addr v1, v0

    .line 355
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->t:Landroid/widget/TextView;

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

    .line 356
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->u:Landroid/widget/TextView;

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

    .line 357
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->v:Landroid/widget/TextView;

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

    .line 364
    :goto_1
    return-void

    .line 347
    :cond_0
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->j:Landroid/widget/TextView;

    const v3, 0x7f07016e

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->m:Landroid/widget/TextView;

    const v3, 0x7f070223

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->t:Landroid/widget/TextView;

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->u:Landroid/widget/TextView;

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->v:Landroid/widget/TextView;

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->C:Z

    return v0
.end method

.method private c(I)Landroid/text/SpannableStringBuilder;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x3eae147b    # 0.34f

    .line 367
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 370
    div-int/lit8 v1, p1, 0x3c

    .line 371
    if-lez v1, :cond_0

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 374
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 375
    const v2, 0x7f070123

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 376
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v2, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 378
    :cond_0
    rem-int/lit8 v1, p1, 0x3c

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 381
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 382
    const v2, 0x7f070168

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 383
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v2, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 384
    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 187
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/c;->e()I

    move-result v0

    .line 188
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v2}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/yf/smart/weloopx/android/ui/c/am;->a(Landroid/app/FragmentManager;Ljava/lang/String;I)V

    .line 190
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->C:Z

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->n:Landroid/widget/SeekBar;

    const v1, 0x7f02014a

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setBackgroundResource(I)V

    .line 206
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->B:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->G:Lcom/yf/smart/weloopx/android/ui/a/s;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->E:Lcom/yf/smart/weloopx/android/ui/a/s;

    .line 223
    :goto_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 224
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 225
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->B:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x10

    :goto_1
    div-int v0, v1, v0

    .line 227
    iget-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->B:Z

    if-eqz v1, :cond_4

    .line 228
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 232
    :goto_2
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->f:Lit/sephiroth/android/library/widget/CenterHListView;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/CenterHListView;->setCenterItemLeft(I)V

    .line 233
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->f:Lit/sephiroth/android/library/widget/CenterHListView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->E:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/CenterHListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 234
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->E:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/a/s;->d()V

    .line 235
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->F:Lcom/yf/smart/weloopx/android/ui/a/s;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->E:Lcom/yf/smart/weloopx/android/ui/a/s;

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->n:Landroid/widget/SeekBar;

    const v1, 0x7f020149

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setBackgroundResource(I)V

    .line 216
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->B:Z

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->I:Lcom/yf/smart/weloopx/android/ui/a/s;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->E:Lcom/yf/smart/weloopx/android/ui/a/s;

    goto :goto_0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->H:Lcom/yf/smart/weloopx/android/ui/a/s;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->E:Lcom/yf/smart/weloopx/android/ui/a/s;

    goto :goto_0

    .line 225
    :cond_3
    const/16 v0, 0x22

    goto :goto_1

    .line 230
    :cond_4
    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x2

    goto :goto_2
.end method

.method private e()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->C:Z

    .line 258
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->g()V

    .line 259
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->d()V

    .line 260
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->C:Z

    .line 265
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->h()V

    .line 266
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->d()V

    .line 267
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 313
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 318
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 319
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 320
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 321
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->h:Landroid/widget/TextView;

    const v1, 0x7f070055

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->l:Landroid/widget/ImageView;

    const v1, 0x7f02013c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 323
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 388
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 393
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 394
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 395
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 396
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->h:Landroid/widget/TextView;

    const v1, 0x7f0700a4

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->l:Landroid/widget/ImageView;

    const v1, 0x7f020160

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 398
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->B:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->B:Z

    .line 402
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->d()V

    .line 403
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->B:Z

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f0702d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 405
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->d:Landroid/widget/Button;

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 410
    :goto_1
    return-void

    .line 401
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f07016f

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->d:Landroid/widget/Button;

    const v1, 0x7f02007e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->d()V

    .line 196
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->g()V

    .line 197
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 253
    :goto_0
    return-void

    .line 241
    :sswitch_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->finish()V

    goto :goto_0

    .line 244
    :sswitch_1
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->i()V

    goto :goto_0

    .line 247
    :sswitch_2
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->e()V

    goto :goto_0

    .line 250
    :sswitch_3
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->f()V

    goto :goto_0

    .line 239
    :sswitch_data_0
    .sparse-switch
        0x7f0d0120 -> :sswitch_2
        0x7f0d0122 -> :sswitch_3
        0x7f0d017d -> :sswitch_0
        0x7f0d017e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->requestWindowFeature(I)Z

    .line 113
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->setContentView(I)V

    .line 114
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 115
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->a()V

    .line 116
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->b()V

    .line 117
    return-void
.end method
