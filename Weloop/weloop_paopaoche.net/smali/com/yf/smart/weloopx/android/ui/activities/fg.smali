.class Lcom/yf/smart/weloopx/android/ui/activities/fg;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fg;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 84
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fg;->a:Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;

    invoke-static {v0, p2}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return v1

    .line 87
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
