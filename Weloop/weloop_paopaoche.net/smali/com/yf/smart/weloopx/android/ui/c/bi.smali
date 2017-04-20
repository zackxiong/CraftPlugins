.class public Lcom/yf/smart/weloopx/android/ui/c/bi;
.super Lcom/yf/smart/weloopx/android/ui/c/g;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/c/bi$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/Button;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;-><init>()V

    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 105
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 106
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 107
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 108
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 109
    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 112
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(III)Lcom/yf/smart/weloopx/android/ui/c/bi;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    const-string v1, "currentImage"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    const-string v1, "currentPosition"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    const-string v1, "totalPages"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/bi;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/bi;-><init>()V

    .line 47
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/bi;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/g;->onAttach(Landroid/app/Activity;)V

    .line 54
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/bi;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "currentImage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bi;->a:I

    .line 55
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/bi;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "currentPosition"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bi;->b:I

    .line 56
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/bi;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "totalPages"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bi;->c:I

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 61
    const v0, 0x7f03008b

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    const v0, 0x7f0d0283

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bi;->d:Landroid/widget/ImageView;

    .line 63
    const v0, 0x7f0d0284

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bi;->e:Landroid/widget/Button;

    .line 64
    const v0, 0x7f0d0286

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bi;->f:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0d0287

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bi;->g:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bi;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/yf/smart/weloopx/android/ui/c/bi;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yf/smart/weloopx/android/ui/c/bi;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/bi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/c/bi;->a:I

    invoke-static {v0, v2}, Lcom/yf/smart/weloopx/android/ui/c/bi;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/bi;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 70
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/bi;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/c/bi$a;

    .line 72
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/bi;->e:Landroid/widget/Button;

    new-instance v3, Lcom/yf/smart/weloopx/android/ui/c/bj;

    invoke-direct {v3, p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/bj;-><init>(Lcom/yf/smart/weloopx/android/ui/c/bi;Lcom/yf/smart/weloopx/android/ui/c/bi$a;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/bi;->g:Landroid/widget/TextView;

    new-instance v3, Lcom/yf/smart/weloopx/android/ui/c/bk;

    invoke-direct {v3, p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/bk;-><init>(Lcom/yf/smart/weloopx/android/ui/c/bi;Lcom/yf/smart/weloopx/android/ui/c/bi$a;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/bi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020074

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 88
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/bi;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v0, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bi;->b:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/c/bi;->c:I

    if-ne v0, v2, :cond_0

    .line 91
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bi;->e:Landroid/widget/Button;

    const v2, 0x7f070102

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/c/bi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bi;->e:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 95
    :cond_0
    return-object v1
.end method
