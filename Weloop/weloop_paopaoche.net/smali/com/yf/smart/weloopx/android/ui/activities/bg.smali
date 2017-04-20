.class Lcom/yf/smart/weloopx/android/ui/activities/bg;
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
    .line 1632
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bg;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v1, 0x7f02011e

    .line 1636
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bg;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->M(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/activities/hg;

    .line 1637
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/bg;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/android/ui/activities/hg;->i()Lb/a/a/a/a/a;

    move-result-object v0

    iput-object v0, v2, Lcom/yf/smart/weloopx/android/ui/activities/z;->a:Lb/a/a/a/a/a;

    .line 1639
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bg;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/z;->a:Lb/a/a/a/a/a;

    if-nez v0, :cond_0

    .line 1640
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bg;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->N(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/activities/hg;

    .line 1641
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/bg;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/android/ui/activities/hg;->i()Lb/a/a/a/a/a;

    move-result-object v0

    iput-object v0, v2, Lcom/yf/smart/weloopx/android/ui/activities/z;->a:Lb/a/a/a/a/a;

    .line 1643
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bg;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/z;->a:Lb/a/a/a/a/a;

    if-eqz v0, :cond_1

    .line 1644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/bg;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u663e\u793a\u624b\u8868\u6709\u56fa\u4ef6\u66f4\u65b0 canUpgrade = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/bg;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v2, v2, Lcom/yf/smart/weloopx/android/ui/activities/z;->a:Lb/a/a/a/a/a;

    invoke-virtual {v2}, Lb/a/a/a/a/a;->d()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1645
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 1646
    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 1650
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bg;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->O(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0d01f0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1652
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/b;->o()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1653
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/bg;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v2, v2, Lcom/yf/smart/weloopx/android/ui/activities/z;->a:Lb/a/a/a/a/a;

    invoke-virtual {v2}, Lb/a/a/a/a/a;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    const v1, 0x7f0201a2

    .line 1658
    :cond_2
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/bg;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1665
    :goto_0
    return-void

    .line 1660
    :catch_0
    move-exception v0

    .line 1661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/bg;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u624b\u8868\u6709\u56fa\u4ef6\u66f4\u65b0\u51fa\u9519\u4e86 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1662
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 1663
    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
