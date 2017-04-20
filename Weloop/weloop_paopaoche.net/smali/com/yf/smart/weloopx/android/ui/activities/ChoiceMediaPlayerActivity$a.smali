.class Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;


# direct methods
.method private constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;Lcom/yf/smart/weloopx/android/ui/activities/u;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 170
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 176
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 178
    if-nez p2, :cond_0

    .line 179
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030044

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 182
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-direct {v2, v1}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)V

    .line 183
    const v1, 0x7f0d0185

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;->a:Landroid/widget/TextView;

    .line 185
    const v1, 0x7f0d0182

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;->b:Landroid/widget/TextView;

    .line 187
    const v1, 0x7f0d0183

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;->c:Landroid/widget/TextView;

    .line 189
    const v1, 0x7f0d0184

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;->d:Landroid/widget/TextView;

    .line 191
    const v1, 0x7f0d0187

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;->e:Landroid/widget/ImageView;

    .line 193
    const v1, 0x7f0d0186

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;->f:Landroid/widget/ImageView;

    .line 195
    const v1, 0x7f0d0181

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v2, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;->g:Landroid/widget/RelativeLayout;

    .line 198
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 203
    :goto_0
    if-nez p1, :cond_1

    .line 204
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    :goto_1
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_2

    .line 209
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :goto_2
    const-string v2, "appName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    iget-object v3, v1, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    const-string v2, "image"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 220
    if-eqz v0, :cond_3

    .line 221
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 226
    :goto_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->f(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 227
    iget-object v0, v1, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;->e:Landroid/widget/ImageView;

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 232
    :goto_4
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/y;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/y;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    return-object p2

    .line 200
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;

    goto :goto_0

    .line 206
    :cond_1
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 212
    :cond_2
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 223
    :cond_3
    iget-object v0, v1, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;->f:Landroid/widget/ImageView;

    const v2, 0x7f02009e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 229
    :cond_4
    iget-object v0, v1, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$b;->e:Landroid/widget/ImageView;

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4
.end method
