.class public Lcom/yf/smart/weloopx/android/ui/activities/el;
.super Lcom/yf/smart/weloopx/android/ui/c/g;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yf/smart/weloopx/android/ui/c/ah$a;


# static fields
.field public static a:Z


# instance fields
.field private A:Lcom/yf/smart/weloopx/android/ui/c/aw;

.field private B:Lcom/yf/smart/weloopx/g/d;

.field private C:Landroid/content/Context;

.field private D:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

.field private E:Lcom/yf/gattlib/c/c;

.field private F:Landroid/widget/RelativeLayout;

.field private G:Landroid/widget/RelativeLayout;

.field private H:Landroid/widget/ImageView;

.field private I:Landroid/widget/ImageView;

.field private J:Landroid/widget/ImageView;

.field private K:Lcom/yf/smart/weloopx/android/ui/widget/o;

.field private L:Lcom/yf/smart/weloopx/android/ui/widget/o;

.field private M:Lcom/yf/smart/weloopx/android/ui/widget/o;

.field private N:Lcom/yf/smart/weloopx/android/ui/widget/o;

.field private O:Landroid/widget/LinearLayout;

.field private P:Landroid/widget/LinearLayout;

.field private Q:Landroid/widget/LinearLayout;

.field private R:Landroid/widget/LinearLayout;

.field private S:Lcom/yf/smart/weloopx/b/b/m;

.field private T:Z

.field private U:Lcom/yf/smart/weloopx/android/ui/widget/o;

.field private V:Landroid/view/View$OnClickListener;

.field private W:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private b:Ljava/lang/String;

.field private c:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

.field private d:Z

.field private e:Lcom/yf/smart/weloopx/android/ui/widget/o;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/Button;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;

.field private z:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yf/smart/weloopx/android/ui/activities/el;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;-><init>()V

    .line 84
    const-string v0, "MyFragment"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->b:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->j:I

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->T:Z

    .line 621
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/er;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/er;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/el;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->V:Landroid/view/View$OnClickListener;

    .line 847
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/ex;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ex;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/el;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->W:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/el;)Lcom/yf/gattlib/c/c;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->E:Lcom/yf/gattlib/c/c;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/el;Lcom/yf/smart/weloopx/android/ui/c/aw;)Lcom/yf/smart/weloopx/android/ui/c/aw;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->A:Lcom/yf/smart/weloopx/android/ui/c/aw;

    return-object p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/el;Lcom/yf/smart/weloopx/data/models/UserProfileResult;)Lcom/yf/smart/weloopx/data/models/UserProfileResult;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->c:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    return-object p1
.end method

