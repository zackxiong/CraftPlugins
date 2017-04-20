.class Lcom/yf/smart/weloopx/android/ui/activities/fx;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fx;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fx;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 90
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 95
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fx;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fx;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "RunningInfoDetailsActivity"

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 96
    return-void
.end method
