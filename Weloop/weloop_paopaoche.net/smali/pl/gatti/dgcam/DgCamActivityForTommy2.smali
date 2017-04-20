.class public Lpl/gatti/dgcam/DgCamActivityForTommy2;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lpl/gatti/dgcam/ab;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# static fields
.field public static a:Z


# instance fields
.field private A:Landroid/view/View;

.field private B:Ljava/util/Timer;

.field private C:I

.field private D:I

.field private E:Lcom/yf/smart/weloopx/g/d;

.field private F:Ljava/lang/String;

.field private G:Z

.field private H:Z

.field private I:Lcom/b/a/a;

.field private J:Lcom/yf/smart/weloopx/b/b;

.field private K:Landroid/content/BroadcastReceiver;

.field private L:Ljava/lang/Runnable;

.field private M:Landroid/view/GestureDetector$OnGestureListener;

.field private N:Ljava/lang/Runnable;

.field private O:Lcom/yf/gattlib/d/b$a;

.field private b:Lpl/gatti/dgcam/a;

.field private c:Lpl/gatti/dgcam/ac;

.field private d:Lpl/gatti/dgcam/z;

.field private e:Landroid/view/GestureDetector;

.field private f:Landroid/os/Handler;

.field private g:Landroid/os/Handler;

.field private h:Ljava/util/Timer;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Landroid/widget/FrameLayout;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Landroid/widget/RelativeLayout;

.field private z:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->f:Landroid/os/Handler;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->g:Landroid/os/Handler;

    .line 79
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->h:Ljava/util/Timer;

    .line 81
    iput-boolean v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->i:Z

    .line 83
    iput-boolean v2, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->j:Z

    .line 85
    iput-boolean v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->k:Z

    .line 87
    iput-boolean v2, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->l:Z

    .line 89
    iput-boolean v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->m:Z

    .line 108
    iput v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->C:I

    .line 110
    iput v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->D:I

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->F:Ljava/lang/String;

    .line 115
    iput-boolean v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->G:Z

    .line 117
    iput-boolean v2, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->H:Z

    .line 266
    new-instance v0, Lpl/gatti/dgcam/l;

    invoke-direct {v0, p0}, Lpl/gatti/dgcam/l;-><init>(Lpl/gatti/dgcam/DgCamActivityForTommy2;)V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->K:Landroid/content/BroadcastReceiver;

    .line 681
    new-instance v0, Lpl/gatti/dgcam/q;

    invoke-direct {v0, p0}, Lpl/gatti/dgcam/q;-><init>(Lpl/gatti/dgcam/DgCamActivityForTommy2;)V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->L:Ljava/lang/Runnable;

    .line 786
    new-instance v0, Lpl/gatti/dgcam/u;

    invoke-direct {v0, p0}, Lpl/gatti/dgcam/u;-><init>(Lpl/gatti/dgcam/DgCamActivityForTommy2;)V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->M:Landroid/view/GestureDetector$OnGestureListener;

    .line 806
    new-instance v0, Lpl/gatti/dgcam/v;

    invoke-direct {v0, p0}, Lpl/gatti/dgcam/v;-><init>(Lpl/gatti/dgcam/DgCamActivityForTommy2;)V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->N:Ljava/lang/Runnable;

    .line 822
    new-instance v0, Lpl/gatti/dgcam/x;

    invoke-direct {v0, p0}, Lpl/gatti/dgcam/x;-><init>(Lpl/gatti/dgcam/DgCamActivityForTommy2;)V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->O:Lcom/yf/gattlib/d/b$a;

    return-void
.end method

.method static synthetic a(Lpl/gatti/dgcam/DgCamActivityForTommy2;)I
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->C:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->C:I

    return v0
.end method

