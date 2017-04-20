.class Lcom/yf/smart/weloopx/android/ui/activities/bc;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 0

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bc;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1304
    const-string v0, "\u95ee\u9898\u53cd\u9988"

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bc;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v2, 0x7f0701bc

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->G(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1305
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bc;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1306
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bc;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->startActivity(Landroid/content/Intent;)V

    .line 1313
    :goto_0
    return-void

    .line 1308
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bc;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1309
    const-string v1, "device_type"

    invoke-static {}, Lcom/yf/smart/weloopx/c/w;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1310
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bc;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
