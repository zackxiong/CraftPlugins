.class public Lcom/yf/smart/weloopx/android/ui/c/as;
.super Lcom/yf/smart/weloopx/android/ui/c/a;
.source "ProGuard"


# static fields
.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yf/smart/weloopx/android/ui/c/as;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/FragmentManager;Z)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 26
    sput-boolean p1, Lcom/yf/smart/weloopx/android/ui/c/as;->b:Z

    .line 27
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->k()Lcom/yf/gattlib/client/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/c;->f()Ljava/lang/String;

    move-result-object v6

    .line 29
    const-string v0, "WN02B01"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WeLoop"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Tommy"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    .line 31
    :goto_0
    const-string v3, "BN01L02"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Now"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    move v3, v2

    .line 32
    :goto_1
    const-string v4, "BN01SH02"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "NowC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Now Classic"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    move v4, v2

    .line 34
    :goto_2
    const-string v5, ""

    .line 36
    if-eqz v0, :cond_7

    .line 37
    const-string v0, "V3.38"

    .line 38
    const-string v3, "WN02B01"

    .line 46
    :goto_3
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yf/gattlib/f/b;->k()Lcom/yf/gattlib/client/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yf/gattlib/client/c;->e()Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 64
    :cond_3
    :goto_4
    return v1

    :cond_4
    move v0, v1

    .line 29
    goto :goto_0

    :cond_5
    move v3, v1

    .line 31
    goto :goto_1

    :cond_6
    move v4, v1

    .line 32
    goto :goto_2

    .line 39
    :cond_7
    if-eqz v3, :cond_8

    .line 40
    const-string v0, "V2.00"

    .line 41
    const-string v3, "BN01L02"

    goto :goto_3

    .line 42
    :cond_8
    if-eqz v4, :cond_a

    .line 43
    const-string v0, "V2.00"

    .line 44
    const-string v3, "BN01SH02"

    goto :goto_3

    .line 53
    :cond_9
    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 59
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/as;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/android/ui/c/as;-><init>()V

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    const-string v4, "1"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/as;->setArguments(Landroid/os/Bundle;)V

    .line 63
    const-string v1, "upgrade_tip"

    invoke-static {v0, p0, v1}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    move v1, v2

    .line 64
    goto :goto_4

    :cond_a
    move-object v0, v5

    move-object v3, v6

    goto :goto_3
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 5

    .prologue
    const v4, 0x7f070104

    .line 70
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/as;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 72
    const v0, 0x7f0d021c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 73
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/as;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    const-string v3, "WN02B01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0702c2

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/c/as;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/yf/smart/weloopx/android/ui/c/as;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    :goto_0
    const v0, 0x7f0d021b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/c/at;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/c/at;-><init>(Lcom/yf/smart/weloopx/android/ui/c/as;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-object v1

    .line 77
    :cond_1
    const-string v3, "WN02B01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "WN02B01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f07015b

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/c/as;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/yf/smart/weloopx/android/ui/c/as;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;->onResume()V

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/as;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/au;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/au;-><init>(Lcom/yf/smart/weloopx/android/ui/c/as;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
