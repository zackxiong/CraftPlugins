.class public Lpl/gatti/dgcam/b;
.super Landroid/view/SurfaceView;
.source "ProGuard"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private a:Landroid/view/SurfaceHolder;

.field private b:Lpl/gatti/dgcam/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpl/gatti/dgcam/a;)V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object p2, p0, Lpl/gatti/dgcam/b;->b:Lpl/gatti/dgcam/a;

    .line 14
    invoke-virtual {p0}, Lpl/gatti/dgcam/b;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lpl/gatti/dgcam/b;->a:Landroid/view/SurfaceHolder;

    .line 15
    iget-object v0, p0, Lpl/gatti/dgcam/b;->a:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 16
    iget-object v0, p0, Lpl/gatti/dgcam/b;->a:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 18
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lpl/gatti/dgcam/b;->a:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lpl/gatti/dgcam/b;->b:Lpl/gatti/dgcam/a;

    invoke-virtual {v0}, Lpl/gatti/dgcam/a;->e()V

    .line 32
    iget-object v0, p0, Lpl/gatti/dgcam/b;->b:Lpl/gatti/dgcam/a;

    invoke-virtual {v0, p1, p3, p4}, Lpl/gatti/dgcam/a;->a(Landroid/view/SurfaceHolder;II)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lpl/gatti/dgcam/b;->b:Lpl/gatti/dgcam/a;

    invoke-virtual {v0}, Lpl/gatti/dgcam/a;->f()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lpl/gatti/dgcam/b;->b:Lpl/gatti/dgcam/a;

    invoke-virtual {v0}, Lpl/gatti/dgcam/a;->a()V

    .line 24
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
