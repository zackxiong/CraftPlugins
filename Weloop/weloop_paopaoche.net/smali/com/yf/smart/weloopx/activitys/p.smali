.class Lcom/yf/smart/weloopx/activitys/p;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/p;->b:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    iput-object p2, p0, Lcom/yf/smart/weloopx/activitys/p;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 446
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 447
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/p;->b:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-static {v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->h(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 453
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 455
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/p;->a:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 456
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 457
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 463
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 460
    :catch_1
    move-exception v0

    .line 461
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
