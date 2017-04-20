.class public Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/yf/smart/weloopx/android/ui/c/ah$a;


# instance fields
.field a:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017e
    .end annotation
.end field

.field b:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017d
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d016e
    .end annotation
.end field

.field d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0118
    .end annotation
.end field

.field e:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0119
    .end annotation
.end field

.field private final f:Ljava/lang/String;

.field private g:Landroid/widget/ListView;

.field private h:Landroid/view/View;

.field private i:Lcom/google/gson/Gson;

.field private j:Lcom/yf/smart/weloopx/data/k;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/yf/smart/weloopx/android/ui/a/p;

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lcom/handmark/pulltorefresh/library/e$f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 48
    const-string v0, "RunningInfoListActivity"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->f:Ljava/lang/String;

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->m:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->n:I

    .line 72
    const-string v0, "delete"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->o:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->p:Ljava/lang/String;

    .line 235
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/ga;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ga;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->q:Lcom/handmark/pulltorefresh/library/e$f;

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->m:I

    return v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->n:I

    return p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->k:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f0701ef

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->g:Landroid/widget/ListView;

    .line 94
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$b;->d:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/e$b;)V

    .line 96
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->q:Lcom/handmark/pulltorefresh/library/e$f;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/e$f;)V

    .line 98
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->j:Lcom/yf/smart/weloopx/data/k;

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/b/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/k;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->k:Ljava/util/ArrayList;

    .line 231
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->d()V

    .line 232
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->e(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->i:Lcom/google/gson/Gson;

    .line 102
    new-instance v0, Lcom/yf/smart/weloopx/data/k;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/data/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->j:Lcom/yf/smart/weloopx/data/k;

    .line 103
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->c()V

    .line 104
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->m:I

    return p1
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;)Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->i:Lcom/google/gson/Gson;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 162
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 163
    const-string v1, "accessToken"

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v1, "pageNum"

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->m:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "pageSize"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v1, Lcom/b/a/b;

    invoke-direct {v1}, Lcom/b/a/b;-><init>()V

    .line 167
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->I()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/android/ui/activities/fz;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fz;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 215
    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;)Lcom/yf/smart/weloopx/data/k;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->j:Lcom/yf/smart/weloopx/data/k;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 219
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->k:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 220
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/a/p;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->k:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/yf/smart/weloopx/android/ui/a/p;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->l:Lcom/yf/smart/weloopx/android/ui/a/p;

    .line 221
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->g:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->l:Lcom/yf/smart/weloopx/android/ui/a/p;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->g:Landroid/widget/ListView;

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->m:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 227
    :goto_1
    return-void

    .line 222
    :cond_0
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->n:I

    goto :goto_0

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    goto :goto_1
.end method

.method private e()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/gb;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/gb;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->post(Ljava/lang/Runnable;)Z

    .line 256
    return-void
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->d()V

    return-void
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->e()V

    return-void
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->c()V

    return-void
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;)I
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->m:I

    return v0
.end method

.method private h()V
    .locals 6

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->o:Ljava/lang/String;

    const v2, 0x7f070137

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07007e

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f070192

    invoke-virtual {p0, v4}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 260
    return-void
.end method

.method static synthetic i(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 5

    .prologue
    .line 266
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 267
    const-string v1, "accessToken"

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v1, "runid"

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v1, Lcom/b/a/b;

    invoke-direct {v1}, Lcom/b/a/b;-><init>()V

    .line 270
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->I()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/android/ui/activities/gc;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/android/ui/activities/gc;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 311
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RunningInfoListActivity \u5bf9\u8bdd\u6846\u8fd4\u56de\u7684tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isOk = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 317
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->i()V

    .line 319
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 111
    :pswitch_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->finish()V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x7f0d017d
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->requestWindowFeature(I)Z

    .line 80
    const v0, 0x7f03002f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->h:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->setContentView(Landroid/view/View;)V

    .line 82
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 84
    const v0, 0x7f070150

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->d(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->a()V

    .line 86
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->b()V

    .line 87
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->k:Ljava/util/ArrayList;

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;

    .line 124
    iget-object v1, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->url:Ljava/lang/String;

    .line 125
    iget-object v0, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->distance:Ljava/lang/String;

    .line 126
    const-string v2, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    const v0, 0x7f07029b

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    const-string v3, "URL"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v1, "DISTANCE"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->k:Ljava/util/ArrayList;

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;

    iget-object v0, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->runid:Ljava/lang/String;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->p:Ljava/lang/String;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RunningInfoListActivity \u957f\u6309\u9009\u62e9\u7684runId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->h()V

    .line 147
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 153
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 155
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
