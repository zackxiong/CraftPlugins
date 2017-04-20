.class public Lcom/yf/smart/weloopx/android/ui/c/bt;
.super Lcom/yf/smart/weloopx/android/ui/c/g;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/c/bt$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:[I

.field private d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private e:Landroid/widget/ListView;

.field private f:Lcom/yf/smart/weloopx/android/ui/c/bt$a;

.field private g:Z

.field private h:Z

.field private i:Lcom/b/a/a;

.field private j:Lcom/yf/gattlib/c/c;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "RankingListFragment"

    sput-object v0, Lcom/yf/smart/weloopx/android/ui/c/bt;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->b:I

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->c:[I

    .line 235
    return-void

    .line 52
    nop

    :array_0
    .array-data 4
        0x7f020112
        0x7f020114
        0x7f020113
    .end array-data
.end method

.method public static a(I)Lcom/yf/smart/weloopx/android/ui/c/bt;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    const-string v1, "type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/bt;-><init>()V

    .line 59
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->setArguments(Landroid/os/Bundle;)V

    .line 60
    return-object v1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/c/bt;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/bt;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/bt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 159
    const v0, 0x7f0d016a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 160
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->k:I

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$b;->c:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/e$b;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/bw;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/bw;-><init>(Lcom/yf/smart/weloopx/android/ui/c/bt;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/e$e;)V

    .line 175
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing(Z)V

    .line 176
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->j:Lcom/yf/gattlib/c/c;

    const-string v2, "KEY_RANK_TIME_LABEL"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/yf/gattlib/c/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/handmark/pulltorefresh/library/a;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->e:Landroid/widget/ListView;

    .line 178
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->f:Lcom/yf/smart/weloopx/android/ui/c/bt$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/bx;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/bx;-><init>(Lcom/yf/smart/weloopx/android/ui/c/bt;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 189
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/bt;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->g()V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/bt;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->g:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 295
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 296
    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 298
    :goto_0
    return-object p1

    .line 297
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/yf/smart/weloopx/f/a;->a()Lcom/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->i:Lcom/b/a/a;

    .line 111
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/bt$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yf/smart/weloopx/android/ui/c/bt$a;-><init>(Lcom/yf/smart/weloopx/android/ui/c/bt;Lcom/yf/smart/weloopx/android/ui/c/bu;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->f:Lcom/yf/smart/weloopx/android/ui/c/bt$a;

    .line 112
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->j:Lcom/yf/gattlib/c/c;

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->g:Z

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->h:Z

    .line 115
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->k:I

    .line 117
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/c/bt;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/c/bt;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/c/bt;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->f()V

    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/c/bt;)Lcom/yf/smart/weloopx/android/ui/c/bt$a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->f:Lcom/yf/smart/weloopx/android/ui/c/bt$a;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/yf/smart/weloopx/android/ui/c/bu;

    invoke-direct {v3, p0}, Lcom/yf/smart/weloopx/android/ui/c/bu;-><init>(Lcom/yf/smart/weloopx/android/ui/c/bt;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 155
    return-void
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/c/bt;)Lcom/yf/gattlib/c/c;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->j:Lcom/yf/gattlib/c/c;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    .line 195
    :cond_0
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->h:Z

    .line 204
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->k:I

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/c/by;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/c/by;-><init>(Lcom/yf/smart/weloopx/android/ui/c/bt;)V

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/b/a;->a(ILcom/yf/smart/weloopx/b/b/n;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/android/ui/c/bt;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->e()V

    return-void
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/android/ui/c/bt;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/bz;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/bz;-><init>(Lcom/yf/smart/weloopx/android/ui/c/bt;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->a(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/android/ui/c/bt;)[I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->c:[I

    return-object v0
.end method

.method static synthetic i(Lcom/yf/smart/weloopx/android/ui/c/bt;)Lcom/b/a/a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt;->i:Lcom/b/a/a;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/g;->onAttach(Landroid/app/Activity;)V

    .line 76
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/g;->onCreate(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->b()V

    .line 102
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->d()V

    .line 104
    const v0, 0x7f030093

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 105
    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->a(Landroid/view/View;)V

    .line 106
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onPause()V

    .line 92
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onResume()V

    .line 86
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->f()V

    .line 87
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onStart()V

    .line 81
    return-void
.end method
