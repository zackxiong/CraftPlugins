.class Lpl/gatti/dgcam/ah;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic a:Lpl/gatti/dgcam/ac;


# direct methods
.method constructor <init>(Lpl/gatti/dgcam/ac;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lpl/gatti/dgcam/ah;->a:Lpl/gatti/dgcam/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6

    .prologue
    .line 121
    invoke-static {}, Lpl/gatti/dgcam/ac;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPictureTaken"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lpl/gatti/dgcam/ah;->a:Lpl/gatti/dgcam/ac;

    invoke-static {v1}, Lpl/gatti/dgcam/ac;->c(Lpl/gatti/dgcam/ac;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lpl/gatti/dgcam/ah;->a:Lpl/gatti/dgcam/ac;

    invoke-static {v1}, Lpl/gatti/dgcam/ac;->d(Lpl/gatti/dgcam/ac;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMG_"

    const-string v2, ".jpg"

    invoke-static {v0, v1, v2}, Lpl/gatti/dgcam/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 125
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 126
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 127
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lpl/gatti/dgcam/ah;->a:Lpl/gatti/dgcam/ac;

    invoke-static {v1}, Lpl/gatti/dgcam/ac;->e(Lpl/gatti/dgcam/ac;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    :goto_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->stopPreview()V

    .line 138
    invoke-static {}, Lpl/gatti/dgcam/ac;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "picture is saved, startPreview"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/hardware/Camera;->startPreview()V

    .line 140
    iget-object v0, p0, Lpl/gatti/dgcam/ah;->a:Lpl/gatti/dgcam/ac;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpl/gatti/dgcam/ac;->a(Lpl/gatti/dgcam/ac;Z)Z

    .line 141
    invoke-static {}, Lpl/gatti/dgcam/ac;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "after taking picture and startPreview"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-static {}, Lpl/gatti/dgcam/ac;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :catch_1
    move-exception v0

    .line 135
    invoke-static {}, Lpl/gatti/dgcam/ac;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error accessing file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
