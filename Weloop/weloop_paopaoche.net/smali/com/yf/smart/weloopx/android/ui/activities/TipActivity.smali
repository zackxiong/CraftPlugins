.class public Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/media/MediaPlayer;

.field private c:Landroid/os/Handler;

.field private d:Landroid/content/Intent;

.field private e:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->d:Landroid/content/Intent;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 92
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 93
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 94
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    const-string v1, "weloop.screen.on"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 169
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 54
    if-nez p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->finish()V

    .line 89
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0, v5}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->setIntent(Landroid/content/Intent;)V

    .line 59
    const-string v0, "EXTRA_MESSAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    const-string v0, "EXTRA_SOUND"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "find phone msg = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " sound = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 64
    const v0, 0x7f0d014e

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 68
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 69
    invoke-direct {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->a(Ljava/lang/String;)V

    .line 73
    :goto_1
    invoke-virtual {p0, v5}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->setIntent(Landroid/content/Intent;)V

    .line 75
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->a()V

    .line 76
    if-nez v1, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->finish()V

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->c:Landroid/os/Handler;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/gj;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/gj;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;)V

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->d:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 105
    invoke-direct {p0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->a(Landroid/content/Context;)V

    .line 106
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->requestWindowFeature(I)Z

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->d:Landroid/content/Intent;

    .line 34
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->d:Landroid/content/Intent;

    const-string v1, "com.yf.weloop.find.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->a:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->setFinishOnTouchOutside(Z)V

    .line 39
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->a(Landroid/content/Intent;)V

    .line 42
    const v0, 0x7f0d00a3

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->e:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f07003e

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->b:Landroid/media/MediaPlayer;

    .line 139
    :cond_0
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->a:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 141
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->a:Ljava/lang/String;

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->a(Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method public onOk(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->d:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->stopService(Landroid/content/Intent;)Z

    .line 145
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->finish()V

    .line 146
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->a:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 125
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 116
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->a:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->a:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 112
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/activities/TipActivity;->a:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 131
    return-void
.end method
