.class Lcom/yf/smart/weloopx/android/ui/activities/es;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/el;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/el;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/es;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/es;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->k(Lcom/yf/smart/weloopx/android/ui/activities/el;)I

    move-result v0

    if-lez v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/es;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->l(Lcom/yf/smart/weloopx/android/ui/activities/el;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/es;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/el;->k(Lcom/yf/smart/weloopx/android/ui/activities/el;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/es;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->l(Lcom/yf/smart/weloopx/android/ui/activities/el;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/es;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->m(Lcom/yf/smart/weloopx/android/ui/activities/el;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 666
    return-void
.end method
