.class public Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;
.super Landroid/app/Activity;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yf/smart/weloopx/android/ui/c/am$a;
.implements Lcom/yf/smart/weloopx/android/ui/c/co$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$a;,
        Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$b;
    }
.end annotation


# instance fields
.field a:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017d
    .end annotation
.end field

.field b:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017e
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d016e
    .end annotation
.end field

.field d:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d013c
    .end annotation
.end field

.field e:Landroid/support/v4/view/ViewPager;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d001d
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Lcom/yf/smart/weloopx/android/ui/widget/u;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const-string v0, "StatisticsActivity"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->f:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->g:Ljava/util/List;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->h:Z

    .line 134
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/gi;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/gi;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->i:Lcom/yf/smart/weloopx/android/ui/widget/u;

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->f:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->d()V

    .line 88
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 91
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->g:Ljava/util/List;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$b;

    const v2, 0x7f070042

    const-class v3, Lcom/yf/smart/weloopx/android/ui/c/cu;

    invoke-direct {v1, v4, v2, v3, v4}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$b;-><init>(IILjava/lang/Class;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->g:Ljava/util/List;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$b;

    const v2, 0x7f070225

    const-class v3, Lcom/yf/smart/weloopx/android/ui/c/cv;

    invoke-direct {v1, v4, v2, v3, v4}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$b;-><init>(IILjava/lang/Class;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v0

    sget-object v1, Lcom/yf/smart/weloopx/d/c;->d:Lcom/yf/smart/weloopx/d/c;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->g:Ljava/util/List;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v4, v2}, Lcom/yf/smart/weloopx/d/a;->a(Lcom/yf/smart/weloopx/d/c;I[Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->c:Landroid/widget/TextView;

    const v1, 0x7f0702d8

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->a:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->b:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->b:Landroid/widget/Button;

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 99
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->e:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$a;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$a;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;Landroid/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/ag;)V

    .line 101
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->d:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->e:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->i:Lcom/yf/smart/weloopx/android/ui/widget/u;

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->a(Landroid/support/v4/view/ViewPager;Lcom/yf/smart/weloopx/android/ui/widget/u;)V

    .line 102
    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->h:Z

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "yyyy-MM-dd"

    invoke-static {v1}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/am;->a(Landroid/app/FragmentManager;Ljava/lang/String;I)V

    .line 188
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->h:Z

    .line 211
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->h:Z

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->c:Landroid/widget/TextView;

    const v2, 0x7f0702d8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 213
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->b:Landroid/widget/Button;

    const v2, 0x7f02006e

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 219
    :goto_1
    invoke-static {}, Lcom/yf/lib/a/b;->a()Lcom/yf/lib/a/b;

    move-result-object v0

    const-string v2, "statistics_changed"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/yf/lib/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    return-void

    :cond_0
    move v0, v1

    .line 210
    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->c:Landroid/widget/TextView;

    const v2, 0x7f07016f

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->b:Landroid/widget/Button;

    const v2, 0x7f02007e

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->f:Ljava/lang/String;

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

    .line 193
    invoke-static {}, Lcom/yf/lib/a/b;->a()Lcom/yf/lib/a/b;

    move-result-object v0

    const-string v1, "statistics_changed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yf/lib/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->h:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 206
    :goto_0
    return-void

    .line 200
    :pswitch_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->finish()V

    goto :goto_0

    .line 203
    :pswitch_1
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->e()V

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x7f0d017d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->requestWindowFeature(I)Z

    .line 79
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->setContentView(I)V

    .line 80
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 81
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->b()V

    .line 82
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->c()V

    .line 83
    return-void
.end method
