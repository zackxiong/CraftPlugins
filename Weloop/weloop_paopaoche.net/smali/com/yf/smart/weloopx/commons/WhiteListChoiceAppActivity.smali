.class public Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;,
        Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/commons/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/commons/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$a;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/db/WhiteApp;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/yf/smart/weloopx/commons/h;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const-string v0, "WhiteListChoiceAppActivity"

    iput-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->b:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->g:I

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->k:Landroid/os/Handler;

    .line 140
    new-instance v0, Lcom/yf/smart/weloopx/commons/f;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/commons/f;-><init>(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->a:Ljava/lang/Runnable;

    .line 280
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->g:I

    return p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$a;)Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$a;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->h:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$a;

    return-object p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->i:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->e:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->f:Ljava/util/List;

    .line 71
    new-instance v0, Lcom/yf/smart/weloopx/commons/h;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/commons/h;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->j:Lcom/yf/smart/weloopx/commons/h;

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->c()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/db/WhiteApp;

    .line 188
    iget-object v0, v0, Lcom/yf/gattlib/db/WhiteApp;->pkg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->d()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->e:Ljava/util/List;

    return-object p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 75
    const v0, 0x7f0d019e

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->c:Landroid/widget/ListView;

    .line 76
    const v0, 0x7f0d019f

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->d:Landroid/widget/ProgressBar;

    .line 77
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 79
    const v0, 0x7f0d019b

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/commons/c;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/commons/c;-><init>(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f0d019a

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/commons/d;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/commons/d;-><init>(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/yf/smart/weloopx/commons/e;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/commons/e;-><init>(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/commons/b;

    .line 118
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/commons/b;->a()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/commons/b;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u6211\u662f "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/commons/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 121
    iget-object v3, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-static {v2}, Lcom/yf/gattlib/db/WhiteApp;->addWhiteApp(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {v2}, Lcom/yf/gattlib/db/WhiteApp;->removeWhiteApp(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 129
    const-string v2, "choiceApps"

    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->f:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 131
    const/16 v0, 0x7de

    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->setResult(ILandroid/content/Intent;)V

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    const-string v1, "com.yf.gattlib.intent.action.ACTION_UPDATE_WHITE_APP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/a/a;->b(Landroid/content/Intent;)V

    .line 136
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->finish()V

    .line 137
    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$a;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->h:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$a;

    return-object v0
.end method

.method private d()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/commons/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 164
    new-instance v3, Lcom/yf/smart/weloopx/commons/b;

    invoke-direct {v3}, Lcom/yf/smart/weloopx/commons/b;-><init>()V

    .line 165
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-virtual {v3, v4}, Lcom/yf/smart/weloopx/commons/b;->b(Ljava/lang/String;)V

    .line 168
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " app\u540d\u79f0 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v3, v0}, Lcom/yf/smart/weloopx/commons/b;->a(Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->a(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/yf/smart/weloopx/commons/b;->a(Z)V

    .line 173
    const-string v5, "com"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 179
    iget-object v4, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->j:Lcom/yf/smart/weloopx/commons/h;

    invoke-virtual {v4, v0}, Lcom/yf/smart/weloopx/commons/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_1
    return-object v1
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->g:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->requestWindowFeature(I)Z

    .line 55
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->setContentView(I)V

    .line 57
    invoke-direct {p0}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->a()V

    .line 58
    invoke-direct {p0}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->b()V

    .line 59
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 66
    return-void
.end method
