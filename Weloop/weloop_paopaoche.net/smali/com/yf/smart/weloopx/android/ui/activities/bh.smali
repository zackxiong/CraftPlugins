.class Lcom/yf/smart/weloopx/android/ui/activities/bh;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 0

    .prologue
    .line 1681
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bh;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 1685
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bh;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->P(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/activities/hg;

    .line 1686
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/bh;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/android/ui/activities/hg;->i()Lb/a/a/a/a/a;

    move-result-object v0

    iput-object v0, v3, Lcom/yf/smart/weloopx/android/ui/activities/z;->a:Lb/a/a/a/a/a;

    .line 1688
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bh;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/z;->a:Lb/a/a/a/a/a;

    if-nez v0, :cond_0

    .line 1689
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bh;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->Q(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/activities/hg;

    .line 1690
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/bh;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/android/ui/activities/hg;->i()Lb/a/a/a/a/a;

    move-result-object v0

    iput-object v0, v3, Lcom/yf/smart/weloopx/android/ui/activities/z;->a:Lb/a/a/a/a/a;

    .line 1692
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bh;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/z;->a:Lb/a/a/a/a/a;

    if-eqz v0, :cond_1

    .line 1693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/bh;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u663e\u793a\u624b\u73af\u6709\u56fa\u4ef6\u66f4\u65b0 canUpgrade = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/bh;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v3, v3, Lcom/yf/smart/weloopx/android/ui/activities/z;->a:Lb/a/a/a/a/a;

    invoke-virtual {v3}, Lb/a/a/a/a/a;->d()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1694
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 1695
    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 1699
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bh;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->O(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v3

    .line 1700
    iget-object v0, v3, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/bh;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v5, 0x7f070105

    invoke-static {v4, v5}, Lcom/yf/smart/weloopx/android/ui/activities/z;->N(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1702
    const-string v0, ""

    .line 1703
    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/bh;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v4, v4, Lcom/yf/smart/weloopx/android/ui/activities/z;->a:Lb/a/a/a/a/a;

    if-eqz v4, :cond_2

    .line 1704
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bh;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/z;->a:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 1706
    :cond_2
    const-string v4, "V 2.19"

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    .line 1707
    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/bh;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v4}, Lcom/yf/smart/weloopx/android/ui/activities/z;->R(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1711
    :goto_0
    const-string v4, "V 2.16"

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    .line 1712
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bh;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->S(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1716
    :goto_1
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bh;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/z;->a:Lb/a/a/a/a/a;

    if-eqz v0, :cond_6

    .line 1717
    iget-object v0, v3, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    const v4, 0x7f02010f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1718
    iget-object v3, v3, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bh;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/z;->a:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1722
    :goto_3
    return-void

    .line 1709
    :cond_3
    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/bh;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v4}, Lcom/yf/smart/weloopx/android/ui/activities/z;->R(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 1714
    :cond_4
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bh;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->S(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_5
    move v0, v2

    .line 1718
    goto :goto_2

    .line 1720
    :cond_6
    iget-object v0, v3, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method
