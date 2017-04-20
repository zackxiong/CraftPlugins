.class Lcom/yf/smart/weloopx/android/ui/activities/v;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/v;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/v;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->f(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/v;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->f(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/v;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 120
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/v;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/v;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->f(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 121
    const-string v1, "pkg"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/v;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/v;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savedPkg 2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/v;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/v;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070211

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 128
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/v;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->finish()V

    .line 129
    return-void
.end method
