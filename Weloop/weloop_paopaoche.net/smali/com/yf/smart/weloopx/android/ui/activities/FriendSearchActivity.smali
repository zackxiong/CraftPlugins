.class public Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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

.field d:Landroid/widget/ImageView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00e5
    .end annotation
.end field

.field e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00e7
    .end annotation
.end field

.field f:Landroid/widget/EditText;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00e6
    .end annotation
.end field

.field private final g:Ljava/lang/String;

.field private h:Landroid/widget/ListView;

.field private i:Landroid/view/View;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Friendmodel;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/yf/smart/weloopx/android/ui/a/i;

.field private l:I

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Landroid/text/TextWatcher;

.field private p:Lcom/handmark/pulltorefresh/library/e$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/e$e",
            "<",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 52
    const-string v0, "FriendSearchActivity"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->g:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->j:Ljava/util/ArrayList;

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->l:I

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->m:Z

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->n:Ljava/lang/String;

    .line 118
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/dc;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/dc;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->o:Landroid/text/TextWatcher;

    .line 140
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/dd;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/dd;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->p:Lcom/handmark/pulltorefresh/library/e$e;

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;Lcom/yf/smart/weloopx/android/ui/a/i;)Lcom/yf/smart/weloopx/android/ui/a/i;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->k:Lcom/yf/smart/weloopx/android/ui/a/i;

    return-object p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f07010d

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->o:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$b;->c:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/e$b;)V

    .line 99
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/handmark/pulltorefresh/library/a;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    const v1, 0x7f0701c7

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/handmark/pulltorefresh/library/a;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    const v1, 0x7f0701e0

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/handmark/pulltorefresh/library/a;->setReleaseLabel(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->h:Landroid/widget/ListView;

    .line 103
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->p:Lcom/handmark/pulltorefresh/library/e$e;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/e$e;)V

    .line 104
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    const v0, 0x7f0701f9

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->d(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 256
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/dg;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/dg;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;I)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 268
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;Z)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    const v1, 0x7f0701f9

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/aw;->e(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$b;->c:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/e$b;)V

    .line 191
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 192
    const-string v1, "accessToken"

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "searchKey"

    invoke-virtual {v0, v1, p1}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "pageNum"

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->l:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->l:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "pageSize"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v1, Lcom/b/a/b;

    invoke-direct {v1}, Lcom/b/a/b;-><init>()V

    .line 197
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->r()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/android/ui/activities/de;

    invoke-direct {v4, p0, p2}, Lcom/yf/smart/weloopx/android/ui/activities/de;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;Z)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 236
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 170
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const v0, 0x7f0701b3

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->e(Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 175
    :cond_0
    if-nez p1, :cond_1

    .line 176
    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->l:I

    .line 178
    :cond_1
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->c()V

    .line 179
    if-nez p1, :cond_2

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;)Lcom/yf/smart/weloopx/android/ui/a/i;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->k:Lcom/yf/smart/weloopx/android/ui/a/i;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$b;->a:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/e$b;)V

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->a(I)V

    .line 116
    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 239
    if-eqz p2, :cond_0

    .line 240
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 242
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 243
    const-class v1, Lcom/yf/smart/weloopx/data/models/Friendmodels;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/Friendmodels;

    .line 244
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodels;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->n:Ljava/lang/String;

    .line 245
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 246
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodels;->getUserList()Ljava/util/ArrayList;

    move-result-object v2

    .line 247
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->j:Ljava/util/ArrayList;

    if-le v1, v4, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 248
    iput-boolean v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->m:Z

    .line 249
    invoke-direct {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->a(I)V

    .line 250
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 251
    :cond_1
    const-string v0, "\u65e0\u5339\u914d\u6b64\u5173\u952e\u8bcd\u7684\u7528\u6237"

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->e(Ljava/lang/String;)V

    .line 253
    :cond_2
    return-void

    .line 247
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->h:Landroid/widget/ListView;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 183
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 184
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 185
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/dh;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/dh;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->post(Ljava/lang/Runnable;)Z

    .line 277
    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->d()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 167
    :goto_0
    :sswitch_0
    return-void

    .line 156
    :sswitch_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->finish()V

    goto :goto_0

    .line 163
    :sswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->a(Z)V

    goto :goto_0

    .line 154
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d00e5 -> :sswitch_2
        0x7f0d017d -> :sswitch_1
        0x7f0d017e -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->requestWindowFeature(I)Z

    .line 81
    const v0, 0x7f030021

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->i:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->i:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->setContentView(Landroid/view/View;)V

    .line 84
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 86
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->a()V

    .line 87
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->b()V

    .line 88
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->j:Ljava/util/ArrayList;

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/Friendmodel;

    .line 284
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodel;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FriendSearchActivity \u9009\u4e2d\u7684userId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", \u5f53\u524d\u7528\u6237\u7684userId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-boolean v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->m:Z

    if-eqz v2, :cond_0

    const/16 v2, 0xfa2

    :goto_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->n:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(Landroid/app/FragmentManager;IIZLjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_1
    return-void

    .line 286
    :cond_0
    const/16 v2, 0xfa7

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    const-string v0, "FriendSearchActivity Maybe get userID faield"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
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
    .line 302
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->m:Z

    if-nez v0, :cond_0

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->j:Ljava/util/ArrayList;

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/Friendmodel;

    .line 305
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodel;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodel;->getNickname()Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FriendSearchActivity \u5220\u9664\u65f6\u9009\u4e2d\u7684userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u540d\u79f0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    const-string v0, "FriendSearchActivity Maybe get userID faield"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 426
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 429
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
