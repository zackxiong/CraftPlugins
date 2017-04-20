.class Lcom/yf/smart/weloopx/android/ui/activities/dy;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dy;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateAutoPopup(Z)V

    .line 406
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/dz;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/dz;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/dy;)V

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateListener(Lcom/umeng/update/UmengUpdateListener;)V

    .line 439
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setDeltaUpdate(Z)V

    .line 440
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dy;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->update(Landroid/content/Context;)V

    .line 442
    return-void
.end method
