.class public Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;,
        Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/ProgressBar;

.field private d:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const-string v0, "mobile"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->a:Ljava/lang/String;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->g:I

    .line 250
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->g:I

    return p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;)Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->d:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;

    return-object p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->e:Ljava/util/Set;

    .line 51
    const-string v1, "com.android.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v1, "com.htc.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v1, "fm.last.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v1, "com.sec.android.app.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v1, "com.nullsoft.winamp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v1, "com.amazon.mp3"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v1, "com.miui.player"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v1, "com.real"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v1, "com.sonyericsson.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v1, "com.rdio.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v1, "com.samsung.sec.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v1, "com.andrew.apollo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v1, "com.kugou.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v1, "com.ting.mp3.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v1, "com.google.android.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v1, "com.vivo.dream.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v1, "com.android.bbkmusic"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v1, "fm.xiami.main"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v1, "com.oppo.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v1, "com.lge.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v1, "com.duomi.android.sony"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v1, "com.duomi.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    const-string v1, "com.spotify.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v1, "cn.kuwo.player"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v1, "com.netease.cloudmusic"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v1, "com.sds.android.ttpod"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v1, "com.meizu.media.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 258
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const/4 p1, 0x0

    .line 261
    :cond_0
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "music player package"

    invoke-virtual {v0, v1, p1}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/w;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/w;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->e:Ljava/util/Set;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/x;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/x;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 266
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "music player package"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->b()V

    return-void
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->g:I

    return v0
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->d:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;

    return-object v0
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic i(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->c:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic j(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->c()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->requestWindowFeature(I)Z

    .line 86
    const v0, 0x7f030048

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->setContentView(I)V

    .line 88
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->a()V

    .line 89
    const v0, 0x7f0d01a3

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->b:Landroid/widget/ListView;

    .line 90
    const v0, 0x7f0d01a4

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->c:Landroid/widget/ProgressBar;

    .line 91
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->f:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/u;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/u;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)V

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/u;->start()V

    .line 113
    const v0, 0x7f0d01a1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/v;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/v;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method
