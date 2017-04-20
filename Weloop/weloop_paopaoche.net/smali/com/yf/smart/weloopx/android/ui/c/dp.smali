.class public Lcom/yf/smart/weloopx/android/ui/c/dp;
.super Lcom/yf/smart/weloopx/android/ui/c/j;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/c/dp$a;
    }
.end annotation


# instance fields
.field private b:Lcom/yf/smart/weloopx/android/ui/c/dp$a;

.field private c:I

.field private d:Lcom/yf/smart/weloopx/g/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/j;-><init>()V

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/dp;)Lcom/yf/smart/weloopx/android/ui/c/dp$a;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dp;->b:Lcom/yf/smart/weloopx/android/ui/c/dp$a;

    return-object v0
.end method

.method public static a(Landroid/app/FragmentManager;I)V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    const-string v1, "1"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/dp;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/dp;-><init>()V

    .line 31
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/dp;->setArguments(Landroid/os/Bundle;)V

    .line 33
    const-string v0, "wfd"

    invoke-static {v1, p0, v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 34
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dp;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const v0, 0x7f07017c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dp;->a(I)V

    .line 53
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dp;->b()V

    .line 73
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/dp;->f()Lcom/yf/smart/weloopx/data/models/DownloadWatchfaceListParams;

    move-result-object v1

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/c/dq;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/c/dq;-><init>(Lcom/yf/smart/weloopx/android/ui/c/dp;)V

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/b/c;->a(Lcom/yf/smart/weloopx/data/models/DownloadWatchfaceListParams;Lcom/yf/smart/weloopx/b/b/f;)V

    goto :goto_0
.end method

.method private f()Lcom/yf/smart/weloopx/data/models/DownloadWatchfaceListParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 76
    new-instance v0, Lcom/yf/smart/weloopx/data/models/DownloadWatchfaceListParams;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/models/DownloadWatchfaceListParams;-><init>()V

    .line 77
    const/16 v1, 0x3e8

    iput v1, v0, Lcom/yf/smart/weloopx/data/models/DownloadWatchfaceListParams;->pageSize:I

    .line 78
    iput v2, v0, Lcom/yf/smart/weloopx/data/models/DownloadWatchfaceListParams;->pageNum:I

    .line 79
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/a;->b(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/yf/smart/weloopx/data/models/DownloadWatchfaceListParams;->releaseType:I

    .line 80
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dp;->c:I

    packed-switch v1, :pswitch_data_0

    .line 103
    :goto_0
    return-object v0

    .line 82
    :pswitch_0
    iput-object v3, v0, Lcom/yf/smart/weloopx/data/models/DownloadWatchfaceListParams;->watchClass:Ljava/lang/String;

    .line 83
    const/4 v1, 0x2

    iput v1, v0, Lcom/yf/smart/weloopx/data/models/DownloadWatchfaceListParams;->orderFlag:I

    goto :goto_0

    .line 86
    :pswitch_1
    iput-object v3, v0, Lcom/yf/smart/weloopx/data/models/DownloadWatchfaceListParams;->watchClass:Ljava/lang/String;

    .line 87
    iput v2, v0, Lcom/yf/smart/weloopx/data/models/DownloadWatchfaceListParams;->orderFlag:I

    goto :goto_0

    .line 90
    :pswitch_2
    const-string v1, "01"

    iput-object v1, v0, Lcom/yf/smart/weloopx/data/models/DownloadWatchfaceListParams;->watchClass:Ljava/lang/String;

    .line 91
    iput v2, v0, Lcom/yf/smart/weloopx/data/models/DownloadWatchfaceListParams;->orderFlag:I

    goto :goto_0

    .line 94
    :pswitch_3
    const-string v1, "00"

    iput-object v1, v0, Lcom/yf/smart/weloopx/data/models/DownloadWatchfaceListParams;->watchClass:Ljava/lang/String;

    .line 95
    iput v2, v0, Lcom/yf/smart/weloopx/data/models/DownloadWatchfaceListParams;->orderFlag:I

    goto :goto_0

    .line 98
    :pswitch_4
    const-string v1, "02"

    iput-object v1, v0, Lcom/yf/smart/weloopx/data/models/DownloadWatchfaceListParams;->watchClass:Ljava/lang/String;

    .line 99
    iput v2, v0, Lcom/yf/smart/weloopx/data/models/DownloadWatchfaceListParams;->orderFlag:I

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x7f0702c7
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/j;->onAttach(Landroid/app/Activity;)V

    .line 43
    new-instance v0, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dp;->d:Lcom/yf/smart/weloopx/g/d;

    .line 44
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/c/dp$a;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dp;->b:Lcom/yf/smart/weloopx/android/ui/c/dp$a;

    .line 45
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dp;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dp;->c:I

    .line 46
    const v0, 0x7f0700e2

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dp;->c(Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/dp;->e()V

    .line 48
    return-void
.end method
