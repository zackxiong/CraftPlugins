.class public Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/view/d;
.implements Lcom/yf/smart/weloopx/android/ui/c/ca$a;


# instance fields
.field a:Landroid/webkit/WebView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00f3
    .end annotation
.end field

.field b:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017d
    .end annotation
.end field

.field protected c:I

.field private final d:Ljava/lang/String;

.field private e:Lcom/yf/gattlib/client/b/e;

.field private f:I

.field private g:Landroid/widget/TextView;

.field private h:Lcom/todddavies/components/progressbar/ProgressWheel2;

.field private i:Landroid/view/View;

.field private j:I

.field private k:Landroid/view/View;

.field private l:Lcom/yf/gattlib/client/b/a/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 45
    const-string v0, "ProblemDiagnosisActivity"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->d:Ljava/lang/String;

    .line 59
    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->c:I

    .line 62
    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->j:I

    .line 163
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/fj;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fj;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->l:Lcom/yf/gattlib/client/b/a/a;

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->j:I

    return p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)Lcom/todddavies/components/progressbar/ProgressWheel2;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->h:Lcom/todddavies/components/progressbar/ProgressWheel2;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/fi;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fi;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method

.method private a(Landroid/app/DialogFragment;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 293
    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 294
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 295
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 101
    const-string v2, "weloopopen=restartdevice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    const-string v2, "ProblemDiagnosisActivity \u91cd\u542f\u8bbe\u5907"

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/yf/smart/weloopx/android/ui/c/ca;->a(Landroid/app/FragmentManager;Z)V

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    const-string v2, "weloopopen=feedback"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    const-string v1, "ProblemDiagnosisActivity \u53cd\u9988"

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 107
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    :cond_2
    const-string v2, "weloopopen=repairfont"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 111
    const-string v1, "ProblemDiagnosisActivity \u4fee\u590d\u5b57\u5e93"

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->c()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 120
    goto :goto_0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    const v0, 0x7f0d00c9

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->g:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->g:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/din-light.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 152
    const v0, 0x7f0d00c2

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/todddavies/components/progressbar/ProgressWheel2;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->h:Lcom/todddavies/components/progressbar/ProgressWheel2;

    .line 154
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->h:Lcom/todddavies/components/progressbar/ProgressWheel2;

    invoke-virtual {v0, v2}, Lcom/todddavies/components/progressbar/ProgressWheel2;->setProgress(I)V

    .line 155
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->h:Lcom/todddavies/components/progressbar/ProgressWheel2;

    invoke-virtual {v0, v2}, Lcom/todddavies/components/progressbar/ProgressWheel2;->setVisibility(I)V

    .line 157
    const v0, 0x7f0d00c8

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->i:Landroid/view/View;

    .line 158
    const v0, 0x7f0d00f4

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->k:Landroid/view/View;

    .line 159
    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->k:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 251
    invoke-static {}, Lcom/yf/gattlib/c/e;->d()I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->f:I

    .line 252
    new-instance v0, Lcom/yf/gattlib/client/b/c;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->l:Lcom/yf/gattlib/client/b/a/a;

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->f:I

    invoke-direct {v0, v1, v2}, Lcom/yf/gattlib/client/b/c;-><init>(Lcom/yf/gattlib/client/b/a/a;I)V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/c;->f()Lcom/yf/gattlib/client/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->e:Lcom/yf/gattlib/client/b/e;

    .line 255
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 258
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/fo;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fo;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 266
    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->d()V

    return-void
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->j:I

    return v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->e:Lcom/yf/gattlib/client/b/e;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->e:Lcom/yf/gattlib/client/b/e;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/e;->i()V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->e:Lcom/yf/gattlib/client/b/e;

    .line 282
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 285
    const v0, 0x7f0701d6

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ae;->a(I)Lcom/yf/smart/weloopx/android/ui/c/ae;

    move-result-object v0

    .line 287
    const-string v1, "ProblemDiagnosisActivity"

    invoke-direct {p0, v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->a(Landroid/app/DialogFragment;Ljava/lang/String;)V

    .line 288
    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 0

    .prologue
    .line 125
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->a()V

    .line 128
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/yf/gattlib/view/c;)Z
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p2}, Lcom/yf/gattlib/view/c;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 307
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 301
    :pswitch_0
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->e()V

    .line 302
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->finish()V

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x9002
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->h()V

    .line 274
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 69
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->requestWindowFeature(I)Z

    .line 71
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->setContentView(I)V

    .line 72
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 73
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "device_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProblemDiagnosisActivitydevice type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 76
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 77
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 78
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 79
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 80
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 81
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->a:Landroid/webkit/WebView;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yf/smart/weloopx/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/fg;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fg;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 91
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/fh;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fh;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/ProblemDiagnosisActivity;->b()V

    .line 98
    return-void
.end method
