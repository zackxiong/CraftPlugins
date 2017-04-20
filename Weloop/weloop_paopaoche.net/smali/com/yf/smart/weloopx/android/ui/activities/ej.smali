.class Lcom/yf/smart/weloopx/android/ui/activities/ej;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ej;->a:Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ej;->a:Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;

    invoke-static {v0, p2}, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return v2

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ej;->a:Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 71
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ej;->a:Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 72
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
