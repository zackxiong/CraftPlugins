.class public Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;
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
        a = 0x7f0d0117
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private f:Landroid/view/View;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/yf/smart/weloopx/g/d;

.field private j:Lcom/yf/smart/weloopx/view/o;

.field private k:Z

.field private l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 30
    const-string v0, "RunningInfoDetailsActivity"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->e:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->g:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->h:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->k:Z

    .line 142
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/fy;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fy;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->l:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->a:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->k:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->a:Landroid/widget/Button;

    const v2, 0x7f07021e

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->a:Landroid/widget/Button;

    const v2, 0x7f020067

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 67
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->a:Landroid/widget/Button;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->i:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v2, p0, v4}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->i:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v3, p0, v4}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 68
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->c:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->k:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0702c1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v0, Lcom/yf/smart/weloopx/view/o;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->l:Landroid/view/View$OnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/yf/smart/weloopx/view/o;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->j:Lcom/yf/smart/weloopx/view/o;

    .line 71
    const v0, 0x7f070150

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->d(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 75
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 76
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    const v0, 0x7f07017c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->b(I)V

    .line 78
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->finish()V

    .line 100
    :goto_2
    return-void

    :cond_0
    move v0, v1

    .line 63
    goto :goto_0

    .line 68
    :cond_1
    const v0, 0x7f0701ef

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 81
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RunningInfoDetailsActivity \u8dd1\u6b65\u8be6\u60c5\u754c\u9762\u4e2d\u7684url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/fx;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fx;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 103
    new-instance v0, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->i:Lcom/yf/smart/weloopx/g/d;

    .line 104
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->g:Ljava/lang/String;

    .line 107
    const-string v1, "DISTANCE"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->h:Ljava/lang/String;

    .line 108
    const-string v1, "ACTICATION_TERMS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->k:Z

    .line 111
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;)Lcom/yf/smart/weloopx/g/d;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->i:Lcom/yf/smart/weloopx/g/d;

    return-object v0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;)Lcom/yf/smart/weloopx/view/o;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->j:Lcom/yf/smart/weloopx/view/o;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 118
    :pswitch_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->finish()V

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->j:Lcom/yf/smart/weloopx/view/o;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->f:Landroid/view/View;

    const/16 v2, 0x51

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/yf/smart/weloopx/view/o;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d017d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->requestWindowFeature(I)Z

    .line 53
    const v0, 0x7f03002e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->f:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->setContentView(Landroid/view/View;)V

    .line 55
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 57
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->b()V

    .line 58
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->a()V

    .line 59
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/aw;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->f()V

    .line 138
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;->finish()V

    goto :goto_0
.end method
