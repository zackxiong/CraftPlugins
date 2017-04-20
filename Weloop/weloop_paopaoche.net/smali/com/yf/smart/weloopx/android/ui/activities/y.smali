.class Lcom/yf/smart/weloopx/android/ui/activities/y;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;I)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/y;->b:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/y;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/y;->b:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->f(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)I

    move-result v0

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/y;->a:I

    if-ne v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/y;->b:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;I)I

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/y;->b:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->j(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)V

    .line 242
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/y;->b:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/y;->a:I

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;I)I

    goto :goto_0
.end method
