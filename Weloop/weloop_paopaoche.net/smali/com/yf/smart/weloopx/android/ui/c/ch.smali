.class public Lcom/yf/smart/weloopx/android/ui/c/ch;
.super Lcom/yf/smart/weloopx/android/ui/c/ck;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/ck;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/ch;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/android/ui/c/ch;-><init>()V

    .line 20
    const-string v1, "motion"

    invoke-static {v0, p0, v1}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 21
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 47
    if-nez p2, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ch;->b()V

    .line 79
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ch;->h()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 52
    const v1, 0x7f070253

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/c/ch;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/c/ch;->e(Ljava/lang/String;)V

    .line 53
    new-instance v1, Lcom/yf/gattlib/client/b/ao;

    int-to-byte v2, v0

    invoke-direct {v1, v2}, Lcom/yf/gattlib/client/b/ao;-><init>(B)V

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/c/ci;

    invoke-direct {v2, p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ci;-><init>(Lcom/yf/smart/weloopx/android/ui/c/ch;I)V

    invoke-virtual {v1, v2}, Lcom/yf/gattlib/client/b/ao;->b(Lcom/yf/gattlib/client/b/a/c;)Lcom/yf/gattlib/client/b/e;

    goto :goto_0
.end method

.method protected e()V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ch;->h()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/client/d;->c()B

    move-result v1

    if-ne v0, v1, :cond_0

    .line 39
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/ck;->e()V

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ch;->f()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/ck;->onAttach(Landroid/app/Activity;)V

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f070230

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/c/ch;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f070232

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/c/ch;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f070231

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/c/ch;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ch;->a([Ljava/lang/String;)V

    .line 31
    const v0, 0x7f070173

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ch;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ch;->d(Ljava/lang/String;)V

    .line 32
    const-string v0, "motion"

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ch;->c(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->c()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ch;->d(I)V

    .line 34
    return-void
.end method
