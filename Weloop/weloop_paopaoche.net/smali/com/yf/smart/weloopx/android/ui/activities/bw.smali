.class Lcom/yf/smart/weloopx/android/ui/activities/bw;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bw;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/bw;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 659
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bw;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->t(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 660
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bw;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->u(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 661
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bw;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->v(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bw;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->w(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bw;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->x(Lcom/yf/smart/weloopx/android/ui/activities/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bw;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->u(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 665
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bw;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->v(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bw;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bw;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Lcom/yf/smart/weloopx/android/ui/activities/z;Landroid/view/View;)V

    .line 671
    :goto_0
    return-void

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bw;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->u(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bw;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->v(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
