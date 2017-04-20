.class Lcom/yf/smart/weloopx/android/ui/activities/gi;
.super Lcom/yf/smart/weloopx/android/ui/widget/u;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gi;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/widget/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gi;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public a(ILandroid/view/View;Z)V
    .locals 3

    .prologue
    .line 148
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gi;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p3, :cond_1

    const v1, 0x7f0c00b1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gi;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p3, :cond_2

    const v0, 0x7f0c00b0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 152
    if-eqz p3, :cond_0

    .line 153
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gi;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->a(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$b;

    .line 154
    iget v1, v0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$b;->a:I

    if-eqz v1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gi;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->c:Landroid/widget/TextView;

    iget v2, v0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$b;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 160
    :goto_2
    iget-boolean v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$b;->d:Z

    if-eqz v0, :cond_5

    .line 161
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gi;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    :cond_0
    :goto_3
    return-void

    .line 148
    :cond_1
    const v1, 0x7f0c00af

    goto :goto_0

    .line 150
    :cond_2
    const v0, 0x7f0c00ae

    goto :goto_1

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gi;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;

    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gi;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->c(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0702d8

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_4
    const v1, 0x7f07016f

    goto :goto_4

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gi;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gi;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;

    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gi;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->c(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f02006e

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_3

    :cond_6
    const v0, 0x7f02007e

    goto :goto_5
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 172
    if-nez p2, :cond_0

    .line 173
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gi;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030094

    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 177
    :cond_0
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 178
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gi;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->a(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$b;

    iget v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$b;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 179
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gi;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 180
    return-object p2
.end method
