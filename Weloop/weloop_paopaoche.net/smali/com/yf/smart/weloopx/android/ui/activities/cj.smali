.class Lcom/yf/smart/weloopx/android/ui/activities/cj;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cj;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cj;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    const v1, 0x7f050002

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 619
    return-void
.end method
