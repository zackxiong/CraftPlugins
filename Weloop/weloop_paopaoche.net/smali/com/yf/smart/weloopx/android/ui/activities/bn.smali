.class Lcom/yf/smart/weloopx/android/ui/activities/bn;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/bm;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/bm;)V
    .locals 0

    .prologue
    .line 1790
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bn;->a:Lcom/yf/smart/weloopx/android/ui/activities/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1793
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bn;->a:Lcom/yf/smart/weloopx/android/ui/activities/bm;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/bm;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->V(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/android/ui/activities/z$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z$a;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bn;->a:Lcom/yf/smart/weloopx/android/ui/activities/bm;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/bm;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->t(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1795
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bn;->a:Lcom/yf/smart/weloopx/android/ui/activities/bm;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/bm;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->v(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1796
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bn;->a:Lcom/yf/smart/weloopx/android/ui/activities/bm;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/bm;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->w(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1798
    :cond_0
    return-void
.end method
