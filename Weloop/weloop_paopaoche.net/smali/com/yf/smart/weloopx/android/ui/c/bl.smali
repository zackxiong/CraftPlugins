.class public Lcom/yf/smart/weloopx/android/ui/c/bl;
.super Lcom/yf/smart/weloopx/android/ui/c/g;
.source "ProGuard"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field private static c:Ljava/lang/String;


# instance fields
.field private d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private e:Landroid/widget/ListView;

.field private f:Lcom/yf/smart/weloopx/android/ui/a/h;

.field private g:Lcom/yf/gattlib/c/c;

.field private h:Landroid/widget/TextView;

.field private i:I

.field private j:Lcom/yf/smart/weloopx/data/d;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Friendmodel;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/yf/smart/weloopx/android/ui/c/aw;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Lcom/handmark/pulltorefresh/library/e$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/e$e",
            "<",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/b/a/d/c;

.field private q:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "ACTION_DEL_FRIEND"

    sput-object v0, Lcom/yf/smart/weloopx/android/ui/c/bl;->a:Ljava/lang/String;

    .line 58
    const-string v0, "RankingFriendFragment"

    sput-object v0, Lcom/yf/smart/weloopx/android/ui/c/bl;->c:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yf/smart/weloopx/android/ui/c/bl;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;-><init>()V

    .line 65
    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->i:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->k:Ljava/util/ArrayList;

    .line 69
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->m:Z

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->n:Ljava/lang/String;

    .line 151
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/bm;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/bm;-><init>(Lcom/yf/smart/weloopx/android/ui/c/bl;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->o:Lcom/handmark/pulltorefresh/library/e$e;

    .line 330
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/bs;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/bs;-><init>(Lcom/yf/smart/weloopx/android/ui/c/bl;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->q:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/bl;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->i:I

    return p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/bl;)Lcom/yf/gattlib/c/c;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->g:Lcom/yf/gattlib/c/c;

    return-object v0
.end method

.method public static a()Lcom/yf/smart/weloopx/android/ui/c/bl;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/bl;-><init>()V

    .line 54
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->setArguments(Landroid/os/Bundle;)V

    .line 55
    return-object v1
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 276
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/bq;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/bq;-><init>(Lcom/yf/smart/weloopx/android/ui/c/bl;I)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->a(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 139
    const v0, 0x7f0d028f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->h:Landroid/widget/TextView;

    .line 140
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/bl;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/c/bl;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->m:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 265
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 266
    const-class v2, Lcom/yf/smart/weloopx/data/models/Friendmodels;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/Friendmodels;

    .line 267
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodels;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->n:Ljava/lang/String;

    .line 268
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodels;->getUserList()Ljava/util/ArrayList;

    move-result-object v2

    .line 269
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->j:Lcom/yf/smart/weloopx/data/d;

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->m:Z

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodels;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v4, v5, v0}, Lcom/yf/smart/weloopx/data/d;->a(Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->k:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 272
    invoke-direct {p0, v1}, Lcom/yf/smart/weloopx/android/ui/c/bl;->a(I)V

    .line 273
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/bl;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/c/bl;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 143
    const v0, 0x7f0d016a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 144
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$b;->d:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/e$b;)V

    .line 145
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->o:Lcom/handmark/pulltorefresh/library/e$e;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/e$e;)V

    .line 146
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/handmark/pulltorefresh/library/a;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->g:Lcom/yf/gattlib/c/c;

    const-string v2, "KEY_RANK_TIME_LABEL"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/yf/gattlib/c/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/handmark/pulltorefresh/library/a;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->e:Landroid/widget/ListView;

    .line 149
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 298
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/android/ui/c/aw;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->l:Lcom/yf/smart/weloopx/android/ui/c/aw;

    .line 299
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->l:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/android/ui/c/aw;->e(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/c/bl;)Lcom/yf/smart/weloopx/android/ui/a/h;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->f:Lcom/yf/smart/weloopx/android/ui/a/h;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/c/bl;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/c/bl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->n:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/yf/smart/weloopx/data/d;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/data/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->j:Lcom/yf/smart/weloopx/data/d;

    .line 134
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->g:Lcom/yf/gattlib/c/c;

    .line 136
    return-void
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/c/bl;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->i()V

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 173
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/a/h;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->k:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/a/h;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->f:Lcom/yf/smart/weloopx/android/ui/a/h;

    .line 174
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->f:Lcom/yf/smart/weloopx/android/ui/a/h;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/bn;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/bn;-><init>(Lcom/yf/smart/weloopx/android/ui/c/bl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 188
    return-void
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/android/ui/c/bl;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->h()V

    return-void
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/android/ui/c/bl;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/bo;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/bo;-><init>(Lcom/yf/smart/weloopx/android/ui/c/bl;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/android/ui/c/bl;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 254
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->j:Lcom/yf/smart/weloopx/data/d;

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/data/d;->a(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->k:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->a(I)V

    .line 257
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 303
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/br;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/br;-><init>(Lcom/yf/smart/weloopx/android/ui/c/bl;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->a(Ljava/lang/Runnable;)V

    .line 312
    return-void
.end method

.method static synthetic i(Lcom/yf/smart/weloopx/android/ui/c/bl;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->g()V

    return-void
.end method

.method static synthetic j(Lcom/yf/smart/weloopx/android/ui/c/bl;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 325
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 326
    sget-object v1, Lcom/yf/smart/weloopx/android/ui/c/bl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/yf/gattlib/a/a;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 328
    return-void
.end method

.method static synthetic k(Lcom/yf/smart/weloopx/android/ui/c/bl;)Lcom/yf/smart/weloopx/android/ui/c/aw;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->l:Lcom/yf/smart/weloopx/android/ui/c/aw;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 5

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/smart/weloopx/android/ui/c/bl;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5f00\u59cb\u83b7\u5f97\u597d\u53cb\u4fe1\u606f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 205
    if-eqz p1, :cond_0

    .line 206
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->i:I

    .line 208
    :cond_0
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 209
    const-string v1, "accessToken"

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v1, "pageNum"

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->i:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "pageSize"

    const-string v2, "50"

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v1, Lcom/b/a/b;

    invoke-direct {v1}, Lcom/b/a/b;-><init>()V

    .line 213
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->x()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/android/ui/c/bp;

    invoke-direct {v4, p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/bp;-><init>(Lcom/yf/smart/weloopx/android/ui/c/bl;Z)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->p:Lcom/b/a/d/c;

    .line 249
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->l:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 316
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->p:Lcom/b/a/d/c;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->p:Lcom/b/a/d/c;

    invoke-virtual {v0}, Lcom/b/a/d/c;->a()V

    .line 319
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/g;->onAttach(Landroid/app/Activity;)V

    .line 78
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->e()V

    .line 79
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->b(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->j()V

    .line 82
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/g;->onCreate(Landroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 93
    const v0, 0x7f030093

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 95
    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->a(Landroid/view/View;)V

    .line 96
    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->b(Landroid/view/View;)V

    .line 97
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->f()V

    .line 99
    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/a/a;->b(Landroid/content/BroadcastReceiver;)V

    .line 128
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->b()V

    .line 129
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onDetach()V

    .line 130
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onPause()V

    .line 122
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->b()V

    .line 123
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onResume()V

    .line 113
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bl;->i:I

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->a(Z)V

    .line 116
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onStart()V

    .line 107
    return-void
.end method
