.class public final Lcom/yf/gattlib/f/b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/f/b$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Runnable;

.field private B:Ljava/lang/Runnable;

.field private C:Ljava/lang/Runnable;

.field private D:Ljava/lang/Runnable;

.field private E:Ljava/lang/Runnable;

.field private F:Lcom/yf/gattlib/f/a;

.field private a:Lcom/yf/gattlib/a/b;

.field private b:Lcom/yf/gattlib/server/a;

.field private c:Lcom/yf/gattlib/client/c;

.field private d:Z

.field private e:Landroid/os/Handler;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Z

.field private k:J

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Lcom/yf/gattlib/client/d;

.field private t:Z

.field private u:Lcom/yf/gattlib/client/f;

.field private v:Z

.field private w:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/Runnable;

.field private y:Ljava/lang/Runnable;

.field private z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/yf/gattlib/a/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v2, p0, Lcom/yf/gattlib/f/b;->d:Z

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/f/b;->e:Landroid/os/Handler;

    .line 56
    iput-boolean v2, p0, Lcom/yf/gattlib/f/b;->j:Z

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yf/gattlib/f/b;->k:J

    .line 65
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/f/b;->s:Lcom/yf/gattlib/client/d;

    .line 66
    iput-boolean v2, p0, Lcom/yf/gattlib/f/b;->t:Z

    .line 310
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/f/b;->w:Ljava/util/Stack;

    .line 332
    new-instance v0, Lcom/yf/gattlib/f/d;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/f/d;-><init>(Lcom/yf/gattlib/f/b;)V

    iput-object v0, p0, Lcom/yf/gattlib/f/b;->x:Ljava/lang/Runnable;

    .line 372
    new-instance v0, Lcom/yf/gattlib/f/f;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/f/f;-><init>(Lcom/yf/gattlib/f/b;)V

    iput-object v0, p0, Lcom/yf/gattlib/f/b;->y:Ljava/lang/Runnable;

    .line 381
    new-instance v0, Lcom/yf/gattlib/f/g;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/f/g;-><init>(Lcom/yf/gattlib/f/b;)V

    iput-object v0, p0, Lcom/yf/gattlib/f/b;->z:Ljava/lang/Runnable;

    .line 397
    new-instance v0, Lcom/yf/gattlib/f/h;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/f/h;-><init>(Lcom/yf/gattlib/f/b;)V

    iput-object v0, p0, Lcom/yf/gattlib/f/b;->A:Ljava/lang/Runnable;

    .line 428
    new-instance v0, Lcom/yf/gattlib/f/j;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/f/j;-><init>(Lcom/yf/gattlib/f/b;)V

    iput-object v0, p0, Lcom/yf/gattlib/f/b;->B:Ljava/lang/Runnable;

    .line 438
    new-instance v0, Lcom/yf/gattlib/f/k;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/f/k;-><init>(Lcom/yf/gattlib/f/b;)V

    iput-object v0, p0, Lcom/yf/gattlib/f/b;->C:Ljava/lang/Runnable;

    .line 465
    new-instance v0, Lcom/yf/gattlib/f/l;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/f/l;-><init>(Lcom/yf/gattlib/f/b;)V

    iput-object v0, p0, Lcom/yf/gattlib/f/b;->D:Ljava/lang/Runnable;

    .line 481
    new-instance v0, Lcom/yf/gattlib/f/m;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/f/m;-><init>(Lcom/yf/gattlib/f/b;)V

    iput-object v0, p0, Lcom/yf/gattlib/f/b;->E:Ljava/lang/Runnable;

    .line 72
    invoke-static {}, Lcom/yf/gattlib/client/f;->a()Lcom/yf/gattlib/client/f;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/f/b;->u:Lcom/yf/gattlib/client/f;

    .line 73
    iput-object p1, p0, Lcom/yf/gattlib/f/b;->a:Lcom/yf/gattlib/a/b;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/f/b;->e:Landroid/os/Handler;

    .line 75
    invoke-static {}, Lcom/yf/gattlib/client/c;->a()Lcom/yf/gattlib/client/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/f/b;->c:Lcom/yf/gattlib/client/c;

    .line 76
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->c:Lcom/yf/gattlib/client/c;

    new-instance v1, Lcom/yf/gattlib/f/c;

    invoke-direct {v1, p0}, Lcom/yf/gattlib/f/c;-><init>(Lcom/yf/gattlib/f/b;)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/c;->a(Lcom/yf/gattlib/client/c$a;)V

    .line 148
    return-void