.method private a()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method private a(Landroid/view/LayoutInflater;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 177
    const v0, 0x7f03008a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    .line 178
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d0279

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->F:Landroid/widget/RelativeLayout;

    .line 179
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d027d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->G:Landroid/widget/RelativeLayout;

    .line 180
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d027e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->H:Landroid/widget/ImageView;

    .line 182
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d027c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->J:Landroid/widget/ImageView;

    .line 184
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d027f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->I:Landroid/widget/ImageView;

    .line 185
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->n:Landroid/widget/TextView;

    .line 187
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->n:Landroid/widget/TextView;

    const v1, 0x7f070161

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 188
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d027b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->o:Landroid/widget/TextView;

    .line 189
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d017d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d017f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->t:Landroid/view/View;

    .line 191
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d017e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->p:Landroid/widget/Button;

    .line 192
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->p:Landroid/widget/Button;

    const v1, 0x7f020103

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 193
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->p:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->p:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->p:Landroid/widget/Button;

    const/4 v1, 0x5

    invoke-virtual {v0, v5, v5, v5, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 196
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->p:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 197
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 199
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d0270

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v2, 0x7f0d0271

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 201
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v3, 0x7f0d0272

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 202
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v4, 0x7f0d0273

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 203
    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->K:Lcom/yf/smart/weloopx/android/ui/widget/o;

    .line 204
    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->L:Lcom/yf/smart/weloopx/android/ui/widget/o;

    .line 205
    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->M:Lcom/yf/smart/weloopx/android/ui/widget/o;

    .line 206
    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->N:Lcom/yf/smart/weloopx/android/ui/widget/o;

    .line 208
    new-instance v0, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->B:Lcom/yf/smart/weloopx/g/d;

    .line 209
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d0265

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->z:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    .line 210
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->z:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->E:Lcom/yf/gattlib/c/c;

    const-string v2, "KEY_USER_TIME_LABEL"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/yf/gattlib/c/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/handmark/pulltorefresh/library/a;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->z:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/em;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/em;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/el;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/e$e;)V

    .line 241
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d0276

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;I)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->U:Lcom/yf/smart/weloopx/android/ui/widget/o;

    .line 242
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->U:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v1, 0x7f070052

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/el;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->U:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v1

    const-string v2, "KEY_AUTO_SYNC_DATA"

    invoke-virtual {v1, v2, v5}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setCheckedFromCode(Z)V

    .line 244
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->U:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->W:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 248
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/el;I)V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/el;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/el;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/el;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/el;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/el;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/el;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->C:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/el;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/el;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d026c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->O:Landroid/widget/LinearLayout;

    .line 253
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->O:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/ey;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ey;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/el;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d026d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->P:Landroid/widget/LinearLayout;

    .line 263
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->P:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/ez;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ez;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/el;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d026e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->Q:Landroid/widget/LinearLayout;

    .line 273
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->Q:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/fa;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fa;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/el;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d026f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->R:Landroid/widget/LinearLayout;

    .line 283
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->R:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/fb;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fb;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/el;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/el;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/el;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/el;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/el;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/el;)Lcom/yf/smart/weloopx/g/d;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->B:Lcom/yf/smart/weloopx/g/d;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/high16 v3, 0x41a00000    # 20.0f

    const v2, 0x7f0c00ad

    .line 293
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->K:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->f:Landroid/widget/ImageView;

    const v1, 0x7f020106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->K:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v1, 0x7f070062

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 295
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->K:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 296
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->K:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->K:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->L:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->f:Landroid/widget/ImageView;

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->L:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v1, 0x7f070063

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 301
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->L:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 302
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->L:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->L:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->M:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->f:Landroid/widget/ImageView;

    const v1, 0x7f020108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->M:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v1, 0x7f07014f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 307
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->M:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 308
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->M:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->M:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->c:Landroid/widget/TextView;

    const v1, 0x7f07027a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 310
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->M:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 311
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->M:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->N:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->f:Landroid/widget/ImageView;

    const v1, 0x7f02010e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 314
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->N:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v1, 0x7f07020a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 315
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->N:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 316
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->N:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->N:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->c:Landroid/widget/TextView;

    const v1, 0x7f0701d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 318
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->N:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 319
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->N:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 320
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->N:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->g:Landroid/widget/ImageView;

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/el;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->o()V

    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const v3, 0x7f0c001c

    const/4 v2, 0x0

    .line 328
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d0267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->r:Landroid/view/View;

    .line 329
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->r:Landroid/view/View;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/fc;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fc;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/el;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->r:Landroid/view/View;

    const v1, 0x7f0d0269

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->k:Landroid/widget/TextView;

    .line 337
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->r:Landroid/view/View;

    const v1, 0x7f0d0268

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->y:Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;

    .line 339
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->r:Landroid/view/View;

    const v1, 0x7f0d026a

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;I)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    .line 340
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->l:Landroid/widget/TextView;

    .line 343
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->r:Landroid/view/View;

    const v1, 0x7f0d026b

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;I)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    .line 344
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 345
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 346
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->m:Landroid/widget/TextView;

    .line 347
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    return-void
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/activities/el;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->n()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d0275

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->s:Landroid/view/View;

    .line 356
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->s:Landroid/view/View;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/fd;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fd;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/el;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->s:Landroid/view/View;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    .line 365
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v1, 0x7f070260

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 367
    return-void
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/android/ui/activities/el;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->l()V

    return-void
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/android/ui/activities/el;)Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->D:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 409
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d0274

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->w:Landroid/view/View;

    .line 410
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->w:Landroid/view/View;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->V:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->w:Landroid/view/View;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    .line 412
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v1, 0x7f0700dc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 414
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->w:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 415
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d0280

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->v:Landroid/view/View;

    .line 422
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->v:Landroid/view/View;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    .line 423
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 424
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v1, 0x7f0702b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 427
    return-void
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/android/ui/activities/el;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->p()V

    return-void
