.class public Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yf/gattlib/view/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$b;,
        Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;
    }
.end annotation


# static fields
.field public static g:Ljava/lang/String;

.field private static final i:Ljava/lang/String;


# instance fields
.field private A:Landroid/app/AlertDialog;

.field private B:Lcom/yf/gattlib/c/c;

.field private C:Lcom/yf/gattlib/d/b;

.field private final D:I

.field private final E:I

.field private final F:I

.field private final G:I

.field private final H:I

.field private final I:I

.field private J:Lcom/yf/smart/weloopx/c/s;

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/Runnable;

.field private Q:Lcom/yf/gattlib/client/b/bk;

.field private R:Z

.field private final S:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$b;

.field private T:Landroid/widget/TextView;

.field private U:Landroid/widget/TextView;

.field private V:Ljava/util/Timer;

.field private W:Ljava/util/TimerTask;

.field private X:I

.field private Y:I

.field private Z:I

.field protected a:Landroid/widget/EditText;

.field private aa:I

.field private ab:Z

.field private ac:J

.field private ad:J

.field private ae:Lcom/yf/smart/weloopx/data/m;

.field protected b:Lb/a/a/a/a/a;

.field protected c:Lcom/yf/gattlib/a/b;

.field protected d:I

.field protected e:I

.field protected f:Landroid/os/Handler;

.field protected h:Z

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/Button;

.field private r:Lcom/todddavies/components/progressbar/ProgressWheel2;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageView;

.field private u:I

.field private w:B

.field private x:Z

.field private y:Lcom/yf/gattlib/client/b/e;

.field private z:Lcom/yf/gattlib/client/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->i:Ljava/lang/String;

    .line 125
    const-string v0, "OTA_SUCCESS_DEVICE"

    sput-object v0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 93
    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->d:I

    .line 100
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->x:Z

    .line 109
    const/16 v0, 0xd80

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->D:I

    .line 110
    const/16 v0, 0xd81

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->E:I

    .line 111
    const/16 v0, 0xd82

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->F:I

    .line 112
    const/16 v0, 0xd83

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->G:I

    .line 113
    const/16 v0, 0xd84

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->H:I

    .line 114
    const/16 v0, 0xd85

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->I:I

    .line 115
    new-instance v0, Lcom/yf/smart/weloopx/c/s;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/c/s;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->J:Lcom/yf/smart/weloopx/c/s;

    .line 116
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->K:Z

    .line 117
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->L:Z

    .line 118
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->M:Z

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->O:Ljava/lang/String;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->f:Landroid/os/Handler;

    .line 314
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/gw;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/gw;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->P:Ljava/lang/Runnable;

    .line 567
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/gz;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/gz;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->Q:Lcom/yf/gattlib/client/b/bk;

    .line 843
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$b;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$b;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->S:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$b;

    .line 996
    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->X:I

    .line 997
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->Y:I

    .line 1029
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->ab:Z

    return-void
.end method

.method private A()V
    .locals 3

    .prologue
    .line 893
    const v0, 0x7f07023a

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/gp;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/gp;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/activities/gq;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/activities/gq;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 904
    return-void
.end method

