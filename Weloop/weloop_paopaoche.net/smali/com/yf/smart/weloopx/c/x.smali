.class public Lcom/yf/smart/weloopx/c/x;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/c/x$a;
    }
.end annotation


# static fields
.field public static a:I

.field private static f:Lcom/yf/smart/weloopx/data/j;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Landroid/os/Handler;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Z

.field private m:Lcom/yf/smart/weloopx/g/d;

.field private n:Lcom/google/gson/Gson;

.field private o:Lcom/yf/gattlib/client/b/b/a;

.field private p:Ljava/util/Timer;

.field private q:Landroid/os/Handler;

.field private r:Ljava/lang/Runnable;

.field private s:Z

.field private t:J

.field private u:J

.field private v:Lcom/yf/smart/weloopx/data/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput v0, Lcom/yf/smart/weloopx/c/x;->a:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, "SyncDeviceDataUtil"

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/x;->b:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/c/x;->c:Z

    .line 70
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/c/x;->d:Z

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/x;->e:Landroid/os/Handler;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/x;->g:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/x;->h:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/x;->i:Ljava/lang/String;

    .line 77
    iput v1, p0, Lcom/yf/smart/weloopx/c/x;->j:I

    .line 78
    iput v1, p0, Lcom/yf/smart/weloopx/c/x;->k:I

    .line 79
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/c/x;->l:Z

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/x;->o:Lcom/yf/gattlib/client/b/b/a;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/x;->q:Landroid/os/Handler;

    .line 808
    new-instance v0, Lcom/yf/smart/weloopx/c/ai;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/c/ai;-><init>(Lcom/yf/smart/weloopx/c/x;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/x;->r:Ljava/lang/Runnable;

    .line 848
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/c/x;->s:Z

    .line 135
    new-instance v0, Lcom/yf/smart/weloopx/data/j;

    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/data/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yf/smart/weloopx/c/x;->f:Lcom/yf/smart/weloopx/data/j;

    .line 136
    invoke-direct {p0}, Lcom/yf/smart/weloopx/c/x;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/x;->g:Ljava/lang/String;

    .line 137
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/x;->h:Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/x;->m:Lcom/yf/smart/weloopx/g/d;

    .line 139
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/x;->n:Lcom/google/gson/Gson;

    .line 140
    new-instance v0, Lcom/yf/smart/weloopx/data/m;

    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/data/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/x;->v:Lcom/yf/smart/weloopx/data/m;

    .line 141
    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/smart/weloopx/c/y;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/yf/smart/weloopx/c/x;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/c/x;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/yf/smart/weloopx/c/x;->j:I

    return v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/c/x;I)I
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/yf/smart/weloopx/c/x;->j:I

    return p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/c/x;Lcom/yf/gattlib/client/b/b/a;)Lcom/yf/gattlib/client/b/b/a;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/x;->o:Lcom/yf/gattlib/client/b/b/a;

    return-object p1
.end method

.method public static final a()Lcom/yf/smart/weloopx/c/x;
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/yf/smart/weloopx/c/x$a;->a()Lcom/yf/smart/weloopx/c/x;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 616
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/event/SyncDataUploadingMsgEvent;

    invoke-direct {v1, p1}, Lcom/yf/smart/weloopx/event/SyncDataUploadingMsgEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/yf/lib/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 617
    return-void
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 611
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/event/SyncDataProgressEvent;

    invoke-direct {v1, p1, p2}, Lcom/yf/smart/weloopx/event/SyncDataProgressEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/yf/lib/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 613
    return-void
.end method

.method private a(IILjava/lang/String;)V
    .locals 2

    .prologue
    .line 605
    const/4 v0, 0x0

    sput v0, Lcom/yf/smart/weloopx/c/x;->a:I

    .line 606
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/event/SyncDataExitEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/yf/smart/weloopx/event/SyncDataExitEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yf/lib/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 607
    return-void
.end method

