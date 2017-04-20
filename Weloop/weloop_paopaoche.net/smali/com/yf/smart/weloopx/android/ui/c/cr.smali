.class Lcom/yf/smart/weloopx/android/ui/c/cr;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/cq;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/cq;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/cr;->a:Lcom/yf/smart/weloopx/android/ui/c/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cr;->a:Lcom/yf/smart/weloopx/android/ui/c/cq;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/cq;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/co;->a:Lit/sephiroth/android/library/widget/CenterHListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/CenterHListView;->setActionUp(Z)V

    .line 153
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cr;->a:Lcom/yf/smart/weloopx/android/ui/c/cq;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/cq;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/co;->a:Lit/sephiroth/android/library/widget/CenterHListView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/cr;->a:Lcom/yf/smart/weloopx/android/ui/c/cq;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/c/cq;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/c/co;->a:Lit/sephiroth/android/library/widget/CenterHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/CenterHListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/CenterHListView;->setSelectionInt(I)V

    .line 155
    return-void
.end method
