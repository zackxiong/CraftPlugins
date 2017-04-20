.class Lcom/yf/smart/weloopx/android/ui/activities/fi;
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
    .line 132
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fi;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 135
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fi;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "ignore_device"

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/fi;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    const v3, 0x7f070128

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03004d

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 139
    return-void
.end method
