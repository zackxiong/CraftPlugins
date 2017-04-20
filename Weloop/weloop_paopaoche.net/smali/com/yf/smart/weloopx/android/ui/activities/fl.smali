.class Lcom/yf/smart/weloopx/android/ui/activities/fl;
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
    .line 182
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fl;->a:Lcom/yf/smart/weloopx/android/ui/activities/fj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fl;->a:Lcom/yf/smart/weloopx/android/ui/activities/fj;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fl;->a:Lcom/yf/smart/weloopx/android/ui/activities/fj;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fl;->a:Lcom/yf/smart/weloopx/android/ui/activities/fj;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    const-string v1, "\u4fee\u590d\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->e(Ljava/lang/String;)V

    .line 188
    return-void
.end method
