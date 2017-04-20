.class Lcom/yf/smart/weloopx/android/ui/activities/by;
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
    .line 698
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 701
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->c(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    sget-object v1, Lcom/yf/smart/weloopx/c/v;->a:Lcom/yf/smart/weloopx/c/v;

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/smart/weloopx/c/v;)Lcom/yf/smart/weloopx/c/v;

    .line 703
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->z(Lcom/yf/smart/weloopx/android/ui/activities/z;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Lcom/yf/smart/weloopx/android/ui/activities/z;I)V

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->A(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->c(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->k()Ljava/lang/String;

    move-result-object v0

    .line 713
    invoke-static {v0}, Lcom/yf/smart/weloopx/c/w;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 714
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/c/v;->a(Ljava/lang/String;)Lcom/yf/smart/weloopx/c/v;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/smart/weloopx/c/v;)Lcom/yf/smart/weloopx/c/v;

    .line 716
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->A(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->B(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/c/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/c/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v1, 0x7f070125

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/activities/z;->c(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/b/b;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Lcom/yf/smart/weloopx/android/ui/activities/z;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 719
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->C(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->c(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 722
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->D(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 727
    :goto_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->B(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/c/v;

    move-result-object v0

    sget-object v1, Lcom/yf/smart/weloopx/c/v;->a:Lcom/yf/smart/weloopx/c/v;

    if-eq v0, v1, :cond_3

    .line 728
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->E(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->B(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/c/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/c/v;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 732
    :goto_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->z(Lcom/yf/smart/weloopx/android/ui/activities/z;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Lcom/yf/smart/weloopx/android/ui/activities/z;I)V

    .line 733
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->s(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    goto/16 :goto_0

    .line 724
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->D(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 730
    :cond_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/by;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->E(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method
