.class Lcom/yf/smart/weloopx/android/ui/activities/cp;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cp;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 161
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cp;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->f(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cp;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->g(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cp;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->h(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cp;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->i(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Lcom/todddavies/components/progressbar/ProgressWheel2;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/todddavies/components/progressbar/ProgressWheel2;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cp;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->j(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 166
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cp;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->k(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cp;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->l(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070138

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 168
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cp;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->l(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cp;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->m(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cp;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->n(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cp;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Lb/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cp;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->o(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cp;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->h(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 173
    const-string v0, "DfuActivity"

    const-string v1, "toBeNewVersionView"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method
