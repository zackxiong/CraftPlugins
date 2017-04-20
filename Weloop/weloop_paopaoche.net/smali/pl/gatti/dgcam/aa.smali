.class Lpl/gatti/dgcam/aa;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field final synthetic a:Lpl/gatti/dgcam/z;


# direct methods
.method constructor <init>(Lpl/gatti/dgcam/z;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lpl/gatti/dgcam/aa;->a:Lpl/gatti/dgcam/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 5

    .prologue
    .line 65
    const-string v0, "RecordVideoManager"

    const-string v1, "start record 1.1"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lpl/gatti/dgcam/aa;->a:Lpl/gatti/dgcam/z;

    invoke-static {v1}, Lpl/gatti/dgcam/z;->a(Lpl/gatti/dgcam/z;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lpl/gatti/dgcam/aa;->a:Lpl/gatti/dgcam/z;

    invoke-static {v1}, Lpl/gatti/dgcam/z;->b(Lpl/gatti/dgcam/z;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIDEO_"

    const-string v2, ".mp4"

    invoke-static {v0, v1, v2}, Lpl/gatti/dgcam/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lpl/gatti/dgcam/aa;->a:Lpl/gatti/dgcam/z;

    iget-object v2, p0, Lpl/gatti/dgcam/aa;->a:Lpl/gatti/dgcam/z;

    invoke-static {v2}, Lpl/gatti/dgcam/z;->c(Lpl/gatti/dgcam/z;)Lpl/gatti/dgcam/a;

    move-result-object v2

    invoke-virtual {v2}, Lpl/gatti/dgcam/a;->f()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v4, p0, Lpl/gatti/dgcam/aa;->a:Lpl/gatti/dgcam/z;

    invoke-static {v4}, Lpl/gatti/dgcam/z;->c(Lpl/gatti/dgcam/z;)Lpl/gatti/dgcam/a;

    move-result-object v4

    invoke-virtual {v4}, Lpl/gatti/dgcam/a;->g()I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lpl/gatti/dgcam/z;->a(Lpl/gatti/dgcam/z;Landroid/hardware/Camera;Ljava/lang/String;Landroid/hardware/Camera$Size;I)Z

    .line 71
    const-string v0, "RecordVideoManager"

    const-string v1, "start record 1.2"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method
