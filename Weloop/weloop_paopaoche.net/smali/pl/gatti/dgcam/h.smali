.class Lpl/gatti/dgcam/h;
.super Ljava/util/TimerTask;
.source "ProGuard"


# instance fields
.field final synthetic a:Lpl/gatti/dgcam/DgCamActivity;


# direct methods
.method constructor <init>(Lpl/gatti/dgcam/DgCamActivity;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lpl/gatti/dgcam/h;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 248
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 249
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 250
    iget-object v1, p0, Lpl/gatti/dgcam/h;->a:Lpl/gatti/dgcam/DgCamActivity;

    iget-object v1, v1, Lpl/gatti/dgcam/DgCamActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 252
    return-void
.end method
