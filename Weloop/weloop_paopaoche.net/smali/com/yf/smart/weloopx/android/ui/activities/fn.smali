.class Lcom/yf/smart/weloopx/android/ui/activities/fn;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/fj;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/fj;I)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fn;->b:Lcom/yf/smart/weloopx/android/ui/activities/fj;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/fn;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 219
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fn;->b:Lcom/yf/smart/weloopx/android/ui/activities/fj;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fn;->b:Lcom/yf/smart/weloopx/android/ui/activities/fj;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fn;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fn;->b:Lcom/yf/smart/weloopx/android/ui/activities/fj;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    const-string v1, "\u4f60\u7684\u56fa\u4ef6\u5b57\u5e93\u6ca1\u6709\u95ee\u9898"

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->e(Ljava/lang/String;)V

    .line 231
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fn;->b:Lcom/yf/smart/weloopx/android/ui/activities/fj;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    const-string v1, "\u4fee\u590d\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->e(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fn;->b:Lcom/yf/smart/weloopx/android/ui/activities/fj;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "100"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fn;->b:Lcom/yf/smart/weloopx/android/ui/activities/fj;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)Lcom/todddavies/components/progressbar/ProgressWheel2;

    move-result-object v0

    const/16 v1, 0x168

    invoke-virtual {v0, v1}, Lcom/todddavies/components/progressbar/ProgressWheel2;->setProgress(I)V

    .line 229
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fn;->b:Lcom/yf/smart/weloopx/android/ui/activities/fj;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    iput v2, v0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->c:I

    goto :goto_0
.end method
