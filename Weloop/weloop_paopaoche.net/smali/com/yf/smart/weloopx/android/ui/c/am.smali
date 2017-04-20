.class public Lcom/yf/smart/weloopx/android/ui/c/am;
.super Lcom/yf/smart/weloopx/android/ui/c/j;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/c/am$a;
    }
.end annotation


# instance fields
.field private b:Lcom/yf/smart/weloopx/android/ui/c/am$a;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/j;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/am;)Lcom/yf/smart/weloopx/android/ui/c/am$a;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/am;->b:Lcom/yf/smart/weloopx/android/ui/c/am$a;

    return-object v0
.end method

.method public static a(Landroid/app/FragmentManager;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string v1, "x"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, "y"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/am;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/am;-><init>()V

    .line 40
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/am;->setArguments(Landroid/os/Bundle;)V

    .line 41
    const-string v0, "xx"

    invoke-static {v1, p0, v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 42
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/c/am;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/am;->f()V

    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/c/am;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/am;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 78
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/am;->d:Ljava/lang/String;

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/c/am;->c:I

    new-instance v3, Lcom/yf/smart/weloopx/android/ui/c/an;

    invoke-direct {v3, p0}, Lcom/yf/smart/weloopx/android/ui/c/an;-><init>(Lcom/yf/smart/weloopx/android/ui/c/am;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/yf/smart/weloopx/b/a;->a(Ljava/lang/String;ILcom/yf/smart/weloopx/b/b/c;)V

    .line 99
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 102
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/am;->d:Ljava/lang/String;

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/c/am;->c:I

    new-instance v3, Lcom/yf/smart/weloopx/android/ui/c/ao;

    invoke-direct {v3, p0}, Lcom/yf/smart/weloopx/android/ui/c/ao;-><init>(Lcom/yf/smart/weloopx/android/ui/c/am;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/yf/smart/weloopx/b/a;->a(Ljava/lang/String;ILcom/yf/smart/weloopx/b/b/s;)V

    .line 127
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/j;->onAttach(Landroid/app/Activity;)V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/am;->e:Landroid/os/Handler;

    .line 56
    const v0, 0x7f0700e1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/am;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/am;->c(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/am;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/am;->d:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/am;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "y"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/c/am;->c:I

    .line 59
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/am;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/c/am$a;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/am;->b:Lcom/yf/smart/weloopx/android/ui/c/am$a;

    .line 60
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/am;->e()V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/yf/smart/weloopx/android/ui/c/j;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/yf/lib/squareup/otto/b;->a(Ljava/lang/Object;)V

    .line 68
    return-object v0
.end method

.method public onCustomStatistics(Lcom/yf/smart/weloopx/event/CustomStatisticsEvent;)V
    .locals 1
    .annotation runtime Lcom/yf/lib/squareup/otto/j;
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/ap;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/ap;-><init>(Lcom/yf/smart/weloopx/android/ui/c/am;Lcom/yf/smart/weloopx/event/CustomStatisticsEvent;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/am;->a(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/lib/squareup/otto/b;->b(Ljava/lang/Object;)V

    .line 74
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/j;->onDestroyView()V

    .line 75
    return-void
.end method
