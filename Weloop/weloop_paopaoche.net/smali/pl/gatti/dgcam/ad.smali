.class Lpl/gatti/dgcam/ad;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field final synthetic a:Lpl/gatti/dgcam/ac;


# direct methods
.method constructor <init>(Lpl/gatti/dgcam/ac;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lpl/gatti/dgcam/ad;->a:Lpl/gatti/dgcam/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lpl/gatti/dgcam/ac;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onAutoFocus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 79
    :try_start_0
    new-instance v0, Lpl/gatti/dgcam/ae;

    invoke-direct {v0, p0}, Lpl/gatti/dgcam/ae;-><init>(Lpl/gatti/dgcam/ad;)V

    new-instance v1, Lpl/gatti/dgcam/af;

    invoke-direct {v1, p0}, Lpl/gatti/dgcam/af;-><init>(Lpl/gatti/dgcam/ad;)V

    iget-object v2, p0, Lpl/gatti/dgcam/ad;->a:Lpl/gatti/dgcam/ac;

    invoke-static {v2}, Lpl/gatti/dgcam/ac;->b(Lpl/gatti/dgcam/ac;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lpl/gatti/dgcam/ac;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u62cd\u7167\u51fa\u9519 e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
