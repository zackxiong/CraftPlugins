.class Lcom/yf/smart/weloopx/android/ui/activities/fr;
.super Lcom/yf/smart/weloopx/android/ui/widget/u;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/fp;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/fp;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fr;->a:Lcom/yf/smart/weloopx/android/ui/activities/fp;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/widget/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fr;->a:Lcom/yf/smart/weloopx/android/ui/activities/fp;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/fp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public a(ILandroid/view/View;Z)V
    .locals 3

    .prologue
    .line 98
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fr;->a:Lcom/yf/smart/weloopx/android/ui/activities/fp;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/fp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p3, :cond_0

    const v1, 0x7f0c00b1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fr;->a:Lcom/yf/smart/weloopx/android/ui/activities/fp;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/fp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p3, :cond_1

    const v0, 0x7f0c00b0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 102
    return-void

    .line 98
    :cond_0
    const v1, 0x7f0c00af

    goto :goto_0

    .line 100
    :cond_1
    const v0, 0x7f0c00ae

    goto :goto_1
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 106
    if-nez p2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fr;->a:Lcom/yf/smart/weloopx/android/ui/activities/fp;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/fp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030094

    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 110
    :cond_0
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 111
    if-nez p1, :cond_1

    const v1, 0x7f07015f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fr;->a:Lcom/yf/smart/weloopx/android/ui/activities/fp;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/fp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 113
    return-object p2

    .line 111
    :cond_1
    const v1, 0x7f07010d

    goto :goto_0
.end method
