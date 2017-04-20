.class public Lcom/yf/smart/weloopx/android/ui/a/h;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/a/h$1;,
        Lcom/yf/smart/weloopx/android/ui/a/h$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Friendmodel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/yf/gattlib/http/afinal/FinalBitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
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
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    const-string v0, "FriendRankAdapter"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/h;->a:Ljava/lang/String;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3."

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/h;->f:[Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/a/h;->b:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/a/h;->c:Ljava/util/ArrayList;

    .line 34
    invoke-static {p1}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->create(Landroid/content/Context;)Lcom/yf/gattlib/http/afinal/FinalBitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/h;->d:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/h;->e:Landroid/graphics/Bitmap;

    .line 36
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 126
    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 128
    :goto_0
    return-object p1

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/h;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/h;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 73
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/Friendmodel;

    .line 80
    if-nez p2, :cond_0

    .line 81
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/a/h;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03006e

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 83
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/a/h$a;

    invoke-direct {v2, v3}, Lcom/yf/smart/weloopx/android/ui/a/h$a;-><init>(Lcom/yf/smart/weloopx/android/ui/a/h$1;)V

    .line 84
    const v1, 0x7f0d021f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/android/ui/a/h$a;->d:Landroid/widget/ImageView;

    .line 85
    const v1, 0x7f0d0220

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/android/ui/a/h$a;->c:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f0d021e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/android/ui/a/h$a;->a:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f0d0221

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yf/smart/weloopx/android/ui/a/h$a;->b:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 93
    :goto_0
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodel;->getCalorie()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yf/smart/weloopx/android/ui/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4eca\u65e5\u6d88\u8017"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/a/h;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07013c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    iget-object v3, v1, Lcom/yf/smart/weloopx/android/ui/a/h$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodel;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v3, v1, Lcom/yf/smart/weloopx/android/ui/a/h$a;->a:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 103
    iget-object v3, v1, Lcom/yf/smart/weloopx/android/ui/a/h$a;->a:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v3, v1, Lcom/yf/smart/weloopx/android/ui/a/h$a;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodel;->getHeadPic()Ljava/lang/String;

    move-result-object v2

    .line 109
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/h;->d:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/a/h$a;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/a/h;->e:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/a/h;->e:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->display(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    .line 112
    return-object p2

    .line 90
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/android/ui/a/h$a;

    goto :goto_0
.end method
