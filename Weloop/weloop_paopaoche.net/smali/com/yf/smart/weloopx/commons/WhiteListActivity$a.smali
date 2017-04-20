.class Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/commons/WhiteListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/commons/WhiteListActivity;


# direct methods
.method private constructor <init>(Lcom/yf/smart/weloopx/commons/WhiteListActivity;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;->a:Lcom/yf/smart/weloopx/commons/WhiteListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/smart/weloopx/commons/WhiteListActivity;Lcom/yf/smart/weloopx/commons/WhiteListActivity$1;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;-><init>(Lcom/yf/smart/weloopx/commons/WhiteListActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;->a:Lcom/yf/smart/weloopx/commons/WhiteListActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->a(Lcom/yf/smart/weloopx/commons/WhiteListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 89
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 95
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;->a:Lcom/yf/smart/weloopx/commons/WhiteListActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->a(Lcom/yf/smart/weloopx/commons/WhiteListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/commons/b;

    .line 98
    if-nez p2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;->a:Lcom/yf/smart/weloopx/commons/WhiteListActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030045

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 101
    new-instance v2, Lcom/yf/smart/weloopx/commons/WhiteListActivity$b;

    iget-object v1, p0, Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;->a:Lcom/yf/smart/weloopx/commons/WhiteListActivity;

    invoke-direct {v2, v1}, Lcom/yf/smart/weloopx/commons/WhiteListActivity$b;-><init>(Lcom/yf/smart/weloopx/commons/WhiteListActivity;)V

    .line 102
    const v1, 0x7f0d018b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/commons/WhiteListActivity$b;->a:Landroid/widget/TextView;

    .line 104
    const v1, 0x7f0d0188

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/commons/WhiteListActivity$b;->b:Landroid/widget/TextView;

    .line 106
    const v1, 0x7f0d0189

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/commons/WhiteListActivity$b;->c:Landroid/widget/TextView;

    .line 108
    const v1, 0x7f0d018a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/commons/WhiteListActivity$b;->d:Landroid/widget/TextView;

    .line 110
    const v1, 0x7f0d018c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/commons/WhiteListActivity$b;->e:Landroid/widget/ImageView;

    .line 111
    const v1, 0x7f0d018d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/commons/WhiteListActivity$b;->f:Landroid/widget/ImageView;

    .line 113
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 117
    :goto_0
    iget-object v2, v1, Lcom/yf/smart/weloopx/commons/WhiteListActivity$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/commons/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    if-nez p1, :cond_1

    .line 119
    iget-object v2, v1, Lcom/yf/smart/weloopx/commons/WhiteListActivity$b;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    :goto_1
    iget-object v2, p0, Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;->a:Lcom/yf/smart/weloopx/commons/WhiteListActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->a(Lcom/yf/smart/weloopx/commons/WhiteListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_2

    .line 124
    iget-object v2, v1, Lcom/yf/smart/weloopx/commons/WhiteListActivity$b;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v2, v1, Lcom/yf/smart/weloopx/commons/WhiteListActivity$b;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :goto_2
    iget-object v2, v1, Lcom/yf/smart/weloopx/commons/WhiteListActivity$b;->e:Landroid/widget/ImageView;

    new-instance v3, Lcom/yf/smart/weloopx/commons/a;

    invoke-direct {v3, p0, v0, p1}, Lcom/yf/smart/weloopx/commons/a;-><init>(Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;Lcom/yf/smart/weloopx/commons/b;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v2, p0, Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;->a:Lcom/yf/smart/weloopx/commons/WhiteListActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/commons/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yf/smart/weloopx/commons/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_3

    .line 144
    iget-object v1, v1, Lcom/yf/smart/weloopx/commons/WhiteListActivity$b;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    :goto_3
    return-object p2

    .line 115
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/commons/WhiteListActivity$b;

    goto :goto_0

    .line 121
    :cond_1
    iget-object v2, v1, Lcom/yf/smart/weloopx/commons/WhiteListActivity$b;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 127
    :cond_2
    iget-object v2, v1, Lcom/yf/smart/weloopx/commons/WhiteListActivity$b;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v2, v1, Lcom/yf/smart/weloopx/commons/WhiteListActivity$b;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 146
    :cond_3
    iget-object v0, v1, Lcom/yf/smart/weloopx/commons/WhiteListActivity$b;->f:Landroid/widget/ImageView;

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3
.end method