.end method

.method static synthetic i(Lcom/yf/smart/weloopx/android/ui/activities/el;)Lcom/yf/smart/weloopx/android/ui/c/aw;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->A:Lcom/yf/smart/weloopx/android/ui/c/aw;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 433
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d0281

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->u:Landroid/view/View;

    .line 434
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->u:Landroid/view/View;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->V:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->u:Landroid/view/View;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    .line 436
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v1, 0x7f0700f1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 438
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 439
    return-void
.end method

.method static synthetic j(Lcom/yf/smart/weloopx/android/ui/activities/el;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->z:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 445
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d0282

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->x:Landroid/view/View;

    .line 446
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->x:Landroid/view/View;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->V:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->x:Landroid/view/View;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    .line 448
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->e:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v1, 0x7f070116

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 450
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->x:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 451
    return-void
.end method

.method static synthetic k(Lcom/yf/smart/weloopx/android/ui/activities/el;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->j:I

    return v0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 458
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    const v1, 0x7f0d0278

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->D:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    .line 459
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->D:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->E:Lcom/yf/gattlib/c/c;

    const-string v2, "KEY_TRAJECTORY_SWITCH"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setChecked(Z)V

    .line 460
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->D:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/fe;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fe;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/el;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 471
    return-void
.end method

.method static synthetic l(Lcom/yf/smart/weloopx/android/ui/activities/el;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->p:Landroid/widget/Button;

    return-object v0
.end method

.method private l()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 474
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 475
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 476
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 477
    const v0, 0x7f030041

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(I)V

    .line 479
    const v0, 0x7f0d0177

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 480
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    const v0, 0x7f0d0175

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 483
    const v3, 0x7f070196

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 484
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    const v0, 0x7f0d0176

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 487
    const v3, 0x7f070152

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 488
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    const v0, 0x7f0d017c

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/yf/smart/weloopx/android/ui/activities/ff;

    invoke-direct {v3, p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/ff;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/el;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    const v0, 0x7f0d017a

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/activities/eo;

    invoke-direct {v2, p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/eo;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/el;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    return-void
.end method

.method static synthetic m(Lcom/yf/smart/weloopx/android/ui/activities/el;)Landroid/view/View;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->t:Landroid/view/View;

    return-object v0
.end method

.method private declared-synchronized m()V
    .locals 3

    .prologue
    .line 511
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->A:Lcom/yf/smart/weloopx/android/ui/c/aw;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->A:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 514
    :cond_0
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/android/ui/c/aw;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->A:Lcom/yf/smart/weloopx/android/ui/c/aw;

    .line 515
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->A:Lcom/yf/smart/weloopx/android/ui/c/aw;

    const v1, 0x7f070150

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/aw;->e(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->A:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "LoadFrgmentDialog"

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    monitor-exit p0

    return-void

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->m()V

    .line 521
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->d:Z

    if-eqz v0, :cond_0

    .line 522
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->o()V

    .line 550
    :goto_0
    return-void

    .line 525
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->d:Z

    .line 526
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/ep;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ep;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/el;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/c;->a(Lcom/yf/smart/weloopx/b/b/g;)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/yf/smart/weloopx/android/ui/activities/el;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->t()V

    return-void
.end method

.method static synthetic o(Lcom/yf/smart/weloopx/android/ui/activities/el;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->b:Ljava/lang/String;

    return-object v0
.end method

.method private o()V
    .locals 4

    .prologue
    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->d:Z

    .line 556
    :try_start_0
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/eq;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/eq;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/el;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/yf/gattlib/a/b;->a(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_0
    return-void

    .line 569
    :catch_0
    move-exception v0

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stopRefresh\u51fa\u9519 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic p(Lcom/yf/smart/weloopx/android/ui/activities/el;)Lcom/yf/smart/weloopx/android/ui/widget/o;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->U:Lcom/yf/smart/weloopx/android/ui/widget/o;

    return-object v0
.end method

.method private p()V
    .locals 5

    .prologue
    .line 576
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->j:I

    if-lez v0, :cond_0

    .line 577
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->q()V

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->c:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    if-nez v0, :cond_1

    .line 619
    :goto_0
    return-void

    .line 582
    :cond_1
    invoke-static {}, Lcom/yf/smart/weloopx/f/a;->a()Lcom/b/a/a;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->y:Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->c:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getHeadPicUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->c:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getStandardRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->c:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getActiveDays()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->c:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    const-string v0, ""

    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->c:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getBestDay()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 599
    :goto_1
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->K:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->K:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->c:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getBestDayCalorie()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    const-string v0, ""

    .line 605
    :try_start_1
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->c:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getBestWeekBeginDate()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 606
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->c:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getBestWeekEndDate()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yyyy-MM-dd"

    invoke-static {v2, v3}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 613
    :goto_2
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->L:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->L:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->c:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getBestWeekCalorie()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->M:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->c:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getTotalCalorie()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->N:Lcom/yf/smart/weloopx/android/ui/widget/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->c:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getDbcount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 596
    :catch_0
    move-exception v1

    .line 597
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_1

    .line 610
    :catch_1
    move-exception v1

    .line 611
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2
.end method

.method private q()V
    .locals 1

    .prologue
    .line 658
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/es;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/es;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/el;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->a(Ljava/lang/Runnable;)V

    .line 668
    return-void
.end method

.method private r()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 672
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    :goto_0
    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->G:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->B:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yf/smart/weloopx/g/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->h:Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->B:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yf/smart/weloopx/g/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->i:Ljava/lang/String;

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u6211\u7684\u754c\u9762\u7684openID = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mobile = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->f:Z

    .line 680
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->g:Z

    .line 681
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->I:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->f:Z

    if-eqz v0, :cond_4

    const v0, 0x7f020124

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 682
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->H:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->g:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0201ac

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 683
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->f:Z

    if-nez v0, :cond_1

    .line 685
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->s()V

    .line 687
    :cond_1
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->f:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->g:Z

    if-eqz v0, :cond_6

    .line 688
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->o:Landroid/widget/TextView;

    const v1, 0x7f07006b

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/el;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->o:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 679
    goto :goto_1

    :cond_3
    move v1, v2

    .line 680
    goto :goto_2

    .line 681
    :cond_4
    const v0, 0x7f020125

    goto :goto_3

    .line 682
    :cond_5
    const v0, 0x7f0201af

    goto :goto_4

    .line 691
    :cond_6
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->o:Landroid/widget/TextView;

    const v1, 0x7f070296

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/el;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->o:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method private s()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 699
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->E:Lcom/yf/gattlib/c/c;

    const-string v1, "KEY_WAR_BIND_PHONE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 703
    if-eqz v0, :cond_0

    .line 706
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 707
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 708
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 709
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 710
    const v0, 0x7f030041

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(I)V

    .line 712
    const v0, 0x7f0d017c

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 713
    const v3, 0x7f070068

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/el;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 714
    new-instance v3, Lcom/yf/smart/weloopx/android/ui/activities/et;

    invoke-direct {v3, p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/et;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/el;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    const v0, 0x7f0d017b

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 724
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 726
    const v0, 0x7f0d017a

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 727
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 728
    const v3, 0x7f0701da

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/el;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 729
    new-instance v3, Lcom/yf/smart/weloopx/android/ui/activities/eu;

    invoke-direct {v3, p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/eu;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/el;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    const v0, 0x7f0d0177

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 738
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 739
    const-string v1, "\u60a8\u7684\u8d26\u53f7\u6682\u672a\u4e0e\u624b\u673a\u53f7\u7ed1\u5b9a\uff0c\u7ed1\u5b9a\u540e\u53ef\u5feb\u901f\u767b\u5f55\u5b98\u65b9\u5546\u57ce\uff0c\u4f7f\u7528\u79ef\u5206\u7545\u4eab\u66f4\u591a\u4f18\u60e0!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    const v0, 0x7f0d0175

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 742
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 744
    const v0, 0x7f0d0176

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 745
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 747
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->E:Lcom/yf/gattlib/c/c;

    const-string v1, "KEY_WAR_BIND_PHONE"

    invoke-virtual {v0, v1, v4}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private t()V
    .locals 3

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->f:Z

    if-eqz v0, :cond_0

    .line 753
    const v0, 0x7f07006b

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->a(Ljava/lang/String;)V

    .line 765
    :goto_0
    return-void

    .line 756
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u8df3\u8f6c\u7684\u51fa\u9519"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 760
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 761
    const-string v1, "OPEN_ID"

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    const-string v1, "IS_BIND_PHONE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 763
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private u()V
    .locals 3

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->g:Z

    if-eqz v0, :cond_1

    .line 770
    const v0, 0x7f07006b

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->a(Ljava/lang/String;)V

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->T:Z

    if-eqz v0, :cond_0

    .line 779
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->a:Z

    .line 780
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->B:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/g/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u5c06\u8981\u7ed1\u5b9a\u7684\u624b\u673a\u53f7 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->B:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x9c9222

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;I)V

    .line 783
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->B:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/g/d;->b(Landroid/content/Context;)V

    .line 784
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->T:Z

    goto :goto_0
.end method

.method private v()V
    .locals 5

    .prologue
    .line 792
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 793
    const-string v1, "accessToken"

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    new-instance v1, Lcom/b/a/b;

    invoke-direct {v1}, Lcom/b/a/b;-><init>()V

    .line 795
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->u()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/android/ui/activities/ev;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ev;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/el;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 844
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u63a5\u6536\u5230\u5bf9\u8bdd\u6846\u7684\u6267\u884c isOk = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 865
    const-string v0, "auto_sync"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    if-eqz p2, :cond_0

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6253\u5f00\u540c\u6b65"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 868
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "KEY_AUTO_SYNC_DATA"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 869
    invoke-static {}, Lcom/yf/smart/weloopx/c/x;->a()Lcom/yf/smart/weloopx/c/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/c/x;->f()V

    .line 873
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/g;->onAttach(Landroid/app/Activity;)V

    .line 131
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->a()V

    .line 132
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->C:Landroid/content/Context;

    .line 133
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->E:Lcom/yf/gattlib/c/c;

    .line 134
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 630
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 654
    :goto_0
    return-void

    .line 632
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 633
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 634
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->p:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->S:Lcom/yf/smart/weloopx/b/b/m;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/b/b/m;->j()V

    goto :goto_0

    .line 640
    :sswitch_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 641
    :goto_1
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->G:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 642
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->J:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const v0, 0x7f020049

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 640
    goto :goto_1

    .line 642
    :cond_2
    const v0, 0x7f02004a

    goto :goto_2

    .line 646
    :sswitch_2
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->u()V

    goto :goto_0

    .line 650
    :sswitch_3
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->t()V

    goto :goto_0

    .line 630
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d017e -> :sswitch_0
        0x7f0d0279 -> :sswitch_1
        0x7f0d027e -> :sswitch_2
        0x7f0d027f -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/el;->a(Landroid/view/LayoutInflater;)V

    .line 140
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->b()V

    .line 141
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->d()V

    .line 142
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->e()V

    .line 143
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->f()V

    .line 146
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->g()V

    .line 147
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->h()V

    .line 148
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->i()V

    .line 149
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->j()V

    .line 150
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->k()V

    .line 151
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->p()V

    .line 152
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/b/b/m;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->S:Lcom/yf/smart/weloopx/b/b/m;

    .line 154
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->q:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onResume()V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/el;->T:Z

    .line 166
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->n()V

    .line 167
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->r()V

    .line 168
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->v()V

    .line 169
    return-void
.end method
