.class Lcom/yf/smart/weloopx/android/ui/c/bt$a;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/ui/c/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/bt;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/RankingUser;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method private constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/bt;)V
    .locals 1

    .prologue
    .line 235
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bt$a;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/bt;Lcom/yf/smart/weloopx/android/ui/c/bu;)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/bt$a;-><init>(Lcom/yf/smart/weloopx/android/ui/c/bt;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/RankingUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bt$a;->b:Ljava/util/List;

    .line 245
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/bt$a;->notifyDataSetChanged()V

    .line 246
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt$a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 263
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 268
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bt$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/RankingUser;

    .line 270
    if-nez p2, :cond_0

    .line 271
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bt$a;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/c/bt;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030092

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 274
    :cond_0
    invoke-static {p2}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v1

    .line 276
    const/4 v2, 0x3

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/bt$a;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/android/ui/c/bt;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 277
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->d:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/bt$a;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/c/bt;->h(Lcom/yf/smart/weloopx/android/ui/c/bt;)[I

    move-result-object v3

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 284
    :goto_0
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/RankingUser;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/bt$a;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    const v4, 0x7f07026b

    invoke-virtual {v3, v4}, Lcom/yf/smart/weloopx/android/ui/c/bt;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/bt$a;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/RankingUser;->getCalorie()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yf/smart/weloopx/android/ui/c/bt;->a(Lcom/yf/smart/weloopx/android/ui/c/bt;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/bt$a;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/android/ui/c/bt;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07013c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    iget-object v3, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 288
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/bt$a;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/c/bt;->i(Lcom/yf/smart/weloopx/android/ui/c/bt;)Lcom/b/a/a;

    move-result-object v2

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/RankingUser;->getHeadPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/b/a/a;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 289
    return-object p2

    .line 280
    :cond_1
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->d:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0
.end method
