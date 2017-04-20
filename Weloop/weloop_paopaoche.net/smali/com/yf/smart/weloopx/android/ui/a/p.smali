.class public Lcom/yf/smart/weloopx/android/ui/a/p;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/a/p$1;,
        Lcom/yf/smart/weloopx/android/ui/a/p$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    const-string v0, "RunningTrainingAdapter"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/p;->a:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/a/p;->b:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/a/p;->c:Ljava/util/List;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/diy.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/p;->d:Landroid/graphics/Typeface;

    .line 36
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/p;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/p;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const v9, 0x7f07029f

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 55
    .line 56
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/p;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;

    .line 57
    const-string v1, "-1"

    iget-object v2, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 58
    if-nez p2, :cond_0

    .line 59
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/a/p;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030099

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/a/p$a;

    invoke-direct {v2, v4}, Lcom/yf/smart/weloopx/android/ui/a/p$a;-><init>(Lcom/yf/smart/weloopx/android/ui/a/p$1;)V

    .line 61
    const v1, 0x7f0d0299

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/yf/smart/weloopx/android/ui/a/p$a;->a(Lcom/yf/smart/weloopx/android/ui/a/p$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 62
    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/a/p$a;->a(Lcom/yf/smart/weloopx/android/ui/a/p$a;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/a/p;->d:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    const v1, 0x7f0d029a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/yf/smart/weloopx/android/ui/a/p$a;->b(Lcom/yf/smart/weloopx/android/ui/a/p$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 64
    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/a/p$a;->b(Lcom/yf/smart/weloopx/android/ui/a/p$a;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/a/p;->d:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    const v1, 0x7f0d0297

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/yf/smart/weloopx/android/ui/a/p$a;->c(Lcom/yf/smart/weloopx/android/ui/a/p$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 66
    const v1, 0x7f0d0298

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/yf/smart/weloopx/android/ui/a/p$a;->d(Lcom/yf/smart/weloopx/android/ui/a/p$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 67
    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/a/p$a;->c(Lcom/yf/smart/weloopx/android/ui/a/p$a;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/a/p;->d:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    const v1, 0x7f0d029c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/yf/smart/weloopx/android/ui/a/p$a;->e(Lcom/yf/smart/weloopx/android/ui/a/p$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 69
    const v1, 0x7f0d029d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/yf/smart/weloopx/android/ui/a/p$a;->f(Lcom/yf/smart/weloopx/android/ui/a/p$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 70
    const v1, 0x7f0d0295

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v2, Lcom/yf/smart/weloopx/android/ui/a/p$a;->a:Landroid/widget/RelativeLayout;

    .line 71
    const v1, 0x7f0d029b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v2, Lcom/yf/smart/weloopx/android/ui/a/p$a;->b:Landroid/widget/RelativeLayout;

    .line 72
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 76
    :goto_0
    if-eqz v3, :cond_1

    .line 77
    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/a/p$a;->a(Lcom/yf/smart/weloopx/android/ui/a/p$a;)Landroid/widget/TextView;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/a/p$a;->b(Lcom/yf/smart/weloopx/android/ui/a/p$a;)Landroid/widget/TextView;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/a/p$a;->d(Lcom/yf/smart/weloopx/android/ui/a/p$a;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->time:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/a/p$a;->e(Lcom/yf/smart/weloopx/android/ui/a/p$a;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->distance:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/a/p;->b:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/a/p$a;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 82
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/a/p$a;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 91
    :goto_1
    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/a/p$a;->f(Lcom/yf/smart/weloopx/android/ui/a/p$a;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->happenDate:Ljava/lang/String;

    const-string v5, "-"

    const-string v6, "/"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/a/p$a;->c(Lcom/yf/smart/weloopx/android/ui/a/p$a;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->distance:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/p;->b:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-object p2

    .line 74
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/android/ui/a/p$a;

    goto/16 :goto_0

    .line 84
    :cond_1
    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/a/p$a;->a(Lcom/yf/smart/weloopx/android/ui/a/p$a;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/a/p;->b:Landroid/content/Context;

    const v6, 0x7f0701bf

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->ps:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/a/p$a;->b(Lcom/yf/smart/weloopx/android/ui/a/p$a;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/a/p;->b:Landroid/content/Context;

    const v6, 0x7f070270

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->time:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/a/p$a;->d(Lcom/yf/smart/weloopx/android/ui/a/p$a;)Landroid/widget/TextView;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/a/p$a;->e(Lcom/yf/smart/weloopx/android/ui/a/p$a;)Landroid/widget/TextView;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/a/p$a;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 89
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/a/p$a;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 92
    :cond_2
    const-string v0, ""

    goto/16 :goto_2
.end method
