.class public Lcom/yf/smart/weloopx/android/ui/c/ck;
.super Lcom/yf/smart/weloopx/android/ui/c/av;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/yf/smart/weloopx/android/ui/c/ah$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/c/ck$a;
    }
.end annotation


# instance fields
.field private b:Landroid/app/DialogFragment;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/av;-><init>()V

    .line 117
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ck;->f:[Ljava/lang/String;

    .line 138
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/ck;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ck;->c:I

    return v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/c/ck;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ck;->f:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ck;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a2

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 49
    const v0, 0x7f0d0106

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 50
    const v0, 0x7f0d02cb

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 51
    const v0, 0x7f0d016e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/ck;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v0, 0x7f0d00bf

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/c/cl;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/c/cl;-><init>(Lcom/yf/smart/weloopx/android/ui/c/ck;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x7f0d02a7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ck;->g:Landroid/widget/ListView;

    .line 61
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/c/ck$a;

    invoke-direct {v2, p0, v4}, Lcom/yf/smart/weloopx/android/ui/c/ck$a;-><init>(Lcom/yf/smart/weloopx/android/ui/c/ck;Lcom/yf/smart/weloopx/android/ui/c/cl;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ck;->c:I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 63
    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ck;->c:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 64
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/c/cm;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/c/cm;-><init>(Lcom/yf/smart/weloopx/android/ui/c/ck;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    return-object v1
.end method

.method protected a(Landroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/av;->a(Landroid/app/Dialog;)V

    .line 79
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/cn;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/cn;-><init>(Lcom/yf/smart/weloopx/android/ui/c/ck;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 90
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method protected a([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/ck;->f:[Ljava/lang/String;

    .line 126
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/ck;->d:Ljava/lang/String;

    .line 28
    return-void
.end method

.method protected d(I)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/c/ck;->c:I

    .line 24
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/ck;->e:Ljava/lang/String;

    .line 32
    return-void
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ck;->b()V

    .line 94
    return-void
.end method

.method protected e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ck;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yf/smart/weloopx/android/ui/c/az;->a(Landroid/app/FragmentManager;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ck;->b:Landroid/app/DialogFragment;

    .line 108
    return-void
.end method

.method protected f()V
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ck;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "select"

    const v2, 0x7f07023c

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/c/ck;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ck;->b:Landroid/app/DialogFragment;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 112
    return-void
.end method

.method protected h()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ck;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 131
    return-void
.end method
