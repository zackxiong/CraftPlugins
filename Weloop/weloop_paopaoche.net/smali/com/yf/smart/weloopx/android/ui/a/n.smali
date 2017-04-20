.class public Lcom/yf/smart/weloopx/android/ui/a/n;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/a/n$b;,
        Lcom/yf/smart/weloopx/android/ui/a/n$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Landroid/graphics/Typeface;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/RemindersModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/yf/smart/weloopx/data/i;

.field private f:Lcom/yf/smart/weloopx/android/ui/a/n$a;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/yf/smart/weloopx/android/ui/a/n$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/RemindersModel;",
            ">;",
            "Lcom/yf/smart/weloopx/android/ui/a/n$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    const-string v0, "ReminderAdapter"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->a:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->g:Z

    .line 37
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->b:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->d:Ljava/util/List;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/diy.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->c:Landroid/graphics/Typeface;

    .line 41
    new-instance v0, Lcom/yf/smart/weloopx/data/i;

    invoke-direct {v0, p1}, Lcom/yf/smart/weloopx/data/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->e:Lcom/yf/smart/weloopx/data/i;

    .line 42
    iput-object p3, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->f:Lcom/yf/smart/weloopx/android/ui/a/n$a;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/a/n;Lcom/yf/smart/weloopx/data/models/RemindersModel;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/a/n;->a(Lcom/yf/smart/weloopx/data/models/RemindersModel;)V

    return-void
.end method

.method private a(Lcom/yf/smart/weloopx/data/models/RemindersModel;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->e:Lcom/yf/smart/weloopx/data/i;

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/i;->c(Lcom/yf/smart/weloopx/data/models/RemindersModel;)V

    .line 133
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->f:Lcom/yf/smart/weloopx/android/ui/a/n$a;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/android/ui/a/n$a;->a()V

    .line 134
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/RemindersModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/a/n;->notifyDataSetChanged()V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->d:Ljava/util/List;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->g:Z

    .line 65
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 91
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 96
    .line 97
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/RemindersModel;

    .line 98
    if-nez p2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030040

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 101
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/a/n$b;

    invoke-direct {v2, v3}, Lcom/yf/smart/weloopx/android/ui/a/n$b;-><init>(Lcom/yf/smart/weloopx/android/ui/a/o;)V

    .line 102
    const v1, 0x7f0d0173

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/yf/smart/weloopx/android/ui/a/n$b;->a(Lcom/yf/smart/weloopx/android/ui/a/n$b;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 103
    const v1, 0x7f0d016f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/yf/smart/weloopx/android/ui/a/n$b;->a(Lcom/yf/smart/weloopx/android/ui/a/n$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 104
    const v1, 0x7f0d0171

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/yf/smart/weloopx/android/ui/a/n$b;->b(Lcom/yf/smart/weloopx/android/ui/a/n$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 107
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 111
    :goto_0
    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/a/n$b;->a(Lcom/yf/smart/weloopx/android/ui/a/n$b;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->c:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/a/n$b;->a(Lcom/yf/smart/weloopx/android/ui/a/n$b;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/a/n$b;->b(Lcom/yf/smart/weloopx/android/ui/a/n$b;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/a/n$b;->b(Lcom/yf/smart/weloopx/android/ui/a/n$b;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-boolean v2, p0, Lcom/yf/smart/weloopx/android/ui/a/n;->g:Z

    if-eqz v2, :cond_1

    .line 117
    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/a/n$b;->c(Lcom/yf/smart/weloopx/android/ui/a/n$b;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    :goto_1
    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/a/n$b;->c(Lcom/yf/smart/weloopx/android/ui/a/n$b;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/a/o;

    invoke-direct {v2, p0, v0}, Lcom/yf/smart/weloopx/android/ui/a/o;-><init>(Lcom/yf/smart/weloopx/android/ui/a/n;Lcom/yf/smart/weloopx/data/models/RemindersModel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-object p2

    .line 109
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/android/ui/a/n$b;

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/a/n$b;->c(Lcom/yf/smart/weloopx/android/ui/a/n$b;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
