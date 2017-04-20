.class Lcom/yf/smart/weloopx/android/ui/activities/eo;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/el;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/el;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/eo;->b:Lcom/yf/smart/weloopx/android/ui/activities/el;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/eo;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 502
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/eo;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 503
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/eo;->b:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->g(Lcom/yf/smart/weloopx/android/ui/activities/el;)Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setChecked(Z)V

    .line 504
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/eo;->b:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->a(Lcom/yf/smart/weloopx/android/ui/activities/el;)Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "KEY_TRAJECTORY_SWITCH"

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 505
    return-void
.end method
