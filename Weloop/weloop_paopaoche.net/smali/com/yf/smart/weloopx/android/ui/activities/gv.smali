.class Lcom/yf/smart/weloopx/android/ui/activities/gv;
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
    .line 286
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gv;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gv;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gv;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b:Lb/a/a/a/a/a;

    invoke-virtual {v1}, Lb/a/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    return-void
.end method
