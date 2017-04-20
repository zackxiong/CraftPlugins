.class Lcom/yf/smart/weloopx/android/ui/activities/z$a;
.super Lcom/yf/gattlib/m/a/a;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/ui/activities/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method private constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 0

    .prologue
    .line 1803
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z$a;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-direct {p0}, Lcom/yf/gattlib/m/a/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/smart/weloopx/android/ui/activities/aa;)V
    .locals 0

    .prologue
    .line 1803
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z$a;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    .line 1823
    if-nez p2, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z$a;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030062

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1826
    :cond_0
    const v0, 0x7f0d016c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1827
    const v1, 0x7f0d016d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1828
    const v2, 0x7f0d016b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1829
    const v3, 0x7f0d020d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1831
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z$a;->a(I)Lcom/yf/gattlib/m/a/b;

    move-result-object v5

    .line 1832
    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/z$a;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v4, v5}, Lcom/yf/smart/weloopx/android/ui/activities/z;->b(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/gattlib/m/a/b;)Ljava/lang/String;

    move-result-object v4

    .line 1833
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1834
    iget-object v4, v5, Lcom/yf/gattlib/m/a/b;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1836
    :cond_1
    invoke-static {v4}, Lcom/yf/smart/weloopx/c/w;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1837
    invoke-static {v6}, Lcom/yf/smart/weloopx/c/v;->a(Ljava/lang/String;)Lcom/yf/smart/weloopx/c/v;

    move-result-object v6

    .line 1838
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1840
    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/z$a;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v4, v5}, Lcom/yf/smart/weloopx/android/ui/activities/z;->c(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/gattlib/m/a/b;)Z

    move-result v8

    .line 1841
    if-eqz v8, :cond_2

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/z$a;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v4}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x7f0c000c

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1842
    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1843
    invoke-virtual {v6}, Lcom/yf/smart/weloopx/c/v;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1844
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1845
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v7, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1846
    invoke-virtual {v6}, Lcom/yf/smart/weloopx/c/v;->c()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1847
    if-eqz v8, :cond_3

    const v0, 0x7f0200a9

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1848
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1849
    return-object p2

    .line 1841
    :cond_2
    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/z$a;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v4}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x7f0c00a9

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    goto :goto_0

    .line 1847
    :cond_3
    const v0, 0x7f0200b4

    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z$a;->a:Ljava/util/List;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/cd;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/cd;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z$a;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1818
    invoke-super {p0}, Lcom/yf/gattlib/m/a/a;->notifyDataSetChanged()V

    .line 1819
    return-void
.end method
