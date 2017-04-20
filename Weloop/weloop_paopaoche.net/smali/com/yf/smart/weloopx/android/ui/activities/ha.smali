.class Lcom/yf/smart/weloopx/android/ui/activities/ha;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;I)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ha;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ha;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 699
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ha;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->m(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ha;->b:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ha;->a:I

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    return-void
.end method
