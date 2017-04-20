.class public Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 97
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 79
    const-string v1, "weloopopen=restartdevice"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    const-string v1, "MoreProductActivity \u91cd\u542f\u8bbe\u5907"

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    const-string v1, "weloopopen=feedback"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 112
    :pswitch_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->finish()V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x7f0d017d
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 38
    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->requestWindowFeature(I)Z

    .line 39
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f030089

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const v0, 0x7f07017c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->b(I)V

    .line 44
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->finish()V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    const v0, 0x7f0d016e

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->c:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v0, 0x7f0d017d

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->b:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f0d0262

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->a:Landroid/webkit/WebView;

    .line 55
    const v0, 0x7f0d0264

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->d:Landroid/widget/ProgressBar;

    .line 56
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 57
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 58
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 59
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 60
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 61
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 62
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity$a;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;Lcom/yf/smart/weloopx/android/ui/activities/ej;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 63
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/ej;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ej;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 76
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 120
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onDestroy()V

    .line 121
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
