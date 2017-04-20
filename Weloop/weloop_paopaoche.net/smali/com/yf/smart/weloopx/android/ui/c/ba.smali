.class public Lcom/yf/smart/weloopx/android/ui/c/ba;
.super Lcom/yf/smart/weloopx/android/ui/c/g;
.source "ProGuard"

# interfaces
.implements Lcom/yf/smart/weloopx/android/ui/c/cw$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/c/ba$a;
    }
.end annotation


# instance fields
.field private a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/app/DialogFragment;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/Button;

.field private o:Lcom/yf/smart/weloopx/android/ui/c/ba$a;

.field private p:Ljava/lang/String;

.field private q:Lcom/yf/smart/weloopx/data/models/DailyGain;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/yf/gattlib/c/c;

.field private t:Lcom/yf/smart/weloopx/g/d;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Lcom/handmark/pulltorefresh/library/e$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/e$e",
            "<",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/yf/smart/weloopx/b/b;

.field private z:Lcom/yf/gattlib/d/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;-><init>()V

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->u:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->v:Ljava/lang/String;

    .line 279
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/bc;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/bc;-><init>(Lcom/yf/smart/weloopx/android/ui/c/ba;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->x:Lcom/handmark/pulltorefresh/library/e$e;

    .line 550
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/be;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/be;-><init>(Lcom/yf/smart/weloopx/android/ui/c/ba;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->z:Lcom/yf/gattlib/d/b$a;

    return-void
.end method

.method public static a(Ljava/lang/String;ZZ)Lcom/yf/smart/weloopx/android/ui/c/ba;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string v1, "happen_date"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "has_before"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    const-string v1, "has_after"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/ba;-><init>()V

    .line 91
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->setArguments(Landroid/os/Bundle;)V

    .line 92
    return-object v1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/ba;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/ba;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->u:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/view/LayoutInflater;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 244
    const-string v0, "OneDailyFragment addListHeaderView()"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 245
    const v0, 0x7f030055

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->e:Landroid/view/View;

    .line 246
    const v0, 0x7f0d01dc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->c:Landroid/widget/RelativeLayout;

    .line 247
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 248
    const v0, 0x7f0d01d8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->m:Landroid/widget/TextView;

    .line 250
    const v0, 0x7f0d01d4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->d:Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;

    .line 251
    const v0, 0x7f0d01d7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->f:Landroid/widget/TextView;

    .line 252
    const v0, 0x7f0d01da

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->g:Landroid/widget/TextView;

    .line 255
    const v0, 0x7f0d01cc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->j:Landroid/widget/TextView;

    .line 256
    const v0, 0x7f0d01ce

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->h:Landroid/widget/TextView;

    .line 257
    const v0, 0x7f0d01d0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->i:Landroid/widget/TextView;

    .line 259
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/c/ba$a;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->o:Lcom/yf/smart/weloopx/android/ui/c/ba$a;

    .line 261
    const v0, 0x7f0d01d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 262
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "has_before"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 269
    :goto_0
    const v0, 0x7f0d01d5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->n:Landroid/widget/Button;

    .line 273
    return-void

    .line 266
    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/ba;Lcom/yf/smart/weloopx/data/models/DailyGain;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/c/ba;->a(Lcom/yf/smart/weloopx/data/models/DailyGain;Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/yf/smart/weloopx/data/models/DailyGain;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yf/smart/weloopx/data/models/DailyGain;",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    const-string v0, "OneDailyFragment resetData() "

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 412
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->q:Lcom/yf/smart/weloopx/data/models/DailyGain;

    .line 413
    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->r:Ljava/util/List;

    .line 414
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->f()V

    .line 415
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yf/smart/weloopx/android/ui/activities/di;->e:Z

    .line 416
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->b()V

    .line 417
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->a()V

    .line 418
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/c/ba;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->v:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/c/ba;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->d()V

    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/c/ba;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/c/ba;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    new-instance v0, Lcom/yf/smart/weloopx/data/l;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/data/l;-><init>(Landroid/content/Context;)V

    .line 303
    invoke-static {}, Lcom/yf/gattlib/p/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/l;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 5

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 308
    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->s:Lcom/yf/gattlib/c/c;

    const-string v1, "KEY_GOAL_TIME_LABEL"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    .line 311
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f07014d

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/c/ba;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v4, 0x80011

    invoke-static {v0, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->s:Lcom/yf/gattlib/c/c;

    const-string v2, "KEY_GOAL_TIME_LABEL"

    invoke-virtual {v1, v2, v0}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/c/ba;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/android/ui/c/ba;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method private f()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 320
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->h:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->q:Lcom/yf/smart/weloopx/data/models/DailyGain;

    .line 324
    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->j:Landroid/widget/TextView;

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->h:Landroid/widget/TextView;

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->i:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->f:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->g:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->d:Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;

    invoke-virtual {v0, v11}, Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;->setProgress(I)V

    .line 332
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/DailyGain;->getStepCount()I

    move-result v1

    .line 336
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/DailyGain;->getDistance()D

    move-result-wide v2

    .line 337
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/DailyGain;->getCalorie()D

    move-result-wide v4

    .line 338
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/DailyGain;->getCalorieGoal()D

    move-result-wide v6

    .line 343
    iget-object v8, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->h:Landroid/widget/TextView;

    const-string v9, "%.1f"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->i:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    .line 349
    const-string v2, "OneDailyFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/DailyGain;->getHappenDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": calories, caloriesTarget="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", progress="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->d:Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;->setProgress(I)V

    .line 352
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->j:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->d:Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/widget/SmoothCircularProgressBar;->invalidate()V

    goto/16 :goto_0
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 377
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 379
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/Activity;

    .line 380
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 381
    if-eqz v1, :cond_0

    .line 382
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 385
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    :cond_1
    :goto_1
    move-object v1, v0

    .line 402
    goto :goto_0

    .line 387
    :cond_2
    if-eqz v1, :cond_1

    .line 390
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/Activity;->getStartTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getEndTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yf/smart/weloopx/g/m;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 394
    const/4 v6, 0x2

    if-gt v5, v6, :cond_3

    .line 395
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/data/models/Activity;->composeActivity(Lcom/yf/smart/weloopx/data/models/Activity;)V

    move-object v0, v1

    goto :goto_1

    .line 397
    :cond_3
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 404
    :cond_4
    if-eqz v1, :cond_5

    .line 405
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_5
    iput-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->r:Ljava/util/List;

    .line 408
    return-void
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/android/ui/c/ba;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->h()V

    return-void
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/android/ui/c/ba;)Landroid/app/DialogFragment;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->k:Landroid/app/DialogFragment;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->i()V

    .line 454
    :goto_0
    return-void

    .line 429
    :cond_0
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    const v0, 0x7f0701b6

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->c(I)V

    .line 431
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->i()V

    goto :goto_0

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    const-string v1, "yyyy-MM-dd"

    invoke-static {v1}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneDailyFragment isCurDate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 436
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->o()Z

    move-result v0

    if-nez v0, :cond_3

    .line 437
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 438
    const v0, 0x7f0700cf

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->c(I)V

    .line 442
    :goto_1
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->i()V

    goto :goto_0

    .line 440
    :cond_2
    const v0, 0x7f0700c5

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->c(I)V

    goto :goto_1

    .line 451
    :cond_3
    const-string v0, "SyncData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u54cd\u5e94\u540c\u6b65\u539f\u59cb\u6570\u636e\u64cd\u4f5c........."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/cw;->a(Landroid/app/FragmentManager;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->k:Landroid/app/DialogFragment;

    goto/16 :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 458
    const-string v0, "OneDailyFragment \u505c\u6b62\u8df3\u52a8\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->w:Ljava/lang/String;

    .line 461
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/event/a;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/event/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/lib/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-nez v0, :cond_1

    .line 472
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/bd;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/bd;-><init>(Lcom/yf/smart/weloopx/android/ui/c/ba;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic i(Lcom/yf/smart/weloopx/android/ui/c/ba;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->i()V

    return-void
.end method

.method static synthetic j(Lcom/yf/smart/weloopx/android/ui/c/ba;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->l:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private j()Z
    .locals 2

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->t:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    const v0, 0x7f07017b

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->c(I)V

    .line 542
    const/4 v0, 0x0

    .line 544
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic k(Lcom/yf/smart/weloopx/android/ui/c/ba;)Lcom/yf/smart/weloopx/android/ui/c/ba$a;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->o:Lcom/yf/smart/weloopx/android/ui/c/ba$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->r:Ljava/util/List;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->r:Ljava/util/List;

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->g()V

    .line 365
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/a/a;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->r:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/a/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 366
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/a/a;->getCount()I

    move-result v1

    .line 368
    if-nez v1, :cond_1

    sget-boolean v1, Lcom/yf/smart/weloopx/android/ui/activities/di;->e:Z

    if-nez v1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->c:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 373
    :goto_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 374
    return-void

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->c:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 604
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/bf;

    invoke-direct {v0, p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/c/bf;-><init>(Lcom/yf/smart/weloopx/android/ui/c/ba;II)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->a(Ljava/lang/Runnable;)V

    .line 618
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 478
    packed-switch p1, :pswitch_data_0

    .line 494
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->i()V

    .line 495
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->v:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/handmark/pulltorefresh/library/a;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/i;->b(Ljava/lang/String;)D

    move-result-wide v0

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OneDailyFragment happendate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u8ddd\u79bb\u4eca\u5929\u76f8\u5dee = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 498
    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->o:Lcom/yf/smart/weloopx/android/ui/c/ba$a;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->o:Lcom/yf/smart/weloopx/android/ui/c/ba$a;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/android/ui/c/ba$a;->a()V

    .line 504
    :cond_0
    return-void

    .line 480
    :pswitch_1
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/a;->b(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/DailyGain;

    move-result-object v0

    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/b/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/ba;->a(Lcom/yf/smart/weloopx/data/models/DailyGain;Ljava/util/List;)V

    goto :goto_0

    .line 491
    :pswitch_2
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/event/InvalidAccessTokenEvent;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/event/InvalidAccessTokenEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/lib/squareup/otto/b;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 478
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 621
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->m:Landroid/widget/TextView;

    const v1, 0x7f070279

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 623
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->n:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 644
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->m:Landroid/widget/TextView;

    const v1, 0x7f0702e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 626
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->n:Landroid/widget/Button;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/bg;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/bg;-><init>(Lcom/yf/smart/weloopx/android/ui/c/ba;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->n:Landroid/widget/Button;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/bh;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/bh;-><init>(Lcom/yf/smart/weloopx/android/ui/c/ba;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 648
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/g;->onActivityCreated(Landroid/os/Bundle;)V

    .line 649
    const-string v0, "OneDailyFragment"

    const-string v1, " onActivityCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-void
.end method

.method public onActivityDataChanged(Lcom/yf/smart/weloopx/event/ActivityDataChangedEvent;)V
    .locals 2
    .annotation runtime Lcom/yf/lib/squareup/otto/j;
    .end annotation

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneDailyFragment \u6807\u7b7e\u754c\u9762 onActivityDataChanged, happenDate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 174
    const/4 v0, 0x1

    iget v1, p1, Lcom/yf/smart/weloopx/event/ActivityDataChangedEvent;->activityId:I

    if-ne v0, v1, :cond_0

    .line 175
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/bb;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/bb;-><init>(Lcom/yf/smart/weloopx/android/ui/c/ba;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->a(Ljava/lang/Runnable;)V

    .line 184
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 660
    invoke-super {p0, p1, p2, p3}, Lcom/yf/smart/weloopx/android/ui/c/g;->onActivityResult(IILandroid/content/Intent;)V

    .line 661
    const-string v0, "OneDailyFragment"

    const-string v1, " onActivityResult() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/g;->onAttach(Landroid/app/Activity;)V

    .line 126
    const-string v0, "OneDailyFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onAttach() happenDate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->t:Lcom/yf/smart/weloopx/g/d;

    .line 128
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->s:Lcom/yf/gattlib/c/c;

    .line 129
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->y:Lcom/yf/smart/weloopx/b/b;

    .line 130
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->y:Lcom/yf/smart/weloopx/b/b;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->z:Lcom/yf/gattlib/d/b$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->a(Lcom/yf/gattlib/d/b$a;)V

    .line 131
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->s:Lcom/yf/gattlib/c/c;

    const-string v1, "KEY_GOAL_TIME_LABEL"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->u:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 666
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/g;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 667
    const-string v0, "OneDailyFragment"

    const-string v1, " onConfigurationChanged() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/g;->onCreate(Landroid/os/Bundle;)V

    .line 144
    if-eqz p1, :cond_0

    const-string v0, "happenDate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const-string v0, "happenDate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    .line 148
    :cond_0
    const-string v0, "OneDailyFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onCreate() happenDate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->w:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneDailyFragment OneDailyFragment onCreateView happenDate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 189
    const-string v0, "OneDailyFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onCreateView() happenDate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const v0, 0x7f030054

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 192
    const v0, 0x7f0d01ca

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 194
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v4, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(ZZ)Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    const v2, 0x7f0701c4

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/c/ba;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/handmark/pulltorefresh/library/a;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v4, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(ZZ)Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    const v2, 0x7f0701c6

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/c/ba;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/handmark/pulltorefresh/library/a;->setReleaseLabel(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v4, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(ZZ)Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0701c5

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/c/ba;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/handmark/pulltorefresh/library/a;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->u:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/handmark/pulltorefresh/library/a;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->b:Landroid/widget/ListView;

    .line 203
    const v0, 0x7f0d01c9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->l:Landroid/widget/ProgressBar;

    .line 205
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/ba;->a(Landroid/view/LayoutInflater;)V

    .line 212
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->x:Lcom/handmark/pulltorefresh/library/e$e;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/e$e;)V

    .line 213
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 672
    const-string v0, "OneDailyFragment"

    const-string v1, " onDestroy() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onDestroy()V

    .line 674
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 218
    const-string v0, "OneDailyFragment"

    const-string v1, " onDestroyView()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onDestroyView()V

    .line 222
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onDetach()V

    .line 138
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/lib/squareup/otto/b;->b(Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 678
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onPause()V

    .line 679
    const-string v0, "OneDailyFragment"

    const-string v1, " onPause() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneDailyFragment onResume() happenDate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 227
    const-string v0, "OneDailyFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onResume() happenDate ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/lib/squareup/otto/b;->a(Ljava/lang/Object;)V

    .line 229
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/a;->b(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/DailyGain;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->q:Lcom/yf/smart/weloopx/data/models/DailyGain;

    .line 230
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->r:Ljava/util/List;

    .line 231
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->b()V

    .line 232
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->f()V

    .line 233
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->a()V

    .line 234
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onResume()V

    .line 235
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 684
    const-string v0, "OneDailyFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSaveInstanceState() happenDate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 686
    const-string v0, "OneDailyFragment"

    const-string v1, " onSaveInstanceState isSave"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-string v0, "happenDate"

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_0
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 690
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 654
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onStart()V

    .line 655
    const-string v0, "OneDailyFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onStart() happenDate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ba;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 694
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onStop()V

    .line 695
    const-string v0, "OneDailyFragment"

    const-string v1, " onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 706
    invoke-super {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/c/g;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 707
    const-string v0, "OneDailyFragment"

    const-string v1, " onViewCreated() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 700
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/g;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 701
    const-string v0, "OneDailyFragment"

    const-string v1, " onViewStateRestored() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return-void
.end method
