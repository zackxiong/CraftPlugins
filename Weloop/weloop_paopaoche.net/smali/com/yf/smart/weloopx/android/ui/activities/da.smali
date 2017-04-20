.class Lcom/yf/smart/weloopx/android/ui/activities/da;
.super Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity$a;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)V
    .locals 1

    .prologue
    .line 389
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/da;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity$a;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;Lcom/yf/smart/weloopx/android/ui/activities/cw;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 392
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/da;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;Z)Z

    .line 393
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/da;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v0, p2}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;Z)Z

    .line 394
    if-eqz p2, :cond_2

    .line 395
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/da;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/da;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->m(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/da;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/da;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->m(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 399
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/da;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/da;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/da;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
