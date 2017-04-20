.class Lpl/gatti/dgcam/af;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic a:Lpl/gatti/dgcam/ad;


# direct methods
.method constructor <init>(Lpl/gatti/dgcam/ad;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lpl/gatti/dgcam/af;->a:Lpl/gatti/dgcam/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lpl/gatti/dgcam/af;->a:Lpl/gatti/dgcam/ad;

    iget-object v0, v0, Lpl/gatti/dgcam/ad;->a:Lpl/gatti/dgcam/ac;

    invoke-static {v0}, Lpl/gatti/dgcam/ac;->a(Lpl/gatti/dgcam/ac;)Lpl/gatti/dgcam/ab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lpl/gatti/dgcam/af;->a:Lpl/gatti/dgcam/ad;

    iget-object v0, v0, Lpl/gatti/dgcam/ad;->a:Lpl/gatti/dgcam/ac;

    invoke-static {v0}, Lpl/gatti/dgcam/ac;->a(Lpl/gatti/dgcam/ac;)Lpl/gatti/dgcam/ab;

    move-result-object v0

    invoke-interface {v0, p1}, Lpl/gatti/dgcam/ab;->a([B)V

    .line 90
    :cond_0
    return-void
.end method
