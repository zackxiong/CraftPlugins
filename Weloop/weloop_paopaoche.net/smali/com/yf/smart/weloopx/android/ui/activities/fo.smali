.class Lcom/yf/smart/weloopx/android/ui/activities/fo;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fo;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fo;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)Lcom/todddavies/components/progressbar/ProgressWheel2;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fo;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    iget v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->c:I

    invoke-virtual {v0, v1}, Lcom/todddavies/components/progressbar/ProgressWheel2;->setProgress(I)V

    .line 262
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fo;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/fo;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    iget v2, v2, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->c:I

    mul-int/lit8 v2, v2, 0x64

    div-int/lit16 v2, v2, 0x168

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fo;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->f(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 264
    return-void
.end method