.end method

.method static synthetic a(Lcom/yf/gattlib/f/b;)J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/yf/gattlib/f/b;->k:J

    return-wide v0
.end method

.method static synthetic a(Lcom/yf/gattlib/f/b;J)J
    .locals 1

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/yf/gattlib/f/b;->k:J

    return-wide p1
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->w:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v1, p0, Lcom/yf/gattlib/f/b;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/yf/gattlib/f/b;->w:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    const-string v0, "init stack is empty"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yf/gattlib/f/b;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/yf/gattlib/f/b;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/yf/gattlib/f/b;J)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/yf/gattlib/f/b;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/yf/gattlib/f/b;)Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/yf/gattlib/f/b;->z()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/yf/gattlib/f/b;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/yf/gattlib/f/b;->m:Z

    return p1
.end method

.method static synthetic c(Lcom/yf/gattlib/f/b;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/yf/gattlib/f/b;->v:Z

    return v0
.end method

.method static synthetic c(Lcom/yf/gattlib/f/b;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/yf/gattlib/f/b;->n:Z

    return p1
.end method

.method static synthetic d(Lcom/yf/gattlib/f/b;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->w:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic d(Lcom/yf/gattlib/f/b;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/yf/gattlib/f/b;->o:Z

    return p1
.end method

.method static synthetic e(Lcom/yf/gattlib/f/b;)Lcom/yf/gattlib/client/c;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->c:Lcom/yf/gattlib/client/c;

    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 691
    .line 693
    const-string v2, "WN02B01"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "WeLoop"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Tommy"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DfuTarg"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v1

    .line 695
    :goto_0
    if-eqz v2, :cond_2

    .line 696
    const-string v0, "WN02B01"

    .line 715
    :goto_1
    return-object v0

    :cond_1
    move v2, v0

    .line 693
    goto :goto_0

    .line 699
    :cond_2
    const-string v2, "BN01L02"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Now"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v1

    .line 700
    :goto_2
    if-eqz v2, :cond_5

    .line 701
    const-string v0, "BN01L02"

    goto :goto_1

    :cond_4
    move v2, v0

    .line 699
    goto :goto_2

    .line 704
    :cond_5
    const-string v2, "BN01SH02"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "NowC"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "Now Classic"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    move v2, v1

    .line 706
    :goto_3
    if-eqz v2, :cond_8

    .line 707
    const-string v0, "BN01SH02"

    goto :goto_1

    :cond_7
    move v2, v0

    .line 704
    goto :goto_3

    .line 710
    :cond_8
    const-string v2, "WN08B08"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "Tommy2"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "WeLoop B08"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    move v0, v1

    .line 712
    :cond_a
    if-eqz v0, :cond_b

    .line 713
    const-string v0, "WN08B08"

    goto :goto_1

    .line 715
    :cond_b
    const-string v0, ""

    goto :goto_1
.end method

.method static synthetic e(Lcom/yf/gattlib/f/b;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/yf/gattlib/f/b;->p:Z

    return p1
.end method

.method static synthetic f(Lcom/yf/gattlib/f/b;)Lcom/yf/gattlib/client/d;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->s:Lcom/yf/gattlib/client/d;

    return-object v0
.end method

.method static synthetic f(Lcom/yf/gattlib/f/b;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/yf/gattlib/f/b;->r:Z

    return p1
.end method

.method static synthetic g(Lcom/yf/gattlib/f/b;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/yf/gattlib/f/b;->x()V

    return-void
.end method

.method static synthetic g(Lcom/yf/gattlib/f/b;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/yf/gattlib/f/b;->q:Z

    return p1
.end method

.method static synthetic h(Lcom/yf/gattlib/f/b;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/yf/gattlib/f/b;->l:I

    return v0
.end method

.method static synthetic h(Lcom/yf/gattlib/f/b;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/yf/gattlib/f/b;->f:Z

    return p1
.end method

.method static synthetic i(Lcom/yf/gattlib/f/b;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/yf/gattlib/f/b;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yf/gattlib/f/b;->l:I

    return v0
.end method

.method static synthetic j(Lcom/yf/gattlib/f/b;)Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/yf/gattlib/f/b;->y()Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/yf/gattlib/f/b;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->A:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic l(Lcom/yf/gattlib/f/b;)Lcom/yf/gattlib/a/b;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->a:Lcom/yf/gattlib/a/b;

    return-object v0
.end method

.method private x()V
    .locals 2

    .prologue
    .line 307
    iget-wide v0, p0, Lcom/yf/gattlib/f/b;->i:J

    invoke-direct {p0, v0, v1}, Lcom/yf/gattlib/f/b;->a(J)V

    .line 308
    return-void
.end method

.method private y()Z
    .locals 4

    .prologue
    .line 621
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 622
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 623
    iget-object v2, p0, Lcom/yf/gattlib/f/b;->c:Lcom/yf/gattlib/client/c;

    invoke-virtual {v2}, Lcom/yf/gattlib/client/c;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 625
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 626
    const/4 v0, 0x1

    .line 628
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private z()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 739
    iget-object v1, p0, Lcom/yf/gattlib/f/b;->c:Lcom/yf/gattlib/client/c;

    invoke-virtual {v1}, Lcom/yf/gattlib/client/c;->e()Ljava/lang/String;

    move-result-object v1

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GattInstance  version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0}, Lcom/yf/gattlib/f/b;->u()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "V 4.05"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 742
    const-string v1, "GattInstance  \u662fB08\u624b\u8868 \u65b0\u534f\u8bae\u56fa\u4ef6 "

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 754
    :goto_0
    return v0

    .line 745
    :cond_0
    invoke-virtual {p0}, Lcom/yf/gattlib/f/b;->v()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "V 2.20"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 746
    const-string v1, "GattInstance  \u662f\u624b\u73af \u65b0\u534f\u8bae\u56fa\u4ef6 "

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 749
    :cond_1
    invoke-virtual {p0}, Lcom/yf/gattlib/f/b;->w()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "V 2.20"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 750
    const-string v1, "GattInstance  \u662f\u624b\u73af \u65b0\u534f\u8bae\u56fa\u4ef6 "

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 753
    :cond_2
    const-string v0, "GattInstance \u4e0d\u662f\u65b0\u534f\u8bae\u7684\u56fa\u4ef6 "

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 754
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/yf/gattlib/client/d;
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yf/gattlib/f/a;)V
    .locals 3

    .prologue
    .line 586
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->a:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "is upgrading"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 587
    const-string v0, "GattInstance setCustomInit() put GattSettingKeys.KEY_IS_UPGRADING = false "

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 588
    iput-object p1, p0, Lcom/yf/gattlib/f/b;->F:Lcom/yf/gattlib/f/a;

    .line 589
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/yf/gattlib/f/b;->d:Z

    .line 280
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/yf/gattlib/f/b;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v0

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/yf/gattlib/f/b;->u:Lcom/yf/gattlib/client/f;

    invoke-virtual {v1}, Lcom/yf/gattlib/client/f;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/yf/gattlib/f/b;->b:Lcom/yf/gattlib/server/a;

    invoke-virtual {v1}, Lcom/yf/gattlib/server/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/yf/gattlib/f/b;->u:Lcom/yf/gattlib/client/f;

    invoke-virtual {v1}, Lcom/yf/gattlib/client/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Z)V
    .locals 3

    .prologue
    .line 656
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->a:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "need set calories"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 657
    if-nez v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->a:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "need set calories"

    invoke-virtual {v0, v1, p1}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 660
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/yf/gattlib/f/b;->m:Z

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 604
    const-string v1, "GattInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " address , current = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/gattlib/f/b;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v1, p0, Lcom/yf/gattlib/f/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    :goto_0
    return v0

    .line 609
    :cond_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x5

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    iget-object v1, p0, Lcom/yf/gattlib/f/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/yf/gattlib/f/b;->h:Ljava/lang/String;

    .line 617
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/yf/gattlib/f/b;->r:Z

    return v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 679
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    :goto_0
    return-object p1

    .line 682
    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 683
    if-lez v0, :cond_1

    .line 684
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 686
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GattInstance DeviceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 184
    iput-boolean v1, p0, Lcom/yf/gattlib/f/b;->f:Z

    .line 185
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->a:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v2

    .line 188
    const-string v0, "bluetooth"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 190
    if-nez v0, :cond_0

    .line 191
    const-string v0, "GattInstance"

    const-string v2, "Unable to initialize BluetoothManager."

    invoke-static {v0, v2}, Lcom/yf/gattlib/p/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 220
    :goto_0
    return v0

    .line 195
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 196
    if-nez v3, :cond_1

    .line 197
    const-string v0, "GattInstance"

    const-string v2, "Unable to obtain a BluetoothAdapter."

    invoke-static {v0, v2}, Lcom/yf/gattlib/p/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 198
    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 202
    const-string v0, "GattInstance"

    const-string v2, "BluetoothAdapter is enabled."

    invoke-static {v0, v2}, Lcom/yf/gattlib/p/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 203
    goto :goto_0

    .line 206
    :cond_2
    new-instance v3, Lcom/yf/gattlib/server/a;

    invoke-direct {v3, v2, v0}, Lcom/yf/gattlib/server/a;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothManager;)V

    iput-object v3, p0, Lcom/yf/gattlib/f/b;->b:Lcom/yf/gattlib/server/a;

    .line 209
    :try_start_0
    iget-object v3, p0, Lcom/yf/gattlib/f/b;->b:Lcom/yf/gattlib/server/a;

    invoke-virtual {v3, v2, v0}, Lcom/yf/gattlib/server/a;->a(Landroid/content/Context;Landroid/bluetooth/BluetoothManager;)V

    .line 210
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->b:Lcom/yf/gattlib/server/a;

    new-instance v3, Lcom/yf/gattlib/server/a/b/a;

    iget-object v4, p0, Lcom/yf/gattlib/f/b;->b:Lcom/yf/gattlib/server/a;

    invoke-virtual {v4}, Lcom/yf/gattlib/server/a;->d()Landroid/bluetooth/BluetoothGattServer;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/yf/gattlib/server/a/b/a;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServer;)V

    invoke-virtual {v0, v3}, Lcom/yf/gattlib/server/a;->a(Lcom/yf/gattlib/server/a/a;)V
    :try_end_0
    .catch Lcom/yf/gattlib/e/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->u:Lcom/yf/gattlib/client/f;

    invoke-virtual {v0, v2}, Lcom/yf/gattlib/client/f;->a(Landroid/content/Context;)Z

    .line 217
    invoke-static {}, Lcom/yf/gattlib/client/dfu/b;->a()Lcom/yf/gattlib/client/dfu/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/dfu/b;->c()V

    .line 218
    invoke-static {}, Lcom/yf/gattlib/client/b;->a()Lcom/yf/gattlib/client/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b;->b()V

    .line 219
    invoke-static {}, Lcom/yf/gattlib/client/b/be;->a()Lcom/yf/gattlib/client/b/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/be;->b()V

    .line 220
    const/4 v0, 0x1

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 214
    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 224
    invoke-static {}, Lcom/yf/gattlib/client/b/be;->a()Lcom/yf/gattlib/client/b/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/be;->c()V

    .line 226
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->u:Lcom/yf/gattlib/client/f;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->e()V

    .line 227
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->b:Lcom/yf/gattlib/server/a;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->b:Lcom/yf/gattlib/server/a;

    invoke-virtual {v0}, Lcom/yf/gattlib/server/a;->a()V

    .line 230
    :cond_0
    return-void
.end method

.method public f()Lcom/yf/gattlib/server/a;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->b:Lcom/yf/gattlib/server/a;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->b:Lcom/yf/gattlib/server/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/yf/gattlib/f/b;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/yf/gattlib/f/b;->u:Lcom/yf/gattlib/client/f;

    invoke-virtual {v1}, Lcom/yf/gattlib/client/f;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yf/gattlib/f/b;->b:Lcom/yf/gattlib/server/a;

    invoke-virtual {v1}, Lcom/yf/gattlib/server/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/yf/gattlib/f/b;->d:Z

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->u:Lcom/yf/gattlib/client/f;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/yf/gattlib/client/c;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->c:Lcom/yf/gattlib/client/c;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/yf/gattlib/f/b;->g:Z

    return v0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/yf/gattlib/f/b;->o()V

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/gattlib/f/b;->g:Z

    .line 504
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->w:Ljava/util/Stack;

    iget-object v1, p0, Lcom/yf/gattlib/f/b;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/yf/gattlib/f/b;->a(J)V

    .line 506
    return-void
.end method

.method public n()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v4, 0x1

    .line 509
    invoke-virtual {p0}, Lcom/yf/gattlib/f/b;->o()V

    .line 510
    iput v4, p0, Lcom/yf/gattlib/f/b;->l:I

    .line 511
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->a:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    .line 512
    const-string v1, "interval between initial transactions"

    invoke-virtual {v0, v1, v6, v7}, Lcom/yf/gattlib/c/c;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/yf/gattlib/f/b;->i:J

    .line 514
    iget-object v1, p0, Lcom/yf/gattlib/f/b;->w:Ljava/util/Stack;

    .line 515
    iget-object v2, p0, Lcom/yf/gattlib/f/b;->E:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v2, "is upgrading"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    const-string v0, "GattInstance KEY_IS_UPGRADING  is true..."

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 519
    const-string v0, "GattInstance test, KEY_IS_UPGRADING  is true..."

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 520
    const-wide/16 v0, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/yf/gattlib/f/b;->a(J)V

    .line 561
    :goto_0
    return-void

    .line 524
    :cond_0
    const-string v2, "sync notification filter"

    invoke-virtual {v0, v2, v4}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 526
    iget-object v2, p0, Lcom/yf/gattlib/f/b;->C:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string v2, "GattInstance stack push mSyncNotificationFilterOutList"

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 528
    const-string v2, "GattInstance test, stack push mSyncNotificationFilterOutList"

    invoke-static {v2}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 531
    :cond_1
    iget-object v2, p0, Lcom/yf/gattlib/f/b;->F:Lcom/yf/gattlib/f/a;

    if-eqz v2, :cond_2

    .line 532
    iget-object v2, p0, Lcom/yf/gattlib/f/b;->F:Lcom/yf/gattlib/f/a;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const-string v2, "GattInstance stack push mCustomInit"

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 534
    const-string v2, "GattInstance test, stack push mCustomInit"

    invoke-static {v2}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 537
    :cond_2
    const-string v2, "sync phone type"

    invoke-virtual {v0, v2, v4}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 538
    iget-object v2, p0, Lcom/yf/gattlib/f/b;->z:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string v2, "GattInstance stack push mSyncPhoneType"

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 540
    const-string v2, "GattInstance test, stack push mSyncPhoneType"

    invoke-static {v2}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 543
    :cond_3
    const-string v2, "sync time"

    invoke-virtual {v0, v2, v4}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 544
    iget-object v2, p0, Lcom/yf/gattlib/f/b;->A:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v2, "GattInstance stack push mSyncTime"

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 546
    const-string v2, "GattInstance test, stack push mSyncTime"

    invoke-static {v2}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 549
    :cond_4
    const-string v2, "get device state"

    invoke-virtual {v0, v2, v4}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 550
    iget-object v2, p0, Lcom/yf/gattlib/f/b;->x:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const-string v2, "GattInstance stack push mGetDeviceState"

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 552
    const-string v2, "GattInstance test, stack push mGetDeviceState"

    invoke-static {v2}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 555
    :cond_5
    const-string v2, "get device infos"

    invoke-virtual {v0, v2, v4}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 556
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->y:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const-string v0, "GattInstance stack push mGetInfo"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 558
    const-string v0, "GattInstance test, stack push mGetInfo"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 560
    :cond_6
    invoke-direct {p0, v6, v7}, Lcom/yf/gattlib/f/b;->a(J)V

    goto/16 :goto_0
.end method

.method public o()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 564
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yf/gattlib/f/b;->k:J

    .line 565
    iput-boolean v2, p0, Lcom/yf/gattlib/f/b;->g:Z

    .line 566
    iput-boolean v2, p0, Lcom/yf/gattlib/f/b;->n:Z

    .line 567
    iput-boolean v2, p0, Lcom/yf/gattlib/f/b;->m:Z

    .line 568
    iput-boolean v2, p0, Lcom/yf/gattlib/f/b;->o:Z

    .line 569
    iput-boolean v2, p0, Lcom/yf/gattlib/f/b;->p:Z

    .line 570
    iput-boolean v2, p0, Lcom/yf/gattlib/f/b;->q:Z

    .line 571
    iput-boolean v2, p0, Lcom/yf/gattlib/f/b;->r:Z

    .line 572
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->F:Lcom/yf/gattlib/f/a;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->F:Lcom/yf/gattlib/f/a;

    invoke-interface {v0}, Lcom/yf/gattlib/f/a;->a()V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->w:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 576
    invoke-virtual {p0}, Lcom/yf/gattlib/f/b;->r()V

    .line 577
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->e:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 578
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->c:Lcom/yf/gattlib/client/c;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/c;->b()V

    .line 579
    invoke-static {}, Lcom/yf/gattlib/client/b/be;->a()Lcom/yf/gattlib/client/b/be;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v3, v1}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/e;I)V

    .line 580
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "cancel sync data"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 581
    return-void
.end method

.method public p()V
    .locals 0

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/yf/gattlib/f/b;->x()V

    .line 593
    return-void
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/yf/gattlib/f/b;->f:Z

    return v0
.end method

.method public r()V
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/gattlib/f/b;->f:Z

    .line 601
    return-void
.end method

.method public s()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 632
    invoke-virtual {p0}, Lcom/yf/gattlib/f/b;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 648
    :cond_0
    :goto_0
    return v0

    .line 636
    :cond_1
    invoke-virtual {p0}, Lcom/yf/gattlib/f/b;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 640
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/yf/gattlib/f/b;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public t()Ljava/lang/String;
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->c:Lcom/yf/gattlib/client/c;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/c;->f()Ljava/lang/String;

    move-result-object v0

    .line 665
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 675
    :goto_0
    return-object v0

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/f/b;->c:Lcom/yf/gattlib/client/c;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/c;->g()Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 671
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/f/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 675
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public u()Z
    .locals 2

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/yf/gattlib/f/b;->t()Ljava/lang/String;

    move-result-object v0

    .line 720
    invoke-direct {p0, v0}, Lcom/yf/gattlib/f/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 721
    const-string v1, "WN08B08"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 2

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/yf/gattlib/f/b;->t()Ljava/lang/String;

    move-result-object v0

    .line 726
    invoke-direct {p0, v0}, Lcom/yf/gattlib/f/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 727
    const-string v1, "BN01L02"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public w()Z
    .locals 2

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/yf/gattlib/f/b;->t()Ljava/lang/String;

    move-result-object v0

    .line 732
    invoke-direct {p0, v0}, Lcom/yf/gattlib/f/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 733
    const-string v1, "BN01SH02"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
