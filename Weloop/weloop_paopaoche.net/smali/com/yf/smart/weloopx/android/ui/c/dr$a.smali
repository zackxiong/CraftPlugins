.class Lcom/yf/smart/weloopx/android/ui/c/dr$a;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/ui/c/dr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/dr;


# direct methods
.method private constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/dr;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/dr$a;->a:Lcom/yf/smart/weloopx/android/ui/c/dr;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/dr;Lcom/yf/smart/weloopx/android/ui/c/ds;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/dr$a;-><init>(Lcom/yf/smart/weloopx/android/ui/c/dr;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dr$a;->a:Lcom/yf/smart/weloopx/android/ui/c/dr;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/dr;->b(Lcom/yf/smart/weloopx/android/ui/c/dr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dr$a;->a:Lcom/yf/smart/weloopx/android/ui/c/dr;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/dr;->b(Lcom/yf/smart/weloopx/android/ui/c/dr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 136
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 142
    if-nez p2, :cond_0

    .line 143
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dr$a;->a:Lcom/yf/smart/weloopx/android/ui/c/dr;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/dr;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dr$a;->a:Lcom/yf/smart/weloopx/android/ui/c/dr;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/dr;->b(Lcom/yf/smart/weloopx/android/ui/c/dr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/Watchface;

    .line 147
    const v1, 0x7f0d02d3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 148
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Watchface;->getWatchName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const v1, 0x7f0d02d0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 151
    invoke-static {}, Lcom/yf/smart/weloopx/f/a;->b()Lcom/b/a/a;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Watchface;->getWatchfaceImageURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/b/a/a;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 154
    return-object p2
.end method
