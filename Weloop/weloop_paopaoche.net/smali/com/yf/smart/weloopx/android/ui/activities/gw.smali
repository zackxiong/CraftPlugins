.class Lcom/yf/smart/weloopx/android/ui/activities/gw;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gw;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gw;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->f(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    :try_end_0
    .catch Lcom/yf/gattlib/e/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    .line 322
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gw;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->finish()V

    goto :goto_0
.end method
