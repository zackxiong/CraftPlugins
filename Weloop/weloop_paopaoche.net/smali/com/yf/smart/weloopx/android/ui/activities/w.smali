.class Lcom/yf/smart/weloopx/android/ui/activities/w;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/w;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/w;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/w;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;Lcom/yf/smart/weloopx/android/ui/activities/u;)V

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;)Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;

    .line 139
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/w;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->h(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/w;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->g(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/w;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->i(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/w;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->h(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 142
    return-void
.end method
