.class public Lcom/yf/smart/weloopx/android/ui/a/i;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/a/i$1;,
        Lcom/yf/smart/weloopx/android/ui/a/i$a;
    }
.end annotation


# instance fields
.field a:Lcom/yf/gattlib/http/afinal/FinalBitmap;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Friendmodel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Friendmodel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    const-string v0, "FriendSearchAdapter"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/i;->b:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/a/i;->c:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/a/i;->d:Ljava/util/ArrayList;

    .line 35
    invoke-static {p1}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->create(Landroid/content/Context;)Lcom/yf/gattlib/http/afinal/FinalBitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/i;->a:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/i;->e:Landroid/graphics/Bitmap;

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/i;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/i;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 74
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/yf/smart/weloopx/data/models/Friendmodel;

    .line 81
    if-nez p2, :cond_0

    .line 82
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/i;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009d

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 84
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/a/i$a;

    invoke-direct {v1, v3}, Lcom/yf/smart/weloopx/android/ui/a/i$a;-><init>(Lcom/yf/smart/weloopx/android/ui/a/i$1;)V

    .line 85
    const v0, 0x7f0d02a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/android/ui/a/i$a;->a(Lcom/yf/smart/weloopx/android/ui/a/i$a;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 86
    const v0, 0x7f0d02a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/android/ui/a/i$a;->a(Lcom/yf/smart/weloopx/android/ui/a/i$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 87
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    :goto_0
    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/a/i$a;->a(Lcom/yf/smart/weloopx/android/ui/a/i$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/Friendmodel;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/i;->a:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/a/i$a;->b(Lcom/yf/smart/weloopx/android/ui/a/i$a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/Friendmodel;->getHeadPic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/a/i;->e:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/a/i;->e:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->display(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    .line 95
    return-object p2

    .line 89
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/a/i$a;

    move-object v1, v0

    goto :goto_0
.end method
