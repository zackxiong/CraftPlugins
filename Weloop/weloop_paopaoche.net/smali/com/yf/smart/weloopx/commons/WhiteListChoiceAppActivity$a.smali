.class Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$a;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;


# direct methods
.method private constructor <init>(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$a;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;Lcom/yf/smart/weloopx/commons/c;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$a;-><init>(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$a;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->g(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 210
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 216
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$a;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->c(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/commons/b;

    .line 218
    if-nez p2, :cond_0

    .line 219
    iget-object v1, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$a;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030043

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 222
    new-instance v2, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;

    iget-object v1, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$a;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    invoke-direct {v2, v1}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;-><init>(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)V

    .line 223
    const v1, 0x7f0d0185

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->a:Landroid/widget/TextView;

    .line 225
    const v1, 0x7f0d0182

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->b:Landroid/widget/TextView;

    .line 227
    const v1, 0x7f0d0183

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->c:Landroid/widget/TextView;

    .line 229
    const v1, 0x7f0d0184

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->d:Landroid/widget/TextView;

    .line 231
    const v1, 0x7f0d0187

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->e:Landroid/widget/ImageView;

    .line 233
    const v1, 0x7f0d0186

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->f:Landroid/widget/ImageView;

    .line 235
    const v1, 0x7f0d0181

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v2, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->g:Landroid/widget/RelativeLayout;

    .line 238
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 242
    :goto_0
    iput-object v0, v1, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->h:Lcom/yf/smart/weloopx/commons/b;

    .line 243
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/commons/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 245
    iget-object v3, v1, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    if-nez p1, :cond_1

    .line 247
    iget-object v2, v1, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    :goto_1
    iget-object v2, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$a;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->g(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_2

    .line 252
    iget-object v2, v1, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v2, v1, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    :goto_2
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/commons/b;->c()Z

    move-result v2

    .line 261
    if-eqz v2, :cond_3

    .line 262
    iget-object v2, v1, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->e:Landroid/widget/ImageView;

    const v3, 0x7f020046

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 267
    :goto_3
    iget-object v2, p0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$a;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/commons/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yf/smart/weloopx/commons/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_4

    .line 270
    iget-object v1, v1, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 275
    :goto_4
    return-object p2

    .line 240
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;

    goto :goto_0

    .line 249
    :cond_1
    iget-object v2, v1, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 255
    :cond_2
    iget-object v2, v1, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v2, v1, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 264
    :cond_3
    iget-object v2, v1, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->e:Landroid/widget/ImageView;

    const v3, 0x7f020048

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 272
    :cond_4
    iget-object v0, v1, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->f:Landroid/widget/ImageView;

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4
.end method
