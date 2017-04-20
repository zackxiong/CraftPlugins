.class public Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017e
    .end annotation
.end field

.field b:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017d
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d016e
    .end annotation
.end field

.field d:Landroid/webkit/WebView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00f1
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 24
    const-string v0, "MsgDetailActivity"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->e:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->f:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->f:Ljava/lang/String;

    .line 54
    :cond_0
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 57
    const-string v0, "\u52a0\u8f7d\u4e2d"

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->d(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 59
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f070175

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 65
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 66
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/ek;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ek;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 81
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 87
    :pswitch_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->finish()V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x7f0d017d
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->requestWindowFeature(I)Z

    .line 41
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->setContentView(I)V

    .line 42
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 44
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->a()V

    .line 45
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->b()V

    .line 47
    return-void
.end method