.method private a(JJ)V
    .locals 5

    .prologue
    .line 860
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/c/x;->s:Z

    if-eqz v0, :cond_0

    .line 861
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/c/x;->s:Z

    .line 862
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yf/smart/weloopx/c/x;->t:J

    .line 864
    :cond_0
    cmp-long v0, p1, p3

    if-ltz v0, :cond_1

    .line 865
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/c/x;->s:Z

    .line 866
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yf/smart/weloopx/c/x;->u:J

    .line 867
    iget-wide v0, p0, Lcom/yf/smart/weloopx/c/x;->u:J

    iget-wide v2, p0, Lcom/yf/smart/weloopx/c/x;->t:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 868
    if-nez v0, :cond_2

    .line 878
    :cond_1
    :goto_0
    return-void

    .line 871
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncDeviceDataUtil \u5c06\u8981\u63d2\u5165\u7684  totalSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/yf/smart/weloopx/c/x;->t:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", endTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/yf/smart/weloopx/c/x;->u:J

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

    .line 876
    iget-object v1, p0, Lcom/yf/smart/weloopx/c/x;->v:Lcom/yf/smart/weloopx/data/m;

    long-to-int v2, p3

    invoke-virtual {v1, v2, v0}, Lcom/yf/smart/weloopx/data/m;->a(II)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/c/x;II)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/yf/smart/weloopx/c/x;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/c/x;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/yf/smart/weloopx/c/x;->a(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/c/x;JJ)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yf/smart/weloopx/c/x;->a(JJ)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/c/x;Lcom/yf/smart/weloopx/data/models/DailyGain;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/data/models/DailyGain;)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/c/x;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/yf/smart/weloopx/data/models/DailyGain;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 687
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/x;->o:Lcom/yf/gattlib/client/b/b/a;

    if-nez v0, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/x;->o:Lcom/yf/gattlib/client/b/b/a;

    iget v0, v0, Lcom/yf/gattlib/client/b/b/a;->a:I

    .line 694
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/DailyGain;->getStepCount()I

    move-result v1

    .line 696
    if-eq v1, v0, :cond_0

    .line 700
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v2

    sget-object v3, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 701
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v3

    sget-object v4, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 702
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncDeviceDataUtil \u8bbe\u5907\u6b65\u6570\u4e3a = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bong\u7684\u603b\u6b65\u6570 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff0cisAfterOTA = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yf/smart/weloopx/c/x;->c(Ljava/lang/String;)V

    .line 703
    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 704
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/c/x;->b(Lcom/yf/smart/weloopx/data/models/DailyGain;)V

    goto :goto_0

    .line 708
    :cond_2
    sub-int v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncDeviceDataUtil 11. \u8bbe\u5907\u7684\u603b\u6b65\u6570 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bong\u7684\u603b\u6b65\u6570 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", \u76f8\u5dee = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yf/smart/weloopx/c/x;->c(Ljava/lang/String;)V

    .line 711
    const/16 v1, 0x1f4

    if-ge v2, v1, :cond_3

    .line 712
    invoke-virtual {p1, v0}, Lcom/yf/smart/weloopx/data/models/DailyGain;->setStepCount(I)V

    goto/16 :goto_0

    .line 714
    :cond_3
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/c/x;->b(Lcom/yf/smart/weloopx/data/models/DailyGain;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/c/x;Z)Z
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/yf/smart/weloopx/c/x;->s:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 523
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f0702b4

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 531
    invoke-static {p2}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/c/x;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/yf/smart/weloopx/c/x;->k:I

    return v0
.end method

