.class public Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;
.super Landroid/app/Activity;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/dfu/f;
.implements Lcom/yf/smart/weloopx/android/ui/c/ah$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity$a;
    }
.end annotation


# instance fields
.field private final A:Landroid/content/ServiceConnection;

.field private B:Ljava/lang/String;

.field private C:Landroid/app/AlertDialog;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/content/BroadcastReceiver;

.field private G:Ljava/util/Timer;

.field private H:Ljava/util/TimerTask;

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/Button;

.field private h:Lcom/todddavies/components/progressbar/ProgressWheel2;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Lcom/yf/gattlib/client/dfu/b;

.field private m:I

.field private n:I

.field private o:B

.field private p:I

.field private q:Landroid/os/Handler;

.field private r:Lb/a/a/a/a/a;

.field private s:Z

.field private t:Z

.field private u:Lcom/yf/gattlib/a/b;

.field private v:Landroid/widget/EditText;

.field private w:I

.field private x:J

.field private y:Z

.field private z:Lcom/yf/gattlib/client/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->m:I

    .line 85
    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->p:I

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->q:Landroid/os/Handler;

    .line 88
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->s:Z

    .line 89
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->t:Z

    .line 96
    invoke-static {}, Lcom/yf/gattlib/client/f;->a()Lcom/yf/gattlib/client/f;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->z:Lcom/yf/gattlib/client/f;

    .line 98
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/ce;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ce;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->A:Landroid/content/ServiceConnection;

    .line 641
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/ck;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ck;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->F:Landroid/content/BroadcastReceiver;

    .line 675
    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->I:I

    .line 676
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->J:I

    return-void
.end method

