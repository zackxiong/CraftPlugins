.class Lcom/yf/smart/weloopx/android/ui/activities/go;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/DialogFragment;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Landroid/app/DialogFragment;)V
    .locals 0

    .prologue
    .line 792
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/go;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/go;->a:Landroid/app/DialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/go;->a:Landroid/app/DialogFragment;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 796
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/go;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->finish()V

    .line 797
    return-void
.end method
