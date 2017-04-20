.class public Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$a;,
        Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$b;
    }
.end annotation


# instance fields
.field private a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:[I

.field private d:Lcom/yf/smart/weloopx/android/ui/widget/u;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->c:[I

    .line 78
    return-void

    .line 52
    :array_0
    .array-data 4
        0x7f0702cb
        0x7f0702c8
        0x7f0702c9
        0x7f0702c7
        0x7f0702ca
    .end array-data
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;)[I
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->c:[I

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->requestWindowFeature(I)Z

    .line 30
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->setContentView(I)V

    .line 32
    const v0, 0x7f0d016e

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 33
    const v1, 0x7f0702c6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 34
    const v0, 0x7f0d00bf

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/hh;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/hh;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v0, 0x7f0d02cb

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    const v0, 0x7f0d013c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    .line 44
    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->b:Landroid/support/v4/view/ViewPager;

    .line 45
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->b:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$b;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$b;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;Landroid/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/ag;)V

    .line 47
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$a;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;Lcom/yf/smart/weloopx/android/ui/activities/hh;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->d:Lcom/yf/smart/weloopx/android/ui/widget/u;

    .line 48
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->b:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->d:Lcom/yf/smart/weloopx/android/ui/widget/u;

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->a(Landroid/support/v4/view/ViewPager;Lcom/yf/smart/weloopx/android/ui/widget/u;)V

    .line 49
    return-void
.end method
