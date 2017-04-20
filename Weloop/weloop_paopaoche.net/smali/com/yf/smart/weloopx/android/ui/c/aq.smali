.class public Lcom/yf/smart/weloopx/android/ui/c/aq;
.super Lcom/yf/smart/weloopx/android/ui/c/a;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/FragmentManager;)Z
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/c/aq;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0

    .line 24
    :cond_0
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/aq;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/android/ui/c/aq;-><init>()V

    .line 25
    const-string v1, "fet"

    invoke-static {v0, p0, v1}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 26
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static e()Z
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/aq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 41
    const v1, 0x7f0d021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/c/ar;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/c/ar;-><init>(Lcom/yf/smart/weloopx/android/ui/c/aq;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-object v0
.end method
