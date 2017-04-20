.class Lcom/yf/smart/weloopx/android/ui/activities/fk;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/fj;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/fj;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fk;->a:Lcom/yf/smart/weloopx/android/ui/activities/fj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fk;->a:Lcom/yf/smart/weloopx/android/ui/activities/fj;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)Lcom/todddavies/components/progressbar/ProgressWheel2;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/todddavies/components/progressbar/ProgressWheel2;->setProgress(I)V

    .line 172
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fk;->a:Lcom/yf/smart/weloopx/android/ui/activities/fj;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fk;->a:Lcom/yf/smart/weloopx/android/ui/activities/fj;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fk;->a:Lcom/yf/smart/weloopx/android/ui/activities/fj;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->b:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 175
    return-void
.end method
