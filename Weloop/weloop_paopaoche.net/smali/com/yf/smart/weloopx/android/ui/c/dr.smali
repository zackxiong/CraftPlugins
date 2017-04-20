.class public Lcom/yf/smart/weloopx/android/ui/c/dr;
.super Lcom/yf/smart/weloopx/android/ui/c/g;
.source "ProGuard"

# interfaces
.implements Lcom/yf/smart/weloopx/android/ui/c/dm$a;
.implements Lcom/yf/smart/weloopx/android/ui/c/dp$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/c/dr$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/GridView;

.field private b:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

.field private c:Lcom/yf/smart/weloopx/android/ui/c/dr$a;

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Watchface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;-><init>()V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dr;->e:Ljava/util/List;

    .line 33
    return-void
.end method

.method public static a(I)Lcom/yf/smart/weloopx/android/ui/c/dr;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string v1, "1"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/dr;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/dr;-><init>()V

    .line 39
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/dr;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dr;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dr;->d:I

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/dp;->a(Landroid/app/FragmentManager;I)V

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/dr;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/dr;->a()V

    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/c/dr;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dr;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/c/dr;)Lcom/yf/smart/weloopx/android/ui/c/dr$a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dr;->c:Lcom/yf/smart/weloopx/android/ui/c/dr$a;

    return-object v0
.end method


# virtual methods
.method public a(ILcom/yf/smart/weloopx/data/models/Watchface;)V
    .locals 2

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dr;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yf/smart/weloopx/data/models/Watchface;->getWatchNo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(Landroid/app/FragmentManager;Ljava/lang/String;)Lcom/yf/smart/weloopx/android/ui/c/l;

    .line 91
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;)V
    .locals 1

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 102
    const v0, 0x7f0700f0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dr;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dr;->a(Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 106
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;->getDataList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 107
    :cond_1
    const v0, 0x7f07018b

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dr;->c(I)V

    goto :goto_0

    .line 111
    :cond_2
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/du;

    invoke-direct {v0, p0, p3}, Lcom/yf/smart/weloopx/android/ui/c/du;-><init>(Lcom/yf/smart/weloopx/android/ui/c/dr;Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dr;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/g;->onAttach(Landroid/app/Activity;)V

    .line 53
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dr;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dr;->d:I

    .line 54
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/dr$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yf/smart/weloopx/android/ui/c/dr$a;-><init>(Lcom/yf/smart/weloopx/android/ui/c/dr;Lcom/yf/smart/weloopx/android/ui/c/ds;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dr;->c:Lcom/yf/smart/weloopx/android/ui/c/dr$a;

    .line 55
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/dr;->a()V

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 61
    const v0, 0x7f0300b1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 62
    const v0, 0x7f0d02cd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dr;->b:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    .line 63
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dr;->b:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    sget-object v2, Lcom/handmark/pulltorefresh/library/e$b;->b:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->setMode(Lcom/handmark/pulltorefresh/library/e$b;)V

    .line 64
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dr;->b:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/c/ds;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/c/ds;-><init>(Lcom/yf/smart/weloopx/android/ui/c/dr;)V

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->setOnPullEventListener(Lcom/handmark/pulltorefresh/library/e$d;)V

    .line 72
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dr;->b:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dr;->a:Landroid/widget/GridView;

    .line 73
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dr;->a:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dr;->c:Lcom/yf/smart/weloopx/android/ui/c/dr$a;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dr;->a:Landroid/widget/GridView;

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/c/dt;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/c/dt;-><init>(Lcom/yf/smart/weloopx/android/ui/c/dr;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    return-object v1
.end method
