.class public Lcom/yf/smart/weloopx/android/ui/a/a;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:[Z

.field private d:Ljava/lang/String;

.field private e:Landroid/view/View$OnClickListener;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    const-string v0, "ActivityLabelAdapter"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/a;->d:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/a/b;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/a/b;-><init>(Lcom/yf/smart/weloopx/android/ui/a/a;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/a;->e:Landroid/view/View$OnClickListener;

    .line 84
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/a/c;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/a/c;-><init>(Lcom/yf/smart/weloopx/android/ui/a/a;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/a;->f:Landroid/view/View$OnClickListener;

    .line 25
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/a/a;->a:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/a/a;->b:Ljava/util/List;

    .line 27
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/a;->c:[Z

    .line 28
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/a/a;->c:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/a/a;)[Z
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/a;->c:[Z

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 50
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/Activity;

    .line 52
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/a/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    move v6, v2

    .line 53
    :goto_0
    if-nez p2, :cond_4

    .line 54
    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/a/a;->a:Landroid/content/Context;

    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_2

    move v4, v2

    :goto_1
    if-nez v6, :cond_3

    move v1, v2

    :goto_2
    invoke-static {v5, v0, v4, v1}, Lcom/yf/smart/weloopx/android/ui/widget/l;->a(Landroid/content/Context;Lcom/yf/smart/weloopx/data/models/Activity;ZZ)Lcom/yf/smart/weloopx/android/ui/widget/i;

    move-result-object v1

    .line 59
    :goto_3
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getType()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Activity;->getType()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_8

    :cond_0
    move-object v0, v1

    .line 60
    check-cast v0, Lcom/yf/smart/weloopx/android/ui/widget/i;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/a/a;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq p1, v4, :cond_7

    :goto_4
    invoke-virtual {v0, v3, v2}, Lcom/yf/smart/weloopx/android/ui/widget/i;->a(ZZ)V

    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/a;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    :goto_5
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    return-object v1

    :cond_1
    move v6, v3

    .line 52
    goto :goto_0

    :cond_2
    move v4, v3

    .line 54
    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    .line 56
    :cond_4
    iget-object v7, p0, Lcom/yf/smart/weloopx/android/ui/a/a;->a:Landroid/content/Context;

    move-object v1, p2

    check-cast v1, Lcom/yf/smart/weloopx/android/ui/widget/i;

    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_5

    move v5, v2

    :goto_6
    if-nez v6, :cond_6

    move v4, v2

    :goto_7
    invoke-static {v7, v1, v0, v5, v4}, Lcom/yf/smart/weloopx/android/ui/widget/l;->a(Landroid/content/Context;Lcom/yf/smart/weloopx/android/ui/widget/i;Lcom/yf/smart/weloopx/data/models/Activity;ZZ)V

    move-object v1, p2

    goto :goto_3

    :cond_5
    move v5, v3

    goto :goto_6

    :cond_6
    move v4, v3

    goto :goto_7

    :cond_7
    move v2, v3

    .line 60
    goto :goto_4

    :cond_8
    move-object v0, v1

    .line 63
    check-cast v0, Lcom/yf/smart/weloopx/android/ui/widget/i;

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/a/a;->c:[Z

    aget-boolean v4, v4, p1

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/a/a;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq p1, v5, :cond_9

    :goto_8
    invoke-virtual {v0, v4, v2}, Lcom/yf/smart/weloopx/android/ui/widget/i;->a(ZZ)V

    .line 64
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/a;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_9
    move v2, v3

    .line 63
    goto :goto_8
.end method
