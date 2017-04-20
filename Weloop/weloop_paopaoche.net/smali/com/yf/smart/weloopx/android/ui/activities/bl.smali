.class Lcom/yf/smart/weloopx/android/ui/activities/bl;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 0

    .prologue
    .line 1758
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bl;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bl;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "you click on item number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bl;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/m/a/b;

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/gattlib/m/a/b;)Lcom/yf/gattlib/m/a/b;

    .line 1763
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bl;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bl;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->T(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/m/a/b;

    move-result-object v1

    iget-object v1, v1, Lcom/yf/gattlib/m/a/b;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->t(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)Ljava/lang/String;

    .line 1764
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bl;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bl;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/bl;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->T(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/m/a/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->b(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/gattlib/m/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)Ljava/lang/String;

    .line 1765
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->c()V

    .line 1766
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bl;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bl;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->T(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/m/a/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->c(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/gattlib/m/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1767
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->b()V

    .line 1782
    :cond_0
    :goto_0
    return-void

    .line 1769
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bl;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1770
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bl;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->U(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1771
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bl;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1772
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 1773
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bl;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v2, 0x7f070097

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/z;->b(Lcom/yf/smart/weloopx/android/ui/activities/z;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1774
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bl;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "onConnect"

    const v3, 0x7f03004a

    invoke-static {v1, v2, v0, v3}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1776
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect device name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bl;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 1777
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bl;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->U(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/bl;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/yf/smart/weloopx/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bl;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bl;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->T(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/m/a/b;

    move-result-object v1

    iget-object v1, v1, Lcom/yf/gattlib/m/a/b;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/ak;->a(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0
.end method
