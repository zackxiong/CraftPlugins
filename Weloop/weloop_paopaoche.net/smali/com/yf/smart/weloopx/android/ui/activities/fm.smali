.class Lcom/yf/smart/weloopx/android/ui/activities/fm;
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
    .line 203
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fm;->a:Lcom/yf/smart/weloopx/android/ui/activities/fj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fm;->a:Lcom/yf/smart/weloopx/android/ui/activities/fj;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/fm;->a:Lcom/yf/smart/weloopx/android/ui/activities/fj;

    iget-object v2, v2, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->e(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    return-void
.end method
