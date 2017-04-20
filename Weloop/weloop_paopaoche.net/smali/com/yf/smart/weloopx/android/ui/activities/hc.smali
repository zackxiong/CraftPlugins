.class Lcom/yf/smart/weloopx/android/ui/activities/hc;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$b;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$b;Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    .locals 0

    .prologue
    .line 864
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/hc;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$b;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/hc;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/hc;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a()V

    .line 868
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/hc;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->G(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    .line 869
    return-void
.end method