.method static synthetic A(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->y:Z

    return v0
.end method

.method static synthetic B(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->C:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic C(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->E:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic D(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->D:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic E(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->s()V

    return-void
.end method

.method static synthetic F(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->w()V

    return-void
.end method

.method static synthetic G(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->t()V

    return-void
.end method

.method static synthetic H(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->J:I

    return v0
.end method

.method static synthetic I(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->L:I

    return v0
.end method

.method static synthetic J(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->K:I

    return v0
.end method

.method static synthetic K(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->I:I

    return v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;I)I
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->w:I

    return p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;J)J
    .locals 1

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->x:J

    return-wide p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->C:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->D:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Lcom/yf/gattlib/client/dfu/b;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->l:Lcom/yf/gattlib/client/dfu/b;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;Lcom/yf/gattlib/client/dfu/b;)Lcom/yf/gattlib/client/dfu/b;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->l:Lcom/yf/gattlib/client/dfu/b;

    return-object p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->B:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;I)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->I:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->I:I

    return v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->E:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Lcom/yf/gattlib/a/b;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->u:Lcom/yf/gattlib/a/b;

    return-object v0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 706
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/cm;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/cm;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;I)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 712
    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 635
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->l:Lcom/yf/gattlib/client/dfu/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/dfu/b;->i()V

    .line 636
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->t()V

    .line 637
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->l()V

    .line 638
    const-string v0, "DfuActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Lb/a/a/a/a/a;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->r:Lb/a/a/a/a/a;

    return-object v0
.end method

.method private c(I)Ljava/lang/String;
    .locals 2

    .prologue
    const v1, 0x7f070020

    .line 715
    const/16 v0, 0x3c

    if-le p1, v0, :cond_0

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v1, p1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f070169

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 718
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0701fa

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->b(I)V

    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->l()V

    return-void
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->i()V

    return-void
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 121
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->setContentView(I)V

    .line 122
    iput-boolean v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->y:Z

    .line 123
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->u:Lcom/yf/gattlib/a/b;

    .line 124
    new-instance v0, Lb/a/a/a/a/a;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->u:Lcom/yf/gattlib/a/b;

    const v2, 0x7f0702a2

    invoke-direct {v0, v1, v2}, Lb/a/a/a/a/a;-><init>(Lcom/yf/gattlib/a/b;I)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->r:Lb/a/a/a/a/a;

    .line 125
    invoke-static {}, Lcom/yf/gattlib/c/e;->d()I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->n:I

    .line 126
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->o:B

    .line 127
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->F:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/gattlib/client/dfu/DFUService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->A:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 130
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->n()V

    .line 131
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->k()V

    .line 132
    new-instance v0, Lcom/yf/gattlib/j/b;

    invoke-direct {v0}, Lcom/yf/gattlib/j/b;-><init>()V

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/cn;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/cn;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/yf/gattlib/j/b;->a(Landroid/app/Activity;Lcom/yf/gattlib/j/a;)Z

    .line 155
    return-void
.end method

.method static synthetic i(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Lcom/todddavies/components/progressbar/ProgressWheel2;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->h:Lcom/todddavies/components/progressbar/ProgressWheel2;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/cp;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/cp;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method

.method static synthetic j(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->g:Landroid/widget/Button;

    return-object v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/cq;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/cq;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method static synthetic k(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->k:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/cr;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/cr;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 210
    return-void
.end method

.method static synthetic l(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/cs;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/cs;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method

.method static synthetic m(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->s:Z

    .line 232
    return-void
.end method

.method static synthetic n(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 243
    const v0, 0x7f0d00bf

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 244
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/ct;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ct;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    const v0, 0x7f0d00bd

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 251
    const v1, 0x7f0702aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 252
    const v0, 0x7f0d00ce

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->b:Landroid/widget/TextView;

    .line 253
    const v0, 0x7f0d00c1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->a:Landroid/widget/TextView;

    .line 254
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->r:Lb/a/a/a/a/a;

    invoke-virtual {v1}, Lb/a/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    const v0, 0x7f0d00c7

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->k:Landroid/widget/LinearLayout;

    .line 256
    const v0, 0x7f0d00cf

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->g:Landroid/widget/Button;

    .line 257
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->g:Landroid/widget/Button;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/cu;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/cu;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    const v0, 0x7f0d00c4

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->i:Landroid/widget/ImageView;

    .line 278
    const v0, 0x7f0d00c3

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->j:Landroid/widget/ImageView;

    .line 279
    const v0, 0x7f0d00c2

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/todddavies/components/progressbar/ProgressWheel2;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->h:Lcom/todddavies/components/progressbar/ProgressWheel2;

    .line 280
    const v0, 0x7f0d00c5

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->c:Landroid/widget/TextView;

    .line 281
    const v0, 0x7f0d00c6

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->d:Landroid/widget/TextView;

    .line 283
    const v0, 0x7f0d00c9

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->e:Landroid/widget/TextView;

    .line 284
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/din-light.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 286
    const v0, 0x7f0d00c8

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->f:Landroid/view/View;

    .line 288
    const v0, 0x7f0d00cc

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->v:Landroid/widget/EditText;

    .line 290
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->h:Lcom/todddavies/components/progressbar/ProgressWheel2;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/cv;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/cv;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    invoke-virtual {v0, v1}, Lcom/todddavies/components/progressbar/ProgressWheel2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->p()V

    .line 318
    return-void
.end method

.method static synthetic o(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 321
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f07019c

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DfuActivity"

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->l:Lcom/yf/gattlib/client/dfu/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/dfu/b;->f()V

    .line 325
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->g()V

    goto :goto_0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 348
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/cf;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/cf;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method

.method static synthetic p(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->o()V

    return-void
.end method

.method static synthetic q(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Lcom/yf/gattlib/client/f;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->z:Lcom/yf/gattlib/client/f;

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 358
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/cg;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/cg;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 366
    return-void
.end method

.method private r()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 502
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 505
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :goto_0
    return-object v0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    const-string v0, "DfuActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->B:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 512
    :catch_1
    move-exception v0

    .line 513
    new-instance v1, Lcom/yf/gattlib/e/d;

    invoke-direct {v1, v0}, Lcom/yf/gattlib/e/d;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic r(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->j()V

    return-void
.end method

.method static synthetic s(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->B:Ljava/lang/String;

    return-object v0
.end method

.method private s()V
    .locals 3

    .prologue
    .line 518
    .line 520
    :try_start_0
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->r()Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/yf/gattlib/e/d; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 526
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->l:Lcom/yf/gattlib/client/dfu/b;

    new-instance v2, Lcom/yf/gattlib/client/dfu/a;

    invoke-direct {v2, v0}, Lcom/yf/gattlib/client/dfu/a;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Lcom/yf/gattlib/client/dfu/b;->a(Lcom/yf/gattlib/client/dfu/g;)V

    .line 527
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->l:Lcom/yf/gattlib/client/dfu/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/dfu/b;->d()V

    .line 528
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v0

    .line 522
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    .line 523
    const-string v0, "open firmware error"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private t()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 544
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->p()V

    .line 545
    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->p:I

    .line 546
    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->m:I

    .line 547
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->l:Lcom/yf/gattlib/client/dfu/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/dfu/b;->e()V

    .line 548
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->u:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->l:Lcom/yf/gattlib/client/dfu/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/dfu/b;->i()V

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->l:Lcom/yf/gattlib/client/dfu/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/dfu/b;->h()V

    .line 552
    return-void
.end method

.method static synthetic t(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->u()V

    return-void
.end method

.method static synthetic u(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->x:J

    return-wide v0
.end method

.method private u()V
    .locals 4

    .prologue
    .line 565
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->q:Landroid/os/Handler;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/ci;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ci;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 572
    return-void
.end method

.method static synthetic v(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->w:I

    return v0
.end method

.method private v()V
    .locals 1

    .prologue
    .line 614
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/cj;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/cj;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 621
    return-void
.end method

.method static synthetic w(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->w:I

    return v0
.end method

.method private w()V
    .locals 6

    .prologue
    .line 683
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->G:Ljava/util/Timer;

    .line 684
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/cl;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/cl;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->H:Ljava/util/TimerTask;

    .line 696
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->G:Ljava/util/Timer;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->H:Ljava/util/TimerTask;

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->J:I

    int-to-long v2, v2

    iget v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->J:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 697
    return-void
.end method

.method static synthetic x(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->v:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic y(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic z(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->p:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 561
    const-string v0, "DfuActivity"

    const-string v1, "onDFUServiceFound"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method protected a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 448
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 450
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 451
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 452
    return-void
.end method

.method public a(J)V
    .locals 5

    .prologue
    .line 589
    const-string v0, "DfuActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFileTransfering(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->l:Lcom/yf/gattlib/client/dfu/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/dfu/b;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    long-to-int v0, p1

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->K:I

    .line 594
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->l:Lcom/yf/gattlib/client/dfu/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/dfu/b;->j()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->L:I

    .line 595
    const-wide/16 v0, 0x168

    mul-long/2addr v0, p1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->l:Lcom/yf/gattlib/client/dfu/b;

    invoke-virtual {v2}, Lcom/yf/gattlib/client/dfu/b;->j()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 596
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->p:I

    if-eq v0, v1, :cond_0

    .line 597
    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->p:I

    .line 598
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->q()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 458
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/ch;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/ch;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 491
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 630
    const-string v0, "DfuActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ErrorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-direct {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->b(Ljava/lang/String;I)V

    .line 632
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 532
    if-eqz p2, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->g()V

    .line 535
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 576
    const-string v0, "DfuActivity"

    const-string v1, "onDeviceDisconnected()"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->t()V

    .line 578
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 582
    const-string v0, "DfuActivity"

    const-string v1, "onFileTransferStarted()"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iput v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->m:I

    .line 584
    iput-boolean v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->t:Z

    .line 585
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 604
    const-string v0, "DfuActivity"

    const-string v1, "onFileTransferCompleted()"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const/4 v0, 0x2

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->m:I

    .line 606
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->r:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->c()V

    .line 607
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->m()V

    .line 608
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->p()V

    .line 609
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->i()V

    .line 610
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->v()V

    .line 611
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 625
    const-string v0, "DfuActivity"

    const-string v1, "onFileTransferValidation()"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    return-void
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->C:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->C:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->C:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->C:Landroid/app/AlertDialog;

    .line 499
    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->t()V

    .line 539
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->finish()V

    .line 540
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 370
    packed-switch p1, :pswitch_data_0

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 372
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 373
    if-nez p2, :cond_1

    .line 374
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->finish()V

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->finish()V

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->g()V

    .line 345
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->requestWindowFeature(I)Z

    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const-string v0, "DfuActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->h()V

    .line 118
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->A:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->y:Z

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 240
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->o()V

    .line 337
    const/4 v0, 0x1

    .line 339
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPickFile(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 670
    return-void
.end method