.method static synthetic a(Lpl/gatti/dgcam/DgCamActivityForTommy2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->F:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 204
    new-instance v0, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->E:Lcom/yf/smart/weloopx/g/d;

    .line 205
    new-instance v0, Lcom/b/a/a;

    invoke-direct {v0, p0}, Lcom/b/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->I:Lcom/b/a/a;

    .line 206
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->J:Lcom/yf/smart/weloopx/b/b;

    .line 207
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->J:Lcom/yf/smart/weloopx/b/b;

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->O:Lcom/yf/gattlib/d/b$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->a(Lcom/yf/gattlib/d/b$a;)V

    .line 208
    return-void
.end method

.method private a(II)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 437
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->m()Ljava/lang/String;

    move-result-object v3

    .line 438
    const-string v0, "V 4.02"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    move v0, v1

    .line 439
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DgCamActivityForTommy2 \u5f00\u59cb\u5904\u7406 channel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", operationType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isMaxVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", curFirmeVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 440
    if-nez v0, :cond_3

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DgCamActivityForTommy2 \u4f4e\u7248\u672c \u5f00\u59cb\u62cd\u7167 \u6444\u50cf\u5934\u662f\u4e0d\u662f\u5f88\u5fd9 = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->p:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 443
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 444
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->c()V

    .line 491
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 438
    goto :goto_0

    .line 445
    :cond_2
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->d:Lpl/gatti/dgcam/z;

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->d:Lpl/gatti/dgcam/z;

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->b()V

    .line 447
    iput-boolean v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->l:Z

    .line 448
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->c()V

    goto :goto_1

    .line 451
    :cond_3
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 453
    :pswitch_0
    const-string v0, "DgCamActivityForTommy2 \u5207\u6362\u5f55\u50cf\u754c\u9762"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 454
    iput-boolean v2, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->H:Z

    .line 455
    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->H:Z

    invoke-direct {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b(Z)V

    goto :goto_1

    .line 459
    :pswitch_1
    const-string v0, "DgCamActivityForTommy2 \u5207\u6362\u62cd\u7167\u754c\u9762"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 460
    iput-boolean v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->H:Z

    .line 461
    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->H:Z

    invoke-direct {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b(Z)V

    goto :goto_1

    .line 465
    :pswitch_2
    const-string v0, "DgCamActivityForTommy2 \u6267\u884c\u62cd\u7167"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->p:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 467
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 468
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->c()V

    goto :goto_1

    .line 469
    :cond_4
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->d:Lpl/gatti/dgcam/z;

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->d:Lpl/gatti/dgcam/z;

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->b()V

    .line 471
    iput-boolean v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->l:Z

    .line 472
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->c()V

    goto :goto_1

    .line 477
    :pswitch_3
    const-string v0, "DgCamActivityForTommy2 \u95ea\u5149\u706f\u5173\u95ed"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 478
    iput-boolean v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->k:Z

    .line 479
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->p()V

    goto :goto_1

    .line 483
    :pswitch_4
    const-string v0, "DgCamActivityForTommy2 \u95ea\u5149\u706f\u6253\u5f00"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 484
    iput-boolean v2, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->k:Z

    .line 485
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->p()V

    goto :goto_1

    .line 451
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 387
    if-nez p1, :cond_1

    .line 388
    invoke-virtual {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->finish()V

    .line 427
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 391
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 392
    if-eqz v1, :cond_0

    .line 395
    const-string v2, "EXTRA_CODE"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 397
    const-string v3, "FLASH_CHANNEL"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 398
    if-ne v1, v0, :cond_2

    :goto_1
    iput-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->G:Z

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DgCamActivityForTommy2 CODE = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",isChannelFlash = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->G:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", \u95ea\u5149\u706f\u5f00\u5173 = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->k:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 401
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 405
    :pswitch_1
    const-string v0, "OPERATION_TYPE"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 406
    invoke-direct {p0, v1, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->a(II)V

    goto :goto_0

    .line 398
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 409
    :pswitch_2
    const-string v0, "DgCamActivityForTommy2 \u7ed3\u675f\u5f55\u50cf"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->d:Lpl/gatti/dgcam/z;

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->h()V

    goto :goto_0

    .line 416
    :pswitch_3
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 417
    const-string v0, "DgCamActivityForTommy2 \u5f00\u59cb\u5f55\u50cf"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 418
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->d()V

    goto :goto_0

    .line 419
    :cond_3
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->d:Lpl/gatti/dgcam/z;

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const-string v0, "DgCamActivityForTommy2 \u7ed3\u675f\u5f55\u50cf"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 421
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->h()V

    goto/16 :goto_0

    .line 401
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

    .line 211
    const v0, 0x7f0d009b

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->n:Landroid/widget/FrameLayout;

    .line 212
    const v0, 0x7f0d00b9

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->A:Landroid/view/View;

    .line 214
    const v0, 0x7f0d00a8

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->y:Landroid/widget/RelativeLayout;

    .line 215
    const v0, 0x7f0d00ae

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->x:Landroid/widget/RelativeLayout;

    .line 217
    const v0, 0x7f0d00b6

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->r:Landroid/widget/TextView;

    .line 218
    const v0, 0x7f0d00b7

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->s:Landroid/widget/TextView;

    .line 219
    const v0, 0x7f0d00b8

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->t:Landroid/widget/TextView;

    .line 220
    const v0, 0x7f0d00ab

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->u:Landroid/widget/TextView;

    .line 221
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v0, 0x7f0d00ac

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->w:Landroid/widget/TextView;

    .line 228
    const v0, 0x7f0d00b3

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->o:Landroid/widget/ImageView;

    .line 229
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    const v0, 0x7f0d00ad

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->z:Landroid/widget/ImageView;

    .line 231
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    const v0, 0x7f0d00b4

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 234
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    const v0, 0x7f0d00aa

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->p:Landroid/widget/Button;

    .line 236
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->p:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->p:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    const v0, 0x7f0d00a9

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->q:Landroid/widget/Button;

    .line 240
    const v0, 0x7f0d00af

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 241
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->g:Landroid/os/Handler;

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    new-instance v0, Lpl/gatti/dgcam/a;

    invoke-direct {v0, p0}, Lpl/gatti/dgcam/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b:Lpl/gatti/dgcam/a;

    .line 246
    new-instance v0, Lpl/gatti/dgcam/ac;

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b:Lpl/gatti/dgcam/a;

    invoke-direct {v0, p0, v1}, Lpl/gatti/dgcam/ac;-><init>(Landroid/app/Activity;Lpl/gatti/dgcam/a;)V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->c:Lpl/gatti/dgcam/ac;

    .line 247
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->c:Lpl/gatti/dgcam/ac;

    invoke-virtual {v0, p0}, Lpl/gatti/dgcam/ac;->a(Lpl/gatti/dgcam/ab;)V

    .line 248
    new-instance v0, Lpl/gatti/dgcam/z;

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b:Lpl/gatti/dgcam/a;

    invoke-direct {v0, p0, v1}, Lpl/gatti/dgcam/z;-><init>(Landroid/app/Activity;Lpl/gatti/dgcam/a;)V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->d:Lpl/gatti/dgcam/z;

    .line 249
    if-eqz p1, :cond_1

    .line 250
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b:Lpl/gatti/dgcam/a;

    const-string v1, "CAMERA_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/gatti/dgcam/a;->a(I)V

    .line 254
    :goto_0
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b:Lpl/gatti/dgcam/a;

    invoke-virtual {v0}, Lpl/gatti/dgcam/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b:Lpl/gatti/dgcam/a;

    invoke-virtual {v0}, Lpl/gatti/dgcam/a;->e()V

    .line 261
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b(Z)V

    .line 263
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->M:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->e:Landroid/view/GestureDetector;

    .line 264
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b:Lpl/gatti/dgcam/a;

    invoke-virtual {v0, v2}, Lpl/gatti/dgcam/a;->a(I)V

    goto :goto_0
.end method

.method static synthetic a(Lpl/gatti/dgcam/DgCamActivityForTommy2;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 665
    iget-object v3, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->x:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->y:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 667
    return-void

    :cond_0
    move v0, v2

    .line 665
    goto :goto_0

    :cond_1
    move v2, v1

    .line 666
    goto :goto_1
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 543
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lpl/gatti/dgcam/DgCamActivityForTommy2;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->m:Z

    return p1
.end method

.method static synthetic b(Lpl/gatti/dgcam/DgCamActivityForTommy2;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->C:I

    return v0
.end method

.method static synthetic b(Lpl/gatti/dgcam/DgCamActivityForTommy2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->e(Ljava/lang/String;)V

    return-void
.end method

.method private b(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 710
    iget-object v3, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->r:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const-string v0, "\u62cd\u7167"

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v3, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->s:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    iget-object v3, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->t:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const-string v0, "\u6444\u50cf"

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    iget-object v3, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->u:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->D:I

    if-lez v0, :cond_5

    :cond_0
    move v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 714
    iget-object v3, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->u:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->D:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "S"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 716
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->w:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 718
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 720
    return-void

    .line 710
    :cond_2
    const-string v0, "\u6444\u50cf"

    goto :goto_0

    .line 711
    :cond_3
    const-string v0, "\u62cd\u7167"

    goto :goto_1

    .line 712
    :cond_4
    const-string v0, ""

    goto :goto_2

    :cond_5
    move v0, v1

    .line 713
    goto :goto_3

    .line 714
    :cond_6
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->E:Lcom/yf/smart/weloopx/g/d;

    iget v4, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->C:I

    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/g/d;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->c:Lpl/gatti/dgcam/ac;

    invoke-virtual {v0}, Lpl/gatti/dgcam/ac;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->d:Lpl/gatti/dgcam/z;

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 283
    :goto_0
    return v0

    .line 280
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lpl/gatti/dgcam/DgCamActivityForTommy2;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->l:Z

    return p1
.end method

.method static synthetic c(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Lcom/yf/smart/weloopx/g/d;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->E:Lcom/yf/smart/weloopx/g/d;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 294
    const-string v0, "DgCamActivityForTommy2 \u6267\u884c\u62cd\u7167"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 295
    iput-boolean v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->H:Z

    .line 296
    invoke-direct {p0, v1}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b(Z)V

    .line 297
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->j()V

    .line 299
    :try_start_0
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->d:Lpl/gatti/dgcam/z;

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->c()V

    .line 301
    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->c:Lpl/gatti/dgcam/ac;

    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->G:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3e9

    :goto_0
    iget-boolean v2, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->j:Z

    invoke-virtual {v1, v0, v2}, Lpl/gatti/dgcam/ac;->a(IZ)V

    .line 302
    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->q:Landroid/widget/Button;

    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->G:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0200cb

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_2
    return-void

    .line 301
    :cond_0
    const/16 v0, 0x3ea

    goto :goto_0

    .line 302
    :cond_1
    const v0, 0x7f0200ca

    goto :goto_1

    .line 304
    :catch_0
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DgCamActivityForTommy2 \u62cd\u7167\u51fa\u9519 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic c(Lpl/gatti/dgcam/DgCamActivityForTommy2;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->H:Z

    return p1
.end method

.method static synthetic d(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DgCamActivityForTommy2 \u5f00\u59cb\u6267\u884c\u5f55\u50cf \u662f\u5426\u4fdd\u5b58\u5b8c\u6bd5 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 313
    iput-boolean v2, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->H:Z

    .line 314
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b:Lpl/gatti/dgcam/a;

    invoke-virtual {v0}, Lpl/gatti/dgcam/a;->f()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_1

    .line 315
    const-string v0, "DgCamActivityForTommy2Camera\u51fa\u9519\u4e86"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->l:Z

    if-eqz v0, :cond_0

    .line 319
    iput-boolean v2, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->l:Z

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->m:Z

    .line 321
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->e()V

    .line 322
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->d:Lpl/gatti/dgcam/z;

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->a()V

    .line 323
    invoke-direct {p0, v2}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b(Z)V

    .line 324
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->p:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lpl/gatti/dgcam/DgCamActivityForTommy2;Z)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b(Z)V

    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 330
    new-instance v1, Lpl/gatti/dgcam/m;

    invoke-direct {v1, p0}, Lpl/gatti/dgcam/m;-><init>(Lpl/gatti/dgcam/DgCamActivityForTommy2;)V

    .line 341
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->B:Ljava/util/Timer;

    .line 342
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->B:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 343
    return-void
.end method

.method static synthetic e(Lpl/gatti/dgcam/DgCamActivityForTommy2;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->i()V

    return-void
.end method

.method static synthetic f(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Lpl/gatti/dgcam/a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b:Lpl/gatti/dgcam/a;

    return-object v0
.end method

.method static synthetic g(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Lpl/gatti/dgcam/ac;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->c:Lpl/gatti/dgcam/ac;

    return-object v0
.end method

.method static synthetic h(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->F:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->p:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DgCamActivityForTommy2"

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 349
    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->i:Z

    if-eqz v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 352
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->i:Z

    .line 353
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->f:Landroid/os/Handler;

    new-instance v1, Lpl/gatti/dgcam/o;

    invoke-direct {v1, p0}, Lpl/gatti/dgcam/o;-><init>(Lpl/gatti/dgcam/DgCamActivityForTommy2;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 363
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->j()V

    goto :goto_0
.end method

.method static synthetic i(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->d:Lpl/gatti/dgcam/z;

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->b()V

    .line 368
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->d:Lpl/gatti/dgcam/z;

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->c()V

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->i:Z

    .line 370
    return-void
.end method

.method static synthetic j(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Lcom/b/a/a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->I:Lcom/b/a/a;

    return-object v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    iput v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->C:I

    .line 375
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->B:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->B:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->B:Ljava/util/Timer;

    .line 379
    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 496
    new-instance v0, Lpl/gatti/dgcam/b;

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b:Lpl/gatti/dgcam/a;

    invoke-direct {v0, p0, v1}, Lpl/gatti/dgcam/b;-><init>(Landroid/content/Context;Lpl/gatti/dgcam/a;)V

    .line 497
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 499
    iget-object v2, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 504
    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->n:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 505
    new-instance v1, Lpl/gatti/dgcam/p;

    invoke-direct {v1, p0}, Lpl/gatti/dgcam/p;-><init>(Lpl/gatti/dgcam/DgCamActivityForTommy2;)V

    invoke-virtual {v0, v1}, Lpl/gatti/dgcam/b;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 522
    return-void
.end method

.method static synthetic k(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->H:Z

    return v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b:Lpl/gatti/dgcam/a;

    invoke-virtual {v0}, Lpl/gatti/dgcam/a;->b()V

    .line 537
    return-void
.end method

.method static synthetic l(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->m:Z

    return v0
.end method

.method static synthetic m(Lpl/gatti/dgcam/DgCamActivityForTommy2;)Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->A:Landroid/view/View;

    return-object v0
.end method

.method private m()Z
    .locals 3

    .prologue
    .line 551
    const/4 v0, 0x0

    .line 552
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 553
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    const/4 v0, 0x1

    .line 556
    :cond_0
    return v0
.end method

.method private n()V
    .locals 6

    .prologue
    .line 726
    new-instance v1, Lpl/gatti/dgcam/s;

    invoke-direct {v1, p0}, Lpl/gatti/dgcam/s;-><init>(Lpl/gatti/dgcam/DgCamActivityForTommy2;)V

    .line 742
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->h:Ljava/util/Timer;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x2710

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 743
    return-void
.end method

.method private o()V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->h:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->h:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 749
    :cond_0
    return-void
.end method

.method private p()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 755
    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->k:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->k:Z

    .line 756
    iget-object v3, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b:Lpl/gatti/dgcam/a;

    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->k:Z

    if-eqz v0, :cond_2

    const-string v0, "on"

    :goto_1
    invoke-virtual {v3, v0}, Lpl/gatti/dgcam/a;->a(Ljava/lang/String;)Z

    move-result v0

    .line 759
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DgCamActivityForTommy2 \u8bbe\u7f6e\u95ea\u5149\u706f\u5f00\u5173\u7ed3\u679c = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 761
    if-nez v0, :cond_0

    .line 762
    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->k:Z

    if-nez v0, :cond_3

    :goto_2
    iput-boolean v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->k:Z

    .line 764
    :cond_0
    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->q:Landroid/widget/Button;

    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->k:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0200cb

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 765
    return-void

    :cond_1
    move v0, v2

    .line 755
    goto :goto_0

    .line 756
    :cond_2
    const-string v0, "off"

    goto :goto_1

    :cond_3
    move v1, v2

    .line 762
    goto :goto_2

    .line 764
    :cond_4
    const v0, 0x7f0200ca

    goto :goto_3
.end method

.method private q()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 771
    const-string v0, "DgCamActivityForTommy2 \u5207\u6362\u6444\u50cf\u5934 "

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 772
    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->m:Z

    if-eqz v0, :cond_0

    .line 773
    const v0, 0x7f0701db

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->e(Ljava/lang/String;)V

    .line 784
    :goto_0
    return-void

    .line 776
    :cond_0
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->d:Lpl/gatti/dgcam/z;

    invoke-virtual {v0}, Lpl/gatti/dgcam/z;->b()V

    .line 779
    :cond_1
    iget-object v3, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b:Lpl/gatti/dgcam/a;

    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->j:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lpl/gatti/dgcam/a;->b(I)V

    .line 782
    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->j:Z

    if-nez v0, :cond_3

    :goto_2
    iput-boolean v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->j:Z

    .line 783
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->k()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 779
    goto :goto_1

    :cond_3
    move v1, v2

    .line 782
    goto :goto_2
.end method


# virtual methods
.method public a([B)V
    .locals 4

    .prologue
    .line 672
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->g:Landroid/os/Handler;

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 673
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->g:Landroid/os/Handler;

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->L:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 674
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->A:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->g:Landroid/os/Handler;

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->N:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 676
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 637
    invoke-super {p0, p1, p2, p3}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onActivityResult(IILandroid/content/Intent;)V

    .line 638
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 639
    packed-switch p1, :pswitch_data_0

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 641
    :pswitch_0
    invoke-static {}, Lcom/yf/gattlib/c/e;->g()Ljava/lang/String;

    move-result-object v0

    .line 642
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 644
    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->startActivity(Landroid/content/Intent;)V

    .line 651
    :goto_1
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 652
    invoke-static {p0, v0}, Lpl/gatti/dgcam/ai;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 653
    const-string v1, "DgCamActivityForTommy2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u56fe\u7247\u8def\u5f84\u4e3a: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 655
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 657
    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 646
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 647
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    invoke-virtual {p0, v1}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 639
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 562
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 633
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 564
    :pswitch_1
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->p()V

    goto :goto_0

    .line 568
    :pswitch_2
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->q()V

    goto :goto_0

    .line 572
    :pswitch_3
    invoke-virtual {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->finish()V

    goto :goto_0

    .line 586
    :pswitch_4
    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->m:Z

    if-nez v0, :cond_0

    .line 589
    sput-boolean v4, Lpl/gatti/dgcam/DgCamActivityForTommy2;->a:Z

    .line 590
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 594
    invoke-virtual {p0, v0, v4}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 596
    :cond_1
    invoke-virtual {p0, v0, v3}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 600
    :pswitch_5
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 605
    :pswitch_6
    iput v3, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->D:I

    .line 606
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    invoke-direct {p0, v4}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->a(Z)V

    goto :goto_0

    .line 612
    :pswitch_7
    const/4 v0, 0x5

    iput v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->D:I

    .line 613
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->u:Landroid/widget/TextView;

    const-string v1, "5S"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 616
    invoke-direct {p0, v4}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->a(Z)V

    goto :goto_0

    .line 620
    :pswitch_8
    const/16 v0, 0xa

    iput v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->D:I

    .line 621
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->u:Landroid/widget/TextView;

    const-string v1, "10S"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 624
    invoke-direct {p0, v4}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->a(Z)V

    goto :goto_0

    .line 628
    :pswitch_9
    invoke-direct {p0, v3}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->a(Z)V

    goto/16 :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch 0x7f0d00a9
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 128
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->setContentView(I)V

    .line 130
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->a()V

    .line 131
    invoke-virtual {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->d(Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, p1}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->a(Landroid/os/Bundle;)V

    .line 133
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->n()V

    .line 134
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 183
    const-string v0, "DgCamActivityForTommy2 onDestroy"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->g:Landroid/os/Handler;

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->g:Landroid/os/Handler;

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->J:Lcom/yf/smart/weloopx/b/b;

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->O:Lcom/yf/gattlib/d/b$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->b(Lcom/yf/gattlib/d/b$a;)V

    .line 187
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->p:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->B:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->B:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->B:Ljava/util/Timer;

    .line 192
    :cond_0
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->o()V

    .line 193
    new-instance v0, Lcom/yf/gattlib/client/b/i;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/i;-><init>()V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/i;->f()Lcom/yf/gattlib/client/b/e;

    .line 194
    sput-boolean v2, Lpl/gatti/dgcam/DgCamActivityForTommy2;->a:Z

    .line 195
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onDestroy()V

    .line 196
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 526
    const-string v0, "DgCamActivityForTommy2"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-static {p0}, Landroid/support/v4/a/d;->a(Landroid/content/Context;)Landroid/support/v4/a/d;

    move-result-object v0

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->K:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/d;->a(Landroid/content/BroadcastReceiver;)V

    .line 528
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->i()V

    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->l:Z

    .line 530
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->l()V

    .line 531
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->n:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 532
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onPause()V

    .line 533
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 138
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onResume()V

    .line 139
    const-string v0, "DgCamActivityForTommy2 onResume"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->p:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    invoke-direct {p0, p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->finish()V

    .line 160
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->finish()V

    goto :goto_0

    .line 151
    :cond_1
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->k()V

    .line 152
    invoke-static {p0}, Landroid/support/v4/a/d;->a(Landroid/content/Context;)Landroid/support/v4/a/d;

    move-result-object v0

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->K:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "pl.gatti.dgcam.ACTION_TAKE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/d;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 154
    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->m:Z

    if-eqz v0, :cond_2

    .line 155
    new-instance v0, Lcom/yf/gattlib/client/b/y;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/y;-><init>()V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/y;->f()Lcom/yf/gattlib/client/b/e;

    goto :goto_0

    .line 158
    :cond_2
    new-instance v0, Lcom/yf/gattlib/client/b/u;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/u;-><init>()V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/u;->f()Lcom/yf/gattlib/client/b/e;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 288
    const-string v0, "CAMERA_ID"

    iget-object v1, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->b:Lpl/gatti/dgcam/a;

    invoke-virtual {v1}, Lpl/gatti/dgcam/a;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 290
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DgCamActivityForTommy2 onStop isGoPhotoAlbum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lpl/gatti/dgcam/DgCamActivityForTommy2;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->B:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->B:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->B:Ljava/util/Timer;

    .line 170
    :cond_0
    iget-boolean v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->m:Z

    if-eqz v0, :cond_1

    .line 171
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->i()V

    .line 173
    :cond_1
    sget-boolean v0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->a:Z

    if-nez v0, :cond_2

    .line 174
    new-instance v0, Lcom/yf/gattlib/client/b/i;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/i;-><init>()V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/i;->f()Lcom/yf/gattlib/client/b/e;

    .line 175
    invoke-direct {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->o()V

    .line 176
    invoke-virtual {p0}, Lpl/gatti/dgcam/DgCamActivityForTommy2;->finish()V

    .line 178
    :cond_2
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onStop()V

    .line 179
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lpl/gatti/dgcam/DgCamActivityForTommy2;->e:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
