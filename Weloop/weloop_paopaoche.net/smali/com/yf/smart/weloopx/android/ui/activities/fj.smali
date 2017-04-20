.class Lcom/yf/smart/weloopx/android/ui/activities/fj;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/a/a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(B)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    if-nez p1, :cond_1

    .line 239
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 244
    :cond_0
    :goto_0
    return-object v0

    .line 240
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/fk;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fk;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/fj;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/fn;

    invoke-direct {v1, p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/fn;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/fj;I)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method public a(II)V
    .locals 3

    .prologue
    .line 196
    mul-int/lit16 v0, p2, 0x168

    div-int/2addr v0, p1

    .line 197
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    iget v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->c:I

    if-le v0, v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    iput v0, v1, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->c:I

    .line 199
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)V

    .line 201
    :cond_0
    const-string v0, "ProblemDiagnosisActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v2, p2, 0x64

    div-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    mul-int/lit8 v1, p2, 0x64

    div-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;I)I

    .line 203
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/fm;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fm;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/fj;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fj;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/fl;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fl;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/fj;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method
