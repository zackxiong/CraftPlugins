.class public Lpl/gatti/dgcam/DgCamActivity;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Landroid/content/BroadcastReceiver;

.field a:Landroid/os/Handler;

.field private c:I

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Lpl/gatti/dgcam/a;

.field private l:Lpl/gatti/dgcam/ac;

.field private m:Lpl/gatti/dgcam/z;

.field private n:Lpl/gatti/dgcam/b;

.field private o:I

.field private p:Landroid/os/Handler;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private w:Ljava/util/TimerTask;

.field private x:Ljava/util/Timer;

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lpl/gatti/dgcam/DgCamActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpl/gatti/dgcam/DgCamActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 55
    const/16 v0, 0x7f

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lpl/gatti/dgcam/DgCamActivity;->c:I

    .line 71
    iput v1, p0, Lpl/gatti/dgcam/DgCamActivity;->o:I

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->p:Landroid/os/Handler;

    .line 73
    iput-boolean v1, p0, Lpl/gatti/dgcam/DgCamActivity;->q:Z

    .line 74
    iput-boolean v3, p0, Lpl/gatti/dgcam/DgCamActivity;->r:Z

    .line 75
    iput-boolean v1, p0, Lpl/gatti/dgcam/DgCamActivity;->s:Z

    .line 76
    iput-boolean v1, p0, Lpl/gatti/dgcam/DgCamActivity;->t:Z

    .line 77
    iput-boolean v3, p0, Lpl/gatti/dgcam/DgCamActivity;->u:Z

    .line 81
    iput v1, p0, Lpl/gatti/dgcam/DgCamActivity;->y:I

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->z:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->A:Ljava/lang/String;

    .line 84
    new-instance v0, Lpl/gatti/dgcam/c;

    invoke-direct {v0, p0}, Lpl/gatti/dgcam/c;-><init>(Lpl/gatti/dgcam/DgCamActivity;)V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->B:Landroid/content/BroadcastReceiver;

    .line 265
    new-instance v0, Lpl/gatti/dgcam/i;

    invoke-direct {v0, p0}, Lpl/gatti/dgcam/i;-><init>(Lpl/gatti/dgcam/DgCamActivity;)V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lpl/gatti/dgcam/DgCamActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lpl/gatti/dgcam/DgCamActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lpl/gatti/dgcam/DgCamActivity;->z:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 328
    if-nez p1, :cond_1

    .line 329
    invoke-virtual {p0}, Lpl/gatti/dgcam/DgCamActivity;->finish()V

    .line 368
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 332
    :cond_1
    const-string v0, "EXTRA_CODE"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 334
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 338
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lpl/gatti/dgcam/DgCamActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5f00\u59cb\u62cd\u7167 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivity;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivity;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 340
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivity;->c()V

    goto :goto_0

    .line 341
    :cond_2
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->m:Lpl/gatti/dgcam/z;

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->m:Lpl/gatti/dgcam/z;

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->b()V

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivity;->u:Z

    .line 344
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivity;->c()V

    goto :goto_0

    .line 348
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lpl/gatti/dgcam/DgCamActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u7ed3\u675f\u5f55\u50cf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->m:Lpl/gatti/dgcam/z;

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivity;->i()V

    .line 351
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 355
    :pswitch_3
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lpl/gatti/dgcam/DgCamActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5f00\u59cb\u5f55\u50cf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 357
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivity;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lpl/gatti/dgcam/DgCamActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ~~~~~1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 359
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivity;->d()V

    goto/16 :goto_0

    .line 360
    :cond_3
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->m:Lpl/gatti/dgcam/z;

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lpl/gatti/dgcam/DgCamActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ~~~~~2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 362
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivity;->i()V

    goto/16 :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    const v0, 0x7f0d00a2

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->h:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->h:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const v0, 0x7f0d009e

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->d:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->d:Landroid/view/View;

    iget v1, p0, Lpl/gatti/dgcam/DgCamActivity;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 109
    const v0, 0x7f0d00a5

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->e:Landroid/widget/ImageView;

    .line 110
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->e:Landroid/widget/ImageView;

    new-instance v1, Lpl/gatti/dgcam/d;

    invoke-direct {v1, p0}, Lpl/gatti/dgcam/d;-><init>(Lpl/gatti/dgcam/DgCamActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f0d00a6

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->f:Landroid/widget/ImageView;

    .line 127
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->f:Landroid/widget/ImageView;

    new-instance v1, Lpl/gatti/dgcam/e;

    invoke-direct {v1, p0}, Lpl/gatti/dgcam/e;-><init>(Lpl/gatti/dgcam/DgCamActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f0d009c

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->i:Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->i:Landroid/widget/Button;

    new-instance v1, Lpl/gatti/dgcam/f;

    invoke-direct {v1, p0}, Lpl/gatti/dgcam/f;-><init>(Lpl/gatti/dgcam/DgCamActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v0, 0x7f0d00a0

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->j:Landroid/widget/Button;

    .line 155
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->j:Landroid/widget/Button;

    new-instance v1, Lpl/gatti/dgcam/g;

    invoke-direct {v1, p0}, Lpl/gatti/dgcam/g;-><init>(Lpl/gatti/dgcam/DgCamActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v0, 0x7f0d00a1

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->g:Landroid/widget/ImageView;

    .line 175
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    new-instance v0, Lpl/gatti/dgcam/a;

    invoke-direct {v0, p0}, Lpl/gatti/dgcam/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->k:Lpl/gatti/dgcam/a;

    .line 179
    new-instance v0, Lpl/gatti/dgcam/ac;

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivity;->k:Lpl/gatti/dgcam/a;

    invoke-direct {v0, p0, v1}, Lpl/gatti/dgcam/ac;-><init>(Landroid/app/Activity;Lpl/gatti/dgcam/a;)V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->l:Lpl/gatti/dgcam/ac;

    .line 180
    new-instance v0, Lpl/gatti/dgcam/z;

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivity;->k:Lpl/gatti/dgcam/a;

    invoke-direct {v0, p0, v1}, Lpl/gatti/dgcam/z;-><init>(Landroid/app/Activity;Lpl/gatti/dgcam/a;)V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->m:Lpl/gatti/dgcam/z;

    .line 181
    if-eqz p1, :cond_1

    .line 182
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->k:Lpl/gatti/dgcam/a;

    const-string v1, "CAMERA_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/gatti/dgcam/a;->a(I)V

    .line 187
    :goto_0
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->k:Lpl/gatti/dgcam/a;

    invoke-virtual {v0}, Lpl/gatti/dgcam/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->k:Lpl/gatti/dgcam/a;

    invoke-virtual {v0}, Lpl/gatti/dgcam/a;->e()V

    .line 190
    :cond_0
    new-instance v0, Lcom/yf/gattlib/client/b/v;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/v;-><init>()V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/v;->f()Lcom/yf/gattlib/client/b/e;

    .line 191
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->k:Lpl/gatti/dgcam/a;

    invoke-virtual {v0, v2}, Lpl/gatti/dgcam/a;->a(I)V

    goto :goto_0
.end method

.method static synthetic a(Lpl/gatti/dgcam/DgCamActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lpl/gatti/dgcam/DgCamActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 490
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    const/4 v0, 0x1

    .line 496
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lpl/gatti/dgcam/DgCamActivity;)Z
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivity;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lpl/gatti/dgcam/DgCamActivity;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lpl/gatti/dgcam/DgCamActivity;->r:Z

    return p1
.end method

.method static synthetic b(Lpl/gatti/dgcam/DgCamActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lpl/gatti/dgcam/DgCamActivity;->A:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lpl/gatti/dgcam/DgCamActivity;)Lpl/gatti/dgcam/z;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->m:Lpl/gatti/dgcam/z;

    return-object v0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->l:Lpl/gatti/dgcam/ac;

    invoke-virtual {v0}, Lpl/gatti/dgcam/ac;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->m:Lpl/gatti/dgcam/z;

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivity;->q:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lpl/gatti/dgcam/DgCamActivity;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lpl/gatti/dgcam/DgCamActivity;->s:Z

    return p1
.end method

.method private c()V
    .locals 3

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lpl/gatti/dgcam/DgCamActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6267\u884c\u62cd\u7167"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 207
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivity;->h()V

    .line 209
    :try_start_0
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->m:Lpl/gatti/dgcam/z;

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->c()V

    .line 210
    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivity;->l:Lpl/gatti/dgcam/ac;

    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivity;->s:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3e9

    :goto_0
    iget-boolean v2, p0, Lpl/gatti/dgcam/DgCamActivity;->r:Z

    invoke-virtual {v1, v0, v2}, Lpl/gatti/dgcam/ac;->a(IZ)V

    .line 212
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->j:Landroid/widget/Button;

    const v1, 0x7f07025e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 213
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget v0, p0, Lpl/gatti/dgcam/DgCamActivity;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpl/gatti/dgcam/DgCamActivity;->o:I

    .line 215
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->h:Landroid/widget/TextView;

    iget v1, p0, Lpl/gatti/dgcam/DgCamActivity;->o:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_1
    return-void

    .line 210
    :cond_0
    const/16 v0, 0x3ea

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    sget-object v1, Lpl/gatti/dgcam/DgCamActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic c(Lpl/gatti/dgcam/DgCamActivity;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivity;->r:Z

    return v0
.end method

.method static synthetic c(Lpl/gatti/dgcam/DgCamActivity;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lpl/gatti/dgcam/DgCamActivity;->t:Z

    return p1
.end method

.method static synthetic d(Lpl/gatti/dgcam/DgCamActivity;)Lpl/gatti/dgcam/a;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->k:Lpl/gatti/dgcam/a;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lpl/gatti/dgcam/DgCamActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5f00\u59cb\u6267\u884c\u5f55\u50cf \u662f\u5426\u4fdd\u5b58\u5b8c\u6bd5 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lpl/gatti/dgcam/DgCamActivity;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->k:Lpl/gatti/dgcam/a;

    invoke-virtual {v0}, Lpl/gatti/dgcam/a;->f()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_1

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lpl/gatti/dgcam/DgCamActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6211\u64cd\u4ed6\u59b9\uff0cCamera\u51fa\u9519\u4e86"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivity;->u:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->j:Landroid/widget/Button;

    const v1, 0x7f0702bd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 230
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->j:Landroid/widget/Button;

    const v1, 0x7f02012b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 231
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 232
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iput-boolean v2, p0, Lpl/gatti/dgcam/DgCamActivity;->u:Z

    .line 236
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivity;->e()V

    .line 238
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->m:Lpl/gatti/dgcam/z;

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->a()V

    goto :goto_0
.end method

.method static synthetic d(Lpl/gatti/dgcam/DgCamActivity;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lpl/gatti/dgcam/DgCamActivity;->u:Z

    return p1
.end method

.method private e()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lpl/gatti/dgcam/DgCamActivity;->y:I

    .line 245
    new-instance v0, Lpl/gatti/dgcam/h;

    invoke-direct {v0, p0}, Lpl/gatti/dgcam/h;-><init>(Lpl/gatti/dgcam/DgCamActivity;)V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->w:Ljava/util/TimerTask;

    .line 254
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->x:Ljava/util/Timer;

    .line 255
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->x:Ljava/util/Timer;

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivity;->w:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 256
    return-void
.end method

.method static synthetic e(Lpl/gatti/dgcam/DgCamActivity;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivity;->k()V

    return-void
.end method

.method static synthetic f(Lpl/gatti/dgcam/DgCamActivity;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivity;->s:Z

    return v0
.end method

.method static synthetic g(Lpl/gatti/dgcam/DgCamActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->i:Landroid/widget/Button;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->x:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->x:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->x:Ljava/util/Timer;

    .line 263
    :cond_0
    return-void
.end method

.method static synthetic h(Lpl/gatti/dgcam/DgCamActivity;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivity;->t:Z

    return v0
.end method

.method static synthetic i(Lpl/gatti/dgcam/DgCamActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 291
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {p0}, Lpl/gatti/dgcam/DgCamActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lpl/gatti/dgcam/DgCamActivity;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 292
    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivity;->q:Z

    if-eqz v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivity;->q:Z

    .line 296
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->p:Landroid/os/Handler;

    new-instance v1, Lpl/gatti/dgcam/j;

    invoke-direct {v1, p0}, Lpl/gatti/dgcam/j;-><init>(Lpl/gatti/dgcam/DgCamActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivity;->h()V

    goto :goto_0
.end method

.method static synthetic j(Lpl/gatti/dgcam/DgCamActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->j:Landroid/widget/Button;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->x:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->x:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->x:Ljava/util/Timer;

    .line 316
    :cond_0
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->j:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 317
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->m:Lpl/gatti/dgcam/z;

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->b()V

    .line 318
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->m:Lpl/gatti/dgcam/z;

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->c()V

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivity;->q:Z

    .line 320
    return-void
.end method

.method static synthetic k(Lpl/gatti/dgcam/DgCamActivity;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lpl/gatti/dgcam/DgCamActivity;->o:I

    return v0
.end method

.method private k()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 440
    new-instance v0, Lpl/gatti/dgcam/b;

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivity;->k:Lpl/gatti/dgcam/a;

    invoke-direct {v0, p0, v1}, Lpl/gatti/dgcam/b;-><init>(Landroid/content/Context;Lpl/gatti/dgcam/a;)V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->n:Lpl/gatti/dgcam/b;

    .line 441
    const v0, 0x7f0d009b

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 444
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 446
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 451
    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivity;->n:Lpl/gatti/dgcam/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 452
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->n:Lpl/gatti/dgcam/b;

    new-instance v1, Lpl/gatti/dgcam/k;

    invoke-direct {v1, p0}, Lpl/gatti/dgcam/k;-><init>(Lpl/gatti/dgcam/DgCamActivity;)V

    invoke-virtual {v0, v1}, Lpl/gatti/dgcam/b;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 469
    return-void
.end method

.method static synthetic l(Lpl/gatti/dgcam/DgCamActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->k:Lpl/gatti/dgcam/a;

    invoke-virtual {v0}, Lpl/gatti/dgcam/a;->b()V

    .line 484
    return-void
.end method

.method static synthetic m(Lpl/gatti/dgcam/DgCamActivity;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lpl/gatti/dgcam/DgCamActivity;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpl/gatti/dgcam/DgCamActivity;->y:I

    return v0
.end method

.method private m()Z
    .locals 3

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 502
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 503
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    const/4 v0, 0x1

    .line 506
    :cond_0
    return v0
.end method

.method static synthetic n(Lpl/gatti/dgcam/DgCamActivity;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lpl/gatti/dgcam/DgCamActivity;->y:I

    return v0
.end method

.method static synthetic o(Lpl/gatti/dgcam/DgCamActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lpl/gatti/dgcam/DgCamActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lpl/gatti/dgcam/DgCamActivity;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivity;->j()V

    return-void
.end method

.method static synthetic r(Lpl/gatti/dgcam/DgCamActivity;)Lpl/gatti/dgcam/ac;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->l:Lpl/gatti/dgcam/ac;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lpl/gatti/dgcam/DgCamActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 96
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivity;->setContentView(I)V

    .line 98
    invoke-virtual {p0}, Lpl/gatti/dgcam/DgCamActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivity;->d(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0, p1}, Lpl/gatti/dgcam/DgCamActivity;->a(Landroid/os/Bundle;)V

    .line 101
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->x:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->x:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->x:Ljava/util/Timer;

    .line 377
    :cond_0
    new-instance v0, Lcom/yf/gattlib/client/b/w;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/w;-><init>()V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/w;->f()Lcom/yf/gattlib/client/b/e;

    .line 378
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onDestroy()V

    .line 379
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 473
    invoke-static {p0}, Landroid/support/v4/a/d;->a(Landroid/content/Context;)Landroid/support/v4/a/d;

    move-result-object v0

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivity;->B:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/d;->a(Landroid/content/BroadcastReceiver;)V

    .line 474
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivity;->j()V

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivity;->u:Z

    .line 476
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivity;->l()V

    .line 477
    const v0, 0x7f0d009b

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 478
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 479
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onPause()V

    .line 480
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 430
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onRestart()V

    .line 431
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 383
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onResume()V

    .line 384
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    invoke-direct {p0, p0}, Lpl/gatti/dgcam/DgCamActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lpl/gatti/dgcam/DgCamActivity;->finish()V

    .line 410
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivity;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 391
    invoke-virtual {p0}, Lpl/gatti/dgcam/DgCamActivity;->finish()V

    goto :goto_0

    .line 395
    :cond_1
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivity;->k()V

    .line 396
    invoke-static {p0}, Landroid/support/v4/a/d;->a(Landroid/content/Context;)Landroid/support/v4/a/d;

    move-result-object v0

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivity;->B:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "pl.gatti.dgcam.ACTION_TAKE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/d;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 398
    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivity;->t:Z

    if-eqz v0, :cond_2

    .line 399
    new-instance v0, Lcom/yf/gattlib/client/b/y;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/y;-><init>()V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/y;->f()Lcom/yf/gattlib/client/b/e;

    .line 401
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->j:Landroid/widget/Button;

    const v1, 0x7f0702bd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 402
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->h:Landroid/widget/TextView;

    const-string v1, "0\'00\'\'"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 405
    :cond_2
    new-instance v0, Lcom/yf/gattlib/client/b/v;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/v;-><init>()V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/v;->f()Lcom/yf/gattlib/client/b/e;

    .line 406
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->j:Landroid/widget/Button;

    const v1, 0x7f07025e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 408
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->h:Landroid/widget/TextView;

    iget v1, p0, Lpl/gatti/dgcam/DgCamActivity;->o:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 200
    const-string v0, "CAMERA_ID"

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivity;->k:Lpl/gatti/dgcam/a;

    invoke-virtual {v1}, Lpl/gatti/dgcam/a;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 202
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 435
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onStart()V

    .line 436
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->x:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->x:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->x:Ljava/util/Timer;

    .line 418
    :cond_0
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivity;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivity;->t:Z

    if-eqz v0, :cond_1

    .line 423
    new-instance v0, Lcom/yf/gattlib/client/b/w;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/w;-><init>()V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/w;->f()Lcom/yf/gattlib/client/b/e;

    .line 425
    :cond_1
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onStop()V

    .line 426
    return-void
.end method
