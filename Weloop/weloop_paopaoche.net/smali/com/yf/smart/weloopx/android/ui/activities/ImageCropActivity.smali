.class public Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;
.super Landroid/app/Activity;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017d
    .end annotation
.end field

.field b:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017e
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d016e
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private e:Lcom/yf/smart/weloopx/view/CropImageView;

.field private f:Landroid/graphics/Bitmap;

.field private g:Lcom/yf/smart/weloopx/view/a;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const-string v0, "ImageCropActivity"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->d:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->h:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .prologue
    .line 127
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 128
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 147
    int-to-float v0, v0

    int-to-float v2, p2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 149
    int-to-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 150
    if-ge v0, v1, :cond_0

    .line 153
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 150
    goto :goto_0
.end method

.method private a()V
    .locals 5

    .prologue
    const/16 v4, 0x3e8

    const/4 v3, 0x1

    .line 53
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageCropActivity ImageCropActivity\u7684path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 55
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 56
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 57
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->f:Landroid/graphics/Bitmap;

    .line 58
    invoke-static {v1, v4, v4}, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 59
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 60
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->f:Landroid/graphics/Bitmap;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageCropActivity \u62ff\u5230\u7684\u56fe\u7684\u5927\u5c0f\u4e3a = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 63
    const v0, 0x7f0d0060

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/view/CropImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->e:Lcom/yf/smart/weloopx/view/CropImageView;

    .line 64
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->e:Lcom/yf/smart/weloopx/view/CropImageView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/view/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->e:Lcom/yf/smart/weloopx/view/CropImageView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3}, Lcom/yf/smart/weloopx/view/CropImageView;->a(Landroid/graphics/Bitmap;Z)V

    .line 67
    new-instance v0, Lcom/yf/smart/weloopx/view/a;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->e:Lcom/yf/smart/weloopx/view/CropImageView;

    invoke-direct {v0, p0, v1}, Lcom/yf/smart/weloopx/view/a;-><init>(Landroid/content/Context;Lcom/yf/smart/weloopx/view/CropImageView;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->g:Lcom/yf/smart/weloopx/view/a;

    .line 68
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->g:Lcom/yf/smart/weloopx/view/a;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/view/a;->a(Landroid/graphics/Bitmap;)V

    .line 69
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->b:Landroid/widget/Button;

    const v1, 0x7f0701f3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 74
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 93
    const-string v0, "ImageCropActivity \u7f16\u8f91\u5b8c\u6210\u51c6\u5907\u4fdd\u5b58"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 94
    const-string v0, "myphoto"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->h:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->g:Lcom/yf/smart/weloopx/view/a;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/view/a;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "ImageCropActivity \u7f16\u8f91\u5b8c\u6210\u4fdd\u5b58\u5b8c\u6210"

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 97
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 98
    const-string v2, "path"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->setResult(ILandroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->finish()V

    .line 102
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 105
    new-instance v0, Ljava/io/File;

    const-string v1, "mnt/sdcard/picture/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    const/4 v1, 0x0

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 110
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 111
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 112
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 113
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 114
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 115
    const-string v1, "ImageCropActivity saveBmp is here"

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    :goto_0
    return-object v0

    .line 116
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 117
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 116
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->g:Lcom/yf/smart/weloopx/view/a;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/a;->a()V

    .line 82
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->finish()V

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->c()V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d017d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->requestWindowFeature(I)Z

    .line 45
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->setContentView(I)V

    .line 46
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 48
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->a()V

    .line 49
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;->b()V

    .line 50
    return-void
.end method
