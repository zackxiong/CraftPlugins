.class Lcom/yf/smart/weloopx/android/ui/activities/fh;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fh;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fh;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->finish()V

    .line 95
    return-void
.end method