.method private b(Lcom/yf/smart/weloopx/data/models/DailyGain;)V
    .locals 4

    .prologue
    .line 719
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    sget-object v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->g:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 720
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/x;->e:Landroid/os/Handler;

    new-instance v1, Lcom/yf/smart/weloopx/c/af;

    invoke-direct {v1, p0, p1}, Lcom/yf/smart/weloopx/c/af;-><init>(Lcom/yf/smart/weloopx/c/x;Lcom/yf/smart/weloopx/data/models/DailyGain;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 752
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/c/x;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 527
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f0702b5

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/c/x;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/yf/smart/weloopx/c/x;->i()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 782
    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 783
    invoke-static {p1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 784
    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/c/x;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/c/x;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/yf/smart/weloopx/c/x;->m()V

    return-void
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/c/x;)Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/x;->n:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/c/x;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/x;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Lcom/yf/smart/weloopx/data/j;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/yf/smart/weloopx/c/x;->f:Lcom/yf/smart/weloopx/data/j;

    return-object v0
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/c/x;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/yf/smart/weloopx/c/x;->h()V

    return-void
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/c/x;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/x;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    const v3, 0x7f070240

    .line 201
    const/16 v0, 0x80

    .line 202
    iget-boolean v1, p0, Lcom/yf/smart/weloopx/c/x;->c:Z

    if-eqz v1, :cond_0

    .line 203
    const/4 v0, 0x6

    iput v0, p0, Lcom/yf/smart/weloopx/c/x;->j:I

    .line 204
    const-string v0, "V 4.02"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/b;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 205
    const/16 v0, 0x40

    .line 210
    :cond_0
    :goto_0
    sput v3, Lcom/yf/smart/weloopx/c/x;->a:I

    .line 211
    invoke-direct {p0, v3}, Lcom/yf/smart/weloopx/c/x;->a(I)V

    .line 212
    iget v1, p0, Lcom/yf/smart/weloopx/c/x;->j:I

    iget v2, p0, Lcom/yf/smart/weloopx/c/x;->k:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(II)V

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncDeviceDataUtil 1. \u5f00\u59cb\u540c\u6b65\u524d\u7684\u5404\u9879\u53c2\u6570: happenDate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/x;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mac = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/x;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/x;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isTommy2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yf/smart/weloopx/c/x;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", frameSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yf/smart/weloopx/c/x;->c(Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v1

    new-instance v2, Lcom/yf/smart/weloopx/c/y;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/c/y;-><init>(Lcom/yf/smart/weloopx/c/x;)V

    iget-boolean v3, p0, Lcom/yf/smart/weloopx/c/x;->l:Z

    invoke-virtual {v1, v0, v2, v3}, Lcom/yf/smart/weloopx/b/b;->a(ILcom/yf/gattlib/client/b/p$a;Z)V

    .line 271
    return-void

    .line 207
    :cond_1
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method static synthetic i(Lcom/yf/smart/weloopx/c/x;)Lcom/yf/gattlib/client/b/b/a;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/x;->o:Lcom/yf/gattlib/client/b/b/a;

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/c/x;->c:Z

    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/c/x;->c()Z

    .line 289
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/x;->e:Landroid/os/Handler;

    new-instance v1, Lcom/yf/smart/weloopx/c/z;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/c/z;-><init>(Lcom/yf/smart/weloopx/c/x;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic j(Lcom/yf/smart/weloopx/c/x;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/x;->r:Ljava/lang/Runnable;

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    const v0, 0x7f0700dd

    .line 415
    sput v0, Lcom/yf/smart/weloopx/c/x;->a:I

    .line 416
    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/c/x;->a(I)V

    .line 418
    new-instance v0, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;-><init>()V

    .line 420
    iget-object v1, p0, Lcom/yf/smart/weloopx/c/x;->i:Ljava/lang/String;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {p0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/x;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    :cond_0
    const/4 v1, -0x1

    invoke-static {v1}, Lcom/yf/gattlib/p/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->setHappenDate(Ljava/lang/String;)V

    .line 425
    :goto_0
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->setAccessToken(Ljava/lang/String;)V

    .line 426
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->setDeviceId(Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/yf/smart/weloopx/c/x;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->setMac(Ljava/lang/String;)V

    .line 428
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->setAdditionalDays(I)V

    .line 429
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const v2, 0x36ee80

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->setTimeZone(F)V

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncDeviceDataUtil 6. \u4e0b\u8f7d\u670d\u52a1\u5668\u6570\u636e\u7ec4\u88c5\u7684 HappenDate, accessToken, deviceId, mac = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->getHappenDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->getAdditionalDays()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->getTimeZone()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yf/smart/weloopx/c/x;->c(Ljava/lang/String;)V

    .line 438
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v1

    new-instance v2, Lcom/yf/smart/weloopx/c/ab;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/c/ab;-><init>(Lcom/yf/smart/weloopx/c/x;)V

    invoke-virtual {v1, v0, v2}, Lcom/yf/smart/weloopx/b/a;->a(Lcom/yf/smart/weloopx/data/models/BongDownloadParams;Lcom/yf/smart/weloopx/b/b/l;)V

    .line 471
    return-void

    .line 423
    :cond_1
    iget-object v1, p0, Lcom/yf/smart/weloopx/c/x;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->setHappenDate(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic k(Lcom/yf/smart/weloopx/c/x;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/x;->q:Landroid/os/Handler;

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 9

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/c/x;->c:Z

    if-nez v0, :cond_0

    .line 478
    const-string v0, "SyncDeviceDataUtil \u4e0d\u662f\u5c0f\u9ed12\uff0c\u4e0d\u7528\u7ec4\u88c5\u8dd1\u6b65\u6570\u636e"

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/c/x;->c(Ljava/lang/String;)V

    .line 479
    const-string v0, ""

    .line 510
    :goto_0
    return-object v0

    .line 481
    :cond_0
    sget-object v0, Lcom/yf/smart/weloopx/c/x;->f:Lcom/yf/smart/weloopx/data/j;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/x;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/j;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 482
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 483
    :cond_1
    const-string v0, "SyncDeviceDataUtil \u83b7\u5f97\u8dd1\u6b65\u6570\u636e\u662f\u7a7a\u7684"

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/c/x;->c(Ljava/lang/String;)V

    .line 484
    const-string v0, ""

    goto :goto_0

    .line 486
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 488
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/client/b/b/b;

    .line 489
    if-lez v1, :cond_3

    .line 490
    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    :cond_3
    iget v4, v0, Lcom/yf/gattlib/client/b/b/b;->a:I

    .line 493
    iget v5, v0, Lcom/yf/gattlib/client/b/b/b;->b:I

    .line 494
    iget v6, v0, Lcom/yf/gattlib/client/b/b/b;->c:I

    .line 495
    iget v0, v0, Lcom/yf/gattlib/client/b/b/b;->d:I

    .line 497
    const-string v7, "2014-01-01 00:00:00"

    invoke-static {v7}, Lcom/yf/gattlib/p/b;->b(Ljava/lang/String;)I

    move-result v7

    .line 498
    add-int v8, v7, v4

    invoke-static {v8}, Lcom/yf/gattlib/p/b;->b(I)Ljava/lang/String;

    move-result-object v8

    .line 499
    add-int/2addr v4, v7

    add-int/2addr v4, v5

    invoke-static {v4}, Lcom/yf/gattlib/p/b;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 500
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 509
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncDeviceDataUtil \u7ec4\u88c5\u5c06\u8981\u4e0a\u4f20\u7684\u8dd1\u6b65\u4fe1\u606f = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/c/x;->c(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 514
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->e()Ljava/lang/String;

    move-result-object v0

    .line 515
    iget-object v1, p0, Lcom/yf/smart/weloopx/c/x;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/c;->f()Ljava/lang/String;

    move-result-object v0

    .line 518
    :cond_0
    return-object v0
.end method

.method static synthetic l(Lcom/yf/smart/weloopx/c/x;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/yf/smart/weloopx/c/x;->o()V

    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 539
    new-instance v0, Lcom/yf/gattlib/client/b/r;

    new-instance v1, Lcom/yf/smart/weloopx/c/ac;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/c/ac;-><init>(Lcom/yf/smart/weloopx/c/x;)V

    invoke-direct {v0, v1}, Lcom/yf/gattlib/client/b/r;-><init>(Lcom/yf/gattlib/client/b/p$a;)V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/r;->f()Lcom/yf/gattlib/client/b/e;

    .line 602
    return-void
.end method

.method private n()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 755
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/b;->o()Z

    move-result v1

    if-nez v1, :cond_1

    .line 778
    :cond_0
    :goto_0
    return v0

    .line 759
    :cond_1
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/b;->m()Ljava/lang/String;

    move-result-object v1

    .line 760
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 764
    iget-boolean v2, p0, Lcom/yf/smart/weloopx/c/x;->d:Z

    if-eqz v2, :cond_2

    const-string v2, "V 3.40"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 769
    :cond_2
    invoke-static {}, Lcom/yf/smart/weloopx/c/w;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "V 4.01"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 774
    :cond_3
    invoke-static {}, Lcom/yf/smart/weloopx/c/w;->g()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/yf/smart/weloopx/c/w;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string v2, "V 2.18"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 778
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 817
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "KEY_AUTO_SYNC_DATA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncDeviceDataUtil \u81ea\u52a8\u540c\u6b65\u6570\u636e\u5f00\u5173 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yf/smart/weloopx/c/x;->c(Ljava/lang/String;)V

    .line 819
    if-nez v0, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/x;->m:Lcom/yf/smart/weloopx/g/d;

    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 824
    const-string v0, "SyncDeviceDataUtil \u6ca1\u6709\u7f51\u7edc\u4e0d\u540c\u6b65"

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/c/x;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 827
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/x;->m:Lcom/yf/smart/weloopx/g/d;

    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/g/d;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 828
    const-string v0, "SyncDeviceDataUtil \u5904\u4e8e\u524d\u53f0\uff0c\u4e0d\u6267\u884c\u540c\u6b65\u6570\u636e"

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/c/x;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 832
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 833
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncDeviceDataUtil \u73b0\u5728\u7684\u65f6\u95f4 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yf/smart/weloopx/c/x;->c(Ljava/lang/String;)V

    .line 835
    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 839
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->o()Z

    move-result v0

    if-nez v0, :cond_4

    .line 840
    const-string v0, "SyncDeviceDataUtil \u8bbe\u5907\u6ca1\u6709\u521d\u59cb\u5316\u3001\u8bbe\u5907\u65e0\u8fde\u63a5\uff0c\u4e0d\u540c\u6b65"

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/c/x;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 844
    :cond_4
    invoke-static {}, Lcom/yf/smart/weloopx/c/x;->a()Lcom/yf/smart/weloopx/c/x;

    move-result-object v0

    invoke-static {}, Lcom/yf/gattlib/p/b;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/yf/smart/weloopx/c/x;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 158
    :cond_1
    const/4 v0, 0x4

    :try_start_1
    iput v0, p0, Lcom/yf/smart/weloopx/c/x;->j:I

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/c/x;->k:I

    .line 161
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/x;->i:Ljava/lang/String;

    .line 162
    iput-boolean p2, p0, Lcom/yf/smart/weloopx/c/x;->l:Z

    .line 164
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/x;->i:Ljava/lang/String;

    const-string v1, "yyyy-MM-dd"

    invoke-static {v1}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 165
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/b;->o()Z

    move-result v1

    if-nez v1, :cond_3

    .line 166
    if-nez v0, :cond_2

    .line 167
    invoke-direct {p0}, Lcom/yf/smart/weloopx/c/x;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 171
    :cond_2
    const/4 v0, -0x1

    const v1, 0x7f0700c5

    :try_start_2
    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(IILjava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/yf/smart/weloopx/c/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/yf/smart/weloopx/c/w;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    const-string v2, "SyncDeviceDataUtil"

    invoke-static {v2, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 178
    invoke-static {}, Lcom/yf/smart/weloopx/c/w;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 179
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yf/smart/weloopx/c/x;->c:Z

    .line 180
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/yf/smart/weloopx/c/x;->d:Z

    .line 190
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.download.upload.locationinfo"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    const-string v2, "DATE"

    iget-object v3, p0, Lcom/yf/smart/weloopx/c/x;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v2, "IS_CUR_DATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/a/a;->c(Landroid/content/Intent;)V

    .line 195
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/c/x;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/yf/smart/weloopx/c/x;->h()V

    goto/16 :goto_0

    .line 181
    :cond_4
    invoke-static {}, Lcom/yf/smart/weloopx/c/w;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 182
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/yf/smart/weloopx/c/x;->c:Z

    .line 183
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yf/smart/weloopx/c/x;->d:Z

    goto :goto_1

    .line 185
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/yf/smart/weloopx/c/x;->c:Z

    .line 186
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/yf/smart/weloopx/c/x;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public b()Lcom/yf/gattlib/client/b/b/a;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/x;->o:Lcom/yf/gattlib/client/b/b/a;

    return-object v0
.end method

.method public c()Z
    .locals 8

    .prologue
    const v3, 0x7f0702b0

    const/4 v0, 0x0

    .line 296
    iget-object v1, p0, Lcom/yf/smart/weloopx/c/x;->m:Lcom/yf/smart/weloopx/g/d;

    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    const/4 v1, -0x1

    const v2, 0x7f07024c

    const-string v3, ""

    invoke-direct {p0, v1, v2, v3}, Lcom/yf/smart/weloopx/c/x;->a(IILjava/lang/String;)V

    .line 298
    iget v1, p0, Lcom/yf/smart/weloopx/c/x;->j:I

    iget v2, p0, Lcom/yf/smart/weloopx/c/x;->j:I

    invoke-direct {p0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(II)V

    .line 299
    const-string v1, "SyncDeviceDataUtil \u4e0a\u4f20\u6570\u636e\u7684\u65f6\u5019\u6ca1\u6709\u7f51\u7edc"

    invoke-direct {p0, v1}, Lcom/yf/smart/weloopx/c/x;->c(Ljava/lang/String;)V

    .line 408
    :goto_0
    return v0

    .line 303
    :cond_0
    sput v3, Lcom/yf/smart/weloopx/c/x;->a:I

    .line 304
    invoke-direct {p0, v3}, Lcom/yf/smart/weloopx/c/x;->a(I)V

    .line 306
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/b;->d()Lcom/yf/smart/weloopx/data/models/OriginalData;

    move-result-object v1

    .line 307
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/OriginalData;->getData()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_2

    .line 308
    :cond_1
    invoke-direct {p0}, Lcom/yf/smart/weloopx/c/x;->j()V

    goto :goto_0

    .line 312
    :cond_2
    invoke-direct {p0}, Lcom/yf/smart/weloopx/c/x;->k()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/b/b;->f()Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    const v5, 0x36ee80

    div-int/2addr v4, v5

    int-to-float v4, v4

    .line 316
    new-instance v5, Lcom/yf/smart/weloopx/data/models/BongUploadParams;

    invoke-direct {v5}, Lcom/yf/smart/weloopx/data/models/BongUploadParams;-><init>()V

    .line 317
    invoke-virtual {v5, v2}, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->setAccessToken(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v5, v3}, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->setDeviceId(Ljava/lang/String;)V

    .line 319
    iget-object v6, p0, Lcom/yf/smart/weloopx/c/x;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->setMac(Ljava/lang/String;)V

    .line 320
    iput-object v0, v5, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->runinfo:Ljava/lang/String;

    .line 321
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/OriginalData;->getData()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->setDeviceData([B)V

    .line 322
    invoke-virtual {v5, v4}, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->setTimeZone(F)V

    .line 323
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SyncDeviceDataUtil 4. \u4e0a\u4f20\u539f\u59cb\u6570\u636e\u7684\u53c2\u6570 accessToken = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", deviceTypeId = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mac = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/c/x;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", runningDataInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/OriginalData;->getData()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timeZone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yf/smart/weloopx/c/x;->c(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v2

    new-instance v3, Lcom/yf/smart/weloopx/c/aa;

    invoke-direct {v3, p0, v1, v0}, Lcom/yf/smart/weloopx/c/aa;-><init>(Lcom/yf/smart/weloopx/c/x;Lcom/yf/smart/weloopx/data/models/OriginalData;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v3}, Lcom/yf/smart/weloopx/b/a;->a(Lcom/yf/smart/weloopx/data/models/BongUploadParams;Lcom/yf/smart/weloopx/b/b/b;)V

    .line 408
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public d()Z
    .locals 5

    .prologue
    const v4, 0x7f070250

    const/4 v0, 0x0

    .line 623
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yf/smart/weloopx/c/x;->o:Lcom/yf/gattlib/client/b/b/a;

    .line 624
    invoke-direct {p0}, Lcom/yf/smart/weloopx/c/x;->n()Z

    move-result v1

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is support data call back = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yf/smart/weloopx/c/x;->c(Ljava/lang/String;)V

    .line 626
    if-nez v1, :cond_0

    .line 627
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v1

    sget-object v2, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 680
    :goto_0
    return v0

    .line 631
    :cond_0
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/b;->o()Z

    move-result v1

    if-nez v1, :cond_1

    .line 632
    const-string v1, "SyncDeviceDataUtil \u8bbe\u5907\u672a\u80fd\u521d\u59cb\u5316\u5b8c\u6bd5"

    invoke-direct {p0, v1}, Lcom/yf/smart/weloopx/c/x;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :cond_1
    sput v4, Lcom/yf/smart/weloopx/c/x;->a:I

    .line 638
    invoke-direct {p0, v4}, Lcom/yf/smart/weloopx/c/x;->a(I)V

    .line 639
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 640
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 641
    new-instance v0, Lcom/yf/gattlib/client/b/s;

    new-instance v2, Lcom/yf/smart/weloopx/c/ad;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/c/ad;-><init>(Lcom/yf/smart/weloopx/c/x;)V

    invoke-direct {v0, v1, v2}, Lcom/yf/gattlib/client/b/s;-><init>(Ljava/util/List;Lcom/yf/gattlib/client/b/a/b;)V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/s;->f()Lcom/yf/gattlib/client/b/e;

    .line 680
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/x;->p:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 788
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/x;->p:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 789
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/x;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/x;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 790
    return-void
.end method

.method public f()V
    .locals 6

    .prologue
    .line 793
    new-instance v1, Lcom/yf/smart/weloopx/c/ah;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/c/ah;-><init>(Lcom/yf/smart/weloopx/c/x;)V

    .line 802
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v2, "KEY_SERVER_ALPHA"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x493e0

    move v4, v0

    .line 804
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/x;->p:Ljava/util/Timer;

    .line 805
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/x;->p:Ljava/util/Timer;

    int-to-long v2, v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 806
    return-void

    .line 802
    :cond_0
    const v0, 0xdbba00

    move v4, v0

    goto :goto_0
.end method
