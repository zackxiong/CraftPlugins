.class public Lcom/yf/smart/weloopx/android/ui/a/q;
.super Lcom/yf/smart/weloopx/android/ui/a/s;
.source "ProGuard"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/LoaderManager;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/a/s;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SleepMonth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/android/ui/b/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {p1}, Lcom/yf/smart/weloopx/g/f;->a(Ljava/lang/String;)I

    move-result v0

    .line 31
    neg-int v0, v0

    :goto_0
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 32
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/b/a;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/b/a;-><init>()V

    .line 33
    invoke-static {v0}, Lcom/yf/smart/weloopx/g/f;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/b/a;->a(I)V

    .line 34
    invoke-static {v0}, Lcom/yf/smart/weloopx/g/f;->c(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/b/a;->b(Ljava/util/List;)V

    .line 35
    invoke-static {v0}, Lcom/yf/smart/weloopx/g/f;->e(I)Lcom/yf/smart/weloopx/data/models/SleepStatistics;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/b/a;->a(Lcom/yf/smart/weloopx/data/models/SleepStatistics;)V

    .line 36
    add-int/lit8 v2, v0, -0x1

    invoke-static {v2}, Lcom/yf/smart/weloopx/g/f;->e(I)Lcom/yf/smart/weloopx/data/models/SleepStatistics;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/b/a;->b(Lcom/yf/smart/weloopx/data/models/SleepStatistics;)V

    .line 37
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/a/q;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/yf/smart/weloopx/g/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/b/a;->b(Ljava/lang/String;)V

    .line 38
    invoke-static {v0}, Lcom/yf/smart/weloopx/g/f;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/b/a;->a(Ljava/lang/String;)V

    .line 39
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/a/q;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 54
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/a/q;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/yf/smart/weloopx/android/ui/b/a;

    .line 55
    const v0, 0x7f0d02ad

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    invoke-virtual {v5}, Lcom/yf/smart/weloopx/android/ui/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const v0, 0x7f0d02ae

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;

    .line 58
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/a/q;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v5}, Lcom/yf/smart/weloopx/android/ui/b/a;->h()Ljava/util/List;

    move-result-object v2

    const v3, 0x443b8000    # 750.0f

    invoke-virtual {v5}, Lcom/yf/smart/weloopx/android/ui/b/a;->c()I

    move-result v4

    invoke-virtual {v5}, Lcom/yf/smart/weloopx/android/ui/b/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/widget/f;->d(Landroid/content/Context;Lcom/yf/smart/weloopx/android/ui/widget/ChartView;Ljava/util/List;FILjava/lang/String;)V

    .line 65
    return-object v6
.end method