.method static synthetic A(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Z
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->v()Z

    move-result v0

    return v0
.end method

.method private B()V
    .locals 2

    .prologue
    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6267\u884ctryOta"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a()V

    .line 940
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->J:Lcom/yf/smart/weloopx/c/s;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/c/s;->a()V

    .line 941
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->z()V

    .line 942
    return-void
.end method

.method static synthetic B(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->u()V

    return-void
.end method

.method private C()V
    .locals 6

    .prologue
    .line 1004
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->V:Ljava/util/Timer;

    .line 1005
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/gs;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/gs;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->W:Ljava/util/TimerTask;

    .line 1017
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->V:Ljava/util/Timer;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->W:Ljava/util/TimerTask;

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->Y:I

    int-to-long v2, v2

    iget v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->Y:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1018
    return-void
.end method

.method static synthetic C(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->M:Z

    return v0
.end method

.method private D()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1022
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->V:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->V:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->W:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->W:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1024
    :cond_1
    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->W:Ljava/util/TimerTask;

    .line 1025
    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->V:Ljava/util/Timer;

    .line 1026
    return-void
.end method

.method static synthetic D(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->L:Z

    return v0
.end method

.method static synthetic E(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->K:Z

    return v0
.end method

.method static synthetic F(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->n()V

    return-void
.end method

.method static synthetic G(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->q()V

    return-void
.end method

.method static synthetic H(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->w()V

    return-void
.end method

.method static synthetic I(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->A:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic J(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->U:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic K(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->T:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic L(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->Y:I

    return v0
.end method

.method static synthetic M(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->aa:I

    return v0
.end method

.method static synthetic N(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->Z:I

    return v0
.end method

.method static synthetic O(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->X:I

    return v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;I)I
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->Z:I

    return p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->A:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->T:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->O:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 355
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/gx;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/gx;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;I)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 432
    return-void
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lengh = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transferred = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 1043
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->ab:Z

    if-eqz v0, :cond_0

    .line 1044
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->ab:Z

    .line 1045
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->ac:J

    .line 1048
    :cond_0
    if-lt p2, p1, :cond_1

    .line 1049
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->ab:Z

    .line 1050
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->ad:J

    .line 1051
    iget-wide v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->ad:J

    iget-wide v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->ac:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 1052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OTA\u5305\u7684\u5927\u5c0f = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startOTATime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->ac:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", endOTATime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->ad:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 1054
    if-nez v0, :cond_2

    .line 1061
    :cond_1
    :goto_0
    return-void

    .line 1057
    :cond_2
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->ae:Lcom/yf/smart/weloopx/data/m;

    invoke-virtual {v1, p1, v0}, Lcom/yf/smart/weloopx/data/m;->b(II)V

    goto :goto_0
.end method

.method private a(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 3

    .prologue
    .line 817
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->h:Z

    if-nez v0, :cond_0

    .line 818
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->i:Ljava/lang/String;

    const-string v1, "can not show dialog"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :goto_0
    return-void

    .line 821
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->A:Landroid/app/AlertDialog;

    .line 822
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->A:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 823
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 824
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 825
    const v0, 0x7f030097

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 826
    const v0, 0x7f0d00a3

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 827
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 829
    const v0, 0x7f0d01a8

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 830
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 831
    const v0, 0x7f0d01a7

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 832
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private a(Landroid/app/DialogFragment;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 808
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 809
    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 810
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 811
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;II)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->x:Z

    return v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Z)Z
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->x:Z

    return p1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;I)I
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->aa:I

    return p1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->U:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->P:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->N:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Z)Z
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->R:Z

    return p1
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->J:Lcom/yf/smart/weloopx/c/s;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/c/s;->a()V

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->h:Z

    .line 168
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    const-string v1, "IsWatch"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->M:Z

    .line 172
    :cond_0
    new-instance v0, Lcom/yf/smart/weloopx/data/m;

    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/data/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->ae:Lcom/yf/smart/weloopx/data/m;

    .line 173
    return-void
.end method

.method private c(I)V
    .locals 1

    .prologue
    .line 696
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/ha;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/ha;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;I)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 702
    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;I)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->X:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->X:I

    return v0
.end method

.method private d(I)Ljava/lang/String;
    .locals 2

    .prologue
    const v1, 0x7f070020

    .line 705
    const/16 v0, 0x3c

    if-le p1, v0, :cond_0

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v1, p1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f070169

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 708
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0701fa

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 177
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->c:Lcom/yf/gattlib/a/b;

    .line 178
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->c:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->B:Lcom/yf/gattlib/c/c;

    .line 179
    new-instance v0, Lb/a/a/a/a/a;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->c:Lcom/yf/gattlib/a/b;

    const v2, 0x7f0702a2

    invoke-direct {v0, v1, v2}, Lb/a/a/a/a/a;-><init>(Lcom/yf/gattlib/a/b;I)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b:Lb/a/a/a/a/a;

    .line 181
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->e:I

    .line 182
    invoke-static {}, Lcom/yf/gattlib/c/e;->d()I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->u:I

    .line 183
    const-string v0, "V 1.33"

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b:Lb/a/a/a/a/a;

    invoke-virtual {v1}, Lb/a/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yf/gattlib/c/f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const/16 v0, 0x78

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->u:I

    .line 186
    :cond_0
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->w:B

    .line 187
    new-instance v0, Lcom/yf/gattlib/d/b;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/gm;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/gm;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/yf/gattlib/d/b;-><init>(Landroid/app/Activity;Lcom/yf/gattlib/d/b$a;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->C:Lcom/yf/gattlib/d/b;

    .line 213
    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->h()V

    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 217
    const v0, 0x7f0d00bf

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const v0, 0x7f0d00be

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 219
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const v0, 0x7f0d00c4

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->s:Landroid/widget/ImageView;

    .line 221
    const v0, 0x7f0d00c3

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->t:Landroid/widget/ImageView;

    .line 222
    const v0, 0x7f0d00cf

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->q:Landroid/widget/Button;

    .line 223
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->q:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    const v0, 0x7f0d00c7

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->p:Landroid/view/View;

    .line 225
    const v0, 0x7f0d00bd

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 226
    const v3, 0x7f0702aa

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 227
    const v0, 0x7f0d00ce

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->k:Landroid/widget/TextView;

    .line 228
    const v0, 0x7f0d00c1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->j:Landroid/widget/TextView;

    .line 230
    const v0, 0x7f0d00c5

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->l:Landroid/widget/TextView;

    .line 231
    const v0, 0x7f0d00c6

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->m:Landroid/widget/TextView;

    .line 232
    const v0, 0x7f0d00c9

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->n:Landroid/widget/TextView;

    .line 233
    const v0, 0x7f0d00cc

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a:Landroid/widget/EditText;

    .line 234
    const v0, 0x7f0d00c8

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->o:Landroid/view/View;

    .line 235
    const v0, 0x7f0d00c2

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/todddavies/components/progressbar/ProgressWheel2;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->r:Lcom/todddavies/components/progressbar/ProgressWheel2;

    .line 236
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->r:Lcom/todddavies/components/progressbar/ProgressWheel2;

    invoke-virtual {v0, p0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->r:Lcom/todddavies/components/progressbar/ProgressWheel2;

    invoke-virtual {v0, v2}, Lcom/todddavies/components/progressbar/ProgressWheel2;->setProgress(I)V

    .line 238
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->n:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "fonts/din-light.otf"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 241
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 242
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->k:Landroid/widget/TextView;

    const v3, 0x7f07019e

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 244
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->m()V

    .line 245
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->k()Lcom/yf/gattlib/client/c;

    move-result-object v0

    .line 246
    new-instance v3, Lcom/yf/smart/weloopx/android/ui/activities/gt;

    invoke-direct {v3, p0}, Lcom/yf/smart/weloopx/android/ui/activities/gt;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    invoke-virtual {v0, v3}, Lcom/yf/gattlib/client/c;->a(Lcom/yf/gattlib/client/c$b;)V

    .line 264
    invoke-virtual {v0}, Lcom/yf/gattlib/client/c;->j()V

    .line 266
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 268
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 269
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->h:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->K:Z

    .line 270
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->i:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->L:Z

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isNowLow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->K:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isWatchLow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->L:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    move-object v0, v3

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->n()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 279
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->b()V

    .line 280
    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 283
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 269
    goto :goto_0

    :cond_3
    move v1, v2

    .line 270
    goto :goto_1
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->i()V

    return-void
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;I)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->c(I)V

    return-void
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->r()V

    return-void
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->q:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->o:Landroid/view/View;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/gv;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/gv;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 292
    return-void
.end method

.method static synthetic i(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->t:Landroid/widget/ImageView;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b:Lb/a/a/a/a/a;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->c:Lcom/yf/gattlib/a/b;

    const v2, 0x7f0702a2

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/a/a;->a(Lcom/yf/gattlib/a/b;I)V

    .line 296
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->k()V

    .line 311
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->c:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->j()V

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->n()V

    goto :goto_0

    .line 309
    :cond_2
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->k()V

    goto :goto_0
.end method

.method static synthetic j(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->s:Landroid/widget/ImageView;

    return-object v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 328
    const/16 v0, 0xd80

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a(I)V

    .line 329
    return-void
.end method

.method static synthetic k(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Lcom/todddavies/components/progressbar/ProgressWheel2;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->r:Lcom/todddavies/components/progressbar/ProgressWheel2;

    return-object v0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 332
    const/16 v0, 0xd81

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a(I)V

    .line 333
    return-void
.end method

.method static synthetic l(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 336
    const/16 v0, 0xd82

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a(I)V

    .line 337
    return-void
.end method

.method static synthetic m(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 340
    const/16 v0, 0xd84

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a(I)V

    .line 341
    return-void
.end method

.method static synthetic n(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 347
    const/16 v0, 0xd83

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a(I)V

    .line 348
    return-void
.end method

.method static synthetic o(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->p:Landroid/view/View;

    return-object v0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 351
    const/16 v0, 0xd85

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a(I)V

    .line 352
    return-void
.end method

.method static synthetic p(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->y:Lcom/yf/gattlib/client/b/e;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->y:Lcom/yf/gattlib/client/b/e;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/e;->h()V

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->y:Lcom/yf/gattlib/client/b/e;

    .line 444
    :cond_0
    return-void
.end method

.method static synthetic q(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->O:Ljava/lang/String;

    return-object v0
.end method

.method private q()V
    .locals 4

    .prologue
    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 8. Running startOTA method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->O:Ljava/lang/String;

    .line 451
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->O:Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->O:Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 453
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 454
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->i:Ljava/lang/String;

    const-string v1, "being busy"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a()V

    .line 458
    const/4 v0, 0x2

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->e:I

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->R:Z

    .line 460
    new-instance v0, Lcom/yf/gattlib/client/b/bl;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->Q:Lcom/yf/gattlib/client/b/bk;

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->u:I

    iget-byte v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->w:B

    invoke-direct {v0, v1, v2, v3}, Lcom/yf/gattlib/client/b/bl;-><init>(Lcom/yf/gattlib/client/b/bk;IB)V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/bl;->f()Lcom/yf/gattlib/client/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->y:Lcom/yf/gattlib/client/b/e;

    .line 463
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->l()V

    goto :goto_0
.end method

.method static synthetic r(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->N:Ljava/lang/String;

    return-object v0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->y:Lcom/yf/gattlib/client/b/e;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->y:Lcom/yf/gattlib/client/b/e;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/e;->f()Lcom/yf/gattlib/client/b/e;

    .line 470
    :cond_0
    return-void
.end method

.method private s()V
    .locals 1

    .prologue
    .line 473
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/gy;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/gy;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 480
    return-void
.end method

.method static synthetic s(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->B()V

    return-void
.end method

.method static synthetic t(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Lcom/yf/gattlib/c/c;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->B:Lcom/yf/gattlib/c/c;

    return-object v0
.end method

.method private t()V
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->d:I

    .line 484
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->e:I

    .line 485
    return-void
.end method

.method private u()V
    .locals 1

    .prologue
    .line 712
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/hb;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/hb;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 720
    return-void
.end method

.method static synthetic u(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->l()V

    return-void
.end method

.method static synthetic v(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->C()V

    return-void
.end method

.method private v()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 723
    .line 724
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->B:Lcom/yf/gattlib/c/c;

    const-string v2, "KEY_OTA_FINISH_RUN_RESET_MINIMUM_VERSION"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/yf/gattlib/c/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 725
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 726
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "V"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 727
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/gattlib/f/b;->k()Lcom/yf/gattlib/client/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/gattlib/client/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "V"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 729
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 742
    :cond_0
    :goto_0
    return v0

    .line 732
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 733
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u7f51\u7edc\u8fd4\u56de\u7ed3\u679c = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", \u5f53\u524d\u56fa\u4ef6\u7248\u672c = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u5bf9\u6bd4\u7ed3\u679c = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 734
    if-gez v3, :cond_2

    .line 735
    const/4 v0, 0x1

    goto :goto_0

    .line 736
    :cond_2
    if-ltz v3, :cond_0

    goto :goto_0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 749
    new-instance v0, Lcom/yf/gattlib/client/b/ag;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yf/gattlib/client/b/ag;-><init>(B)V

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/gn;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/gn;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/b/ag;->b(Lcom/yf/gattlib/client/b/a/c;)Lcom/yf/gattlib/client/b/e;

    .line 759
    return-void
.end method

.method static synthetic w(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->R:Z

    return v0
.end method

.method private x()V
    .locals 2

    .prologue
    .line 765
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 766
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/as;->a(Landroid/app/FragmentManager;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->finish()V

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->y()V

    goto :goto_0
.end method

.method static synthetic x(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->s()V

    return-void
.end method

.method private y()V
    .locals 2

    .prologue
    .line 778
    const v0, 0x7f07019c

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ae;->a(I)Lcom/yf/smart/weloopx/android/ui/c/ae;

    move-result-object v0

    .line 780
    sget-object v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->i:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a(Landroid/app/DialogFragment;Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method static synthetic y(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->t()V

    return-void
.end method

.method private z()V
    .locals 3

    .prologue
    .line 839
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->S:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$b;

    invoke-virtual {v0, v1}, Lcom/yf/lib/squareup/otto/b;->a(Ljava/lang/Object;)V

    .line 840
    invoke-static {}, Lcom/yf/smart/weloopx/c/x;->a()Lcom/yf/smart/weloopx/c/x;

    move-result-object v0

    invoke-static {}, Lcom/yf/gattlib/p/b;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Ljava/lang/String;Z)V

    .line 841
    return-void
.end method

.method static synthetic z(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->o()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->A:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->A:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->A:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 989
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->A:Landroid/app/AlertDialog;

    .line 992
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 948
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/gr;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/gr;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 984
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/yf/gattlib/view/c;)Z
    .locals 6

    .prologue
    .line 785
    invoke-virtual {p2}, Lcom/yf/gattlib/view/c;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 803
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 787
    :pswitch_0
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->p()V

    .line 788
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0700f9

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/az;->a(Landroid/app/FragmentManager;Ljava/lang/String;Z)Landroid/app/DialogFragment;

    move-result-object v0

    .line 792
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->f:Landroid/os/Handler;

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/activities/go;

    invoke-direct {v2, p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/go;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Landroid/app/DialogFragment;)V

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 785
    nop

    :pswitch_data_0
    .packed-switch 0x9002
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->x()V

    .line 437
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 909
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 932
    :goto_0
    :sswitch_0
    return-void

    .line 912
    :sswitch_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Lcom/yf/smart/weloopx/android/ui/activities/gm;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->execute([Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/core/AsyncTask;

    goto :goto_0

    .line 916
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6309\u94ae\u70b9\u51fb\u6267\u884ctryOta()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 917
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->B()V

    goto :goto_0

    .line 921
    :sswitch_2
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->x()V

    goto :goto_0

    .line 924
    :sswitch_3
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->A()V

    goto :goto_0

    .line 909
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d00be -> :sswitch_3
        0x7f0d00bf -> :sswitch_2
        0x7f0d00c2 -> :sswitch_0
        0x7f0d00cf -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->requestWindowFeature(I)Z

    .line 132
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->setContentView(I)V

    .line 134
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->S:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$b;

    invoke-virtual {v0, v1}, Lcom/yf/lib/squareup/otto/b;->a(Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->c()V

    .line 136
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->d()V

    .line 137
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->e()V

    .line 138
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->S:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$b;

    invoke-virtual {v0, v1}, Lcom/yf/lib/squareup/otto/b;->b(Ljava/lang/Object;)V

    .line 148
    iput-boolean v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->h:Z

    .line 149
    iput-boolean v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->x:Z

    .line 150
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->C:Lcom/yf/gattlib/d/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/d/b;->a()V

    .line 151
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->p()V

    .line 152
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->z:Lcom/yf/gattlib/client/b/e;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->z:Lcom/yf/gattlib/client/b/e;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/e;->h()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->z:Lcom/yf/gattlib/client/b/e;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->B:Lcom/yf/gattlib/c/c;

    const-string v1, "is upgrading"

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onDestroy() put GattSettingKeys.KEY_IS_UPGRADING = false "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onDestroy() put GattSettingKeys.KEY_IS_UPGRADING = false "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 159
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->D()V

    .line 160
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onDestroy()V

    .line 161
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onResume()V

    .line 143
    return-void
.end method
