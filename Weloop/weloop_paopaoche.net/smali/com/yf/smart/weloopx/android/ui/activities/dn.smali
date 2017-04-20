.class Lcom/yf/smart/weloopx/android/ui/activities/dn;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dn;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v1, 0x7f0200dd

    const/4 v4, 0x0

    .line 644
    const-string v0, "MainActivity"

    const-string v2, "1. changeDeviceResource"

    invoke-static {v0, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dn;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->j(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    .line 648
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dn;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->o:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 652
    :goto_0
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/b;->i()Z

    move-result v2

    .line 654
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/dn;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->k(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v0, v1

    .line 667
    :goto_1
    if-nez v2, :cond_0

    move v0, v1

    .line 671
    :cond_0
    const-string v1, "MainActivity"

    const-string v2, "setCompoundDrawablesWithIntrinsicBounds"

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dn;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->l(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/dn;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 674
    return-void

    .line 648
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 656
    :pswitch_0
    if-eqz v0, :cond_2

    const v0, 0x7f0200e3

    goto :goto_1

    :cond_2
    const v0, 0x7f0200e4

    goto :goto_1

    .line 659
    :pswitch_1
    if-eqz v0, :cond_3

    const v0, 0x7f0200e1

    goto :goto_1

    :cond_3
    const v0, 0x7f0200e2

    goto :goto_1

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
