.class Lcom/baidu/location/v;
.super Lcom/baidu/location/u;

# interfaces
.implements Lcom/baidu/location/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/v$1;,
        Lcom/baidu/location/v$a;
    }
.end annotation


# static fields
.field private static ab:Lcom/baidu/location/v;


# instance fields
.field final Z:I

.field final a:I

.field final aa:Landroid/os/Handler;

.field private ac:Z

.field private ad:Lcom/baidu/location/E;

.field private ae:Ljava/lang/String;

.field private af:Lcom/baidu/location/BDLocation;

.field private ag:Lcom/baidu/location/BDLocation;

.field private ah:Lcom/baidu/location/D$b;

.field private ai:Lcom/baidu/location/aj$a;

.field private aj:Z

.field private volatile ak:Z

.field private al:Z

.field private am:J

.field private an:J

.field private ao:I

.field private ap:Lcom/baidu/location/BDLocation$a;

.field private aq:D

.field private ar:D

.field private as:Z

.field public eC:Lcom/baidu/location/u$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/v;->ab:Lcom/baidu/location/v;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/baidu/location/u;-><init>()V

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/baidu/location/v;->a:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/baidu/location/v;->Z:I

    iput-boolean v3, p0, Lcom/baidu/location/v;->ac:Z

    iput-object v1, p0, Lcom/baidu/location/v;->ad:Lcom/baidu/location/E;

    iput-object v1, p0, Lcom/baidu/location/v;->eC:Lcom/baidu/location/u$a;

    iput-object v1, p0, Lcom/baidu/location/v;->ae:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/v;->af:Lcom/baidu/location/BDLocation;

    iput-object v1, p0, Lcom/baidu/location/v;->ag:Lcom/baidu/location/BDLocation;

    iput-object v1, p0, Lcom/baidu/location/v;->ah:Lcom/baidu/location/D$b;

    iput-object v1, p0, Lcom/baidu/location/v;->ai:Lcom/baidu/location/aj$a;

    iput-boolean v3, p0, Lcom/baidu/location/v;->aj:Z

    iput-boolean v2, p0, Lcom/baidu/location/v;->ak:Z

    iput-boolean v2, p0, Lcom/baidu/location/v;->al:Z

    iput-wide v4, p0, Lcom/baidu/location/v;->am:J

    iput-wide v4, p0, Lcom/baidu/location/v;->an:J

    new-instance v0, Lcom/baidu/location/u$b;

    invoke-direct {v0, p0}, Lcom/baidu/location/u$b;-><init>(Lcom/baidu/location/u;)V

    iput-object v0, p0, Lcom/baidu/location/v;->aa:Landroid/os/Handler;

    iput-object v1, p0, Lcom/baidu/location/v;->ap:Lcom/baidu/location/BDLocation$a;

    iput-boolean v2, p0, Lcom/baidu/location/v;->as:Z

    new-instance v0, Lcom/baidu/location/E;

    invoke-direct {v0}, Lcom/baidu/location/E;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/v;->ad:Lcom/baidu/location/E;

    new-instance v0, Lcom/baidu/location/u$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/u$a;-><init>(Lcom/baidu/location/u;)V

    iput-object v0, p0, Lcom/baidu/location/v;->eC:Lcom/baidu/location/u$a;

    return-void
.end method

.method private a(Lcom/baidu/location/D$b;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/location/D;->cs()Lcom/baidu/location/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/D;->cx()Lcom/baidu/location/D$b;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/v;->eA:Lcom/baidu/location/D$b;

    iget-object v2, p0, Lcom/baidu/location/v;->eA:Lcom/baidu/location/D$b;

    if-ne p1, v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/baidu/location/v;->eA:Lcom/baidu/location/D$b;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/baidu/location/v;->eA:Lcom/baidu/location/D$b;

    invoke-virtual {p1, v2}, Lcom/baidu/location/D$b;->a(Lcom/baidu/location/D$b;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private a(Lcom/baidu/location/aj$a;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/location/aj;->at()Lcom/baidu/location/aj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/aj;->aw()Lcom/baidu/location/aj$a;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/v;->ex:Lcom/baidu/location/aj$a;

    iget-object v2, p0, Lcom/baidu/location/v;->ex:Lcom/baidu/location/aj$a;

    if-ne v2, p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/baidu/location/v;->ex:Lcom/baidu/location/aj$a;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/baidu/location/v;->ex:Lcom/baidu/location/aj$a;

    invoke-virtual {p1, v2}, Lcom/baidu/location/aj$a;->a(Lcom/baidu/location/aj$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/location/v;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/v;->al:Z

    return v0
.end method

.method static synthetic a(Lcom/baidu/location/v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/v;->al:Z

    return p1
.end method

.method public static aI()Lcom/baidu/location/v;
    .locals 1

    sget-object v0, Lcom/baidu/location/v;->ab:Lcom/baidu/location/v;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/v;

    invoke-direct {v0}, Lcom/baidu/location/v;-><init>()V

    sput-object v0, Lcom/baidu/location/v;->ab:Lcom/baidu/location/v;

    :cond_0
    sget-object v0, Lcom/baidu/location/v;->ab:Lcom/baidu/location/v;

    return-object v0
.end method

.method private b(Landroid/os/Message;)V
    .locals 5

    const-string v0, "baidu_location_service"

    const-string v1, "on request location ..."

    invoke-static {v0, v1}, Lcom/baidu/location/K;->if(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/r;->bO()Lcom/baidu/location/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/r;->bP()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/T;->for(Landroid/os/Message;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, p0, Lcom/baidu/location/v;->ao:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "this type %d is illegal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {}, Lcom/baidu/location/ao;->bg()Lcom/baidu/location/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ao;->a2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/baidu/location/v;->d(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/baidu/location/v;->c(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/baidu/location/v;->e()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/baidu/location/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/v;->f()V

    return-void
.end method

.method private c(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/baidu/location/ao;->bg()Lcom/baidu/location/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ao;->a2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/baidu/location/v;->d(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/baidu/location/v;->e()V

    goto :goto_0
.end method

.method private d(Landroid/os/Message;)V
    .locals 11

    invoke-static {}, Lcom/baidu/location/ao;->bg()Lcom/baidu/location/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ao;->a0()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/baidu/location/BDLocation;

    invoke-direct {v10, v9}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/location/K;->aG:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v8, v0, [F

    iget-wide v0, p0, Lcom/baidu/location/v;->ar:D

    iget-wide v2, p0, Lcom/baidu/location/v;->aq:D

    invoke-virtual {v10}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v10}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/v;->ap:Lcom/baidu/location/BDLocation$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/v;->ap:Lcom/baidu/location/BDLocation$a;

    invoke-virtual {v10, v0}, Lcom/baidu/location/BDLocation;->if(Lcom/baidu/location/BDLocation$a;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v0

    invoke-virtual {v0, v10, p1}, Lcom/baidu/location/T;->if(Lcom/baidu/location/BDLocation;Landroid/os/Message;)V

    invoke-static {}, Lcom/baidu/location/z;->a()Lcom/baidu/location/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/location/z;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/z;->a()Lcom/baidu/location/z;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/baidu/location/z;->if(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/v;->as:Z

    invoke-direct {p0}, Lcom/baidu/location/v;->e()V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    iget-boolean v0, p0, Lcom/baidu/location/v;->aj:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/baidu/location/v;->f()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/location/v;->ak:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/location/D;->cs()Lcom/baidu/location/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/D;->ct()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/v;->al:Z

    iget-object v0, p0, Lcom/baidu/location/v;->aa:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/location/v$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/location/v$a;-><init>(Lcom/baidu/location/v;Lcom/baidu/location/v$1;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/baidu/location/v;->f()V

    goto :goto_0
.end method

.method private f()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/baidu/location/v;->ak:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/v;->am:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/v;->af:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/v;->af:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0, v1}, Lcom/baidu/location/T;->do(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lcom/baidu/location/v;->g()V

    goto :goto_0

    :cond_1
    const-string v0, "baidu_location_service"

    const-string v1, "start network locating ..."

    invoke-static {v0, v1}, Lcom/baidu/location/K;->if(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/baidu/location/v;->ak:Z

    iget-object v0, p0, Lcom/baidu/location/v;->ai:Lcom/baidu/location/aj$a;

    invoke-direct {p0, v0}, Lcom/baidu/location/v;->a(Lcom/baidu/location/aj$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/location/v;->ac:Z

    iget-object v0, p0, Lcom/baidu/location/v;->ah:Lcom/baidu/location/D$b;

    invoke-direct {p0, v0}, Lcom/baidu/location/v;->a(Lcom/baidu/location/D$b;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/baidu/location/v;->ac:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/v;->af:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/baidu/location/v;->ao:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/baidu/location/v;->as:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/v;->ag:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/v;->an:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/v;->ag:Lcom/baidu/location/BDLocation;

    iput-object v0, p0, Lcom/baidu/location/v;->af:Lcom/baidu/location/BDLocation;

    iput-object v5, p0, Lcom/baidu/location/v;->ag:Lcom/baidu/location/BDLocation;

    :cond_2
    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/v;->af:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0, v1}, Lcom/baidu/location/T;->do(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lcom/baidu/location/v;->g()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v5}, Lcom/baidu/location/v;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/v;->af:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/v;->af:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0, v1}, Lcom/baidu/location/T;->do(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lcom/baidu/location/v;->g()V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0}, Lcom/baidu/location/BDLocation;-><init>()V

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/T;->do(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lcom/baidu/location/v;->g()V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/baidu/location/v;->ae:Ljava/lang/String;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/v;->ae:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v5, p0, Lcom/baidu/location/v;->ae:Ljava/lang/String;

    :cond_6
    iget-object v1, p0, Lcom/baidu/location/v;->eC:Lcom/baidu/location/u$a;

    invoke-virtual {v1, v0}, Lcom/baidu/location/u$a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/v;->ex:Lcom/baidu/location/aj$a;

    iput-object v0, p0, Lcom/baidu/location/v;->ai:Lcom/baidu/location/aj$a;

    iget-object v0, p0, Lcom/baidu/location/v;->eA:Lcom/baidu/location/D$b;

    iput-object v0, p0, Lcom/baidu/location/v;->ah:Lcom/baidu/location/D$b;

    iget-object v0, p0, Lcom/baidu/location/v;->ai:Lcom/baidu/location/aj$a;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/location/v;->ai:Lcom/baidu/location/aj$a;

    invoke-virtual {v0}, Lcom/baidu/location/aj$a;->do()I

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/baidu/location/ab;

    iget-object v1, p0, Lcom/baidu/location/v;->ai:Lcom/baidu/location/aj$a;

    iget-object v2, p0, Lcom/baidu/location/v;->ah:Lcom/baidu/location/D$b;

    invoke-direct {v0, v1, v2, v4}, Lcom/baidu/location/ab;-><init>(Lcom/baidu/location/aj$a;Lcom/baidu/location/D$b;Z)V

    invoke-virtual {v0}, Lcom/baidu/location/ab;->N()V

    invoke-direct {p0}, Lcom/baidu/location/v;->g()V

    :cond_7
    iget-boolean v0, p0, Lcom/baidu/location/v;->aj:Z

    if-ne v0, v4, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/v;->aj:Z

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/v;->am:J

    goto/16 :goto_0
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/v;->ak:Z

    iput-boolean v0, p0, Lcom/baidu/location/v;->as:Z

    invoke-direct {p0}, Lcom/baidu/location/v;->h()V

    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/v;->af:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/Z;->y()Lcom/baidu/location/Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/Z;->F()V

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 12

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/16 v10, 0x15

    invoke-static {}, Lcom/baidu/location/ao;->bg()Lcom/baidu/location/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ao;->a2()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/location/ao;->bg()Lcom/baidu/location/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ao;->a0()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/baidu/location/BDLocation;

    invoke-direct {v9, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/location/K;->aG:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v8, v0, [F

    iget-wide v0, p0, Lcom/baidu/location/v;->ar:D

    iget-wide v2, p0, Lcom/baidu/location/v;->aq:D

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v11

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/v;->ap:Lcom/baidu/location/BDLocation$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/v;->ap:Lcom/baidu/location/BDLocation$a;

    invoke-virtual {v9, v0}, Lcom/baidu/location/BDLocation;->if(Lcom/baidu/location/BDLocation$a;)V

    :cond_0
    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Lcom/baidu/location/T;->if(Lcom/baidu/location/BDLocation;I)V

    invoke-direct {p0}, Lcom/baidu/location/v;->g()V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/location/v;->ac:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/v;->af:Lcom/baidu/location/BDLocation;

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/g;->cP()Lcom/baidu/location/g;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/baidu/location/g;->case(Z)Lcom/baidu/location/BDLocation;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lcom/baidu/location/T;->if(Lcom/baidu/location/BDLocation;I)V

    :goto_1
    iput-object v2, p0, Lcom/baidu/location/v;->af:Lcom/baidu/location/BDLocation;

    iput-object v2, p0, Lcom/baidu/location/v;->ag:Lcom/baidu/location/BDLocation;

    iget-object v0, p0, Lcom/baidu/location/v;->ad:Lcom/baidu/location/E;

    invoke-virtual {v0}, Lcom/baidu/location/E;->cC()V

    invoke-direct {p0}, Lcom/baidu/location/v;->g()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/v;->af:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0, v1, v10}, Lcom/baidu/location/T;->if(Lcom/baidu/location/BDLocation;I)V

    goto :goto_1
.end method

.method a(Landroid/os/Message;)V
    .locals 12

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v9, 0x0

    const/16 v11, 0x15

    const-string v0, "baidu_location_service"

    const-string v2, "on network success"

    invoke-static {v0, v2}, Lcom/baidu/location/K;->if(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/BDLocation;

    new-instance v2, Lcom/baidu/location/BDLocation;

    invoke-direct {v2, v0}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->hasAddr()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->c9()Lcom/baidu/location/BDLocation$a;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/v;->ap:Lcom/baidu/location/BDLocation$a;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/v;->aq:D

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/v;->ar:D

    :cond_0
    invoke-static {}, Lcom/baidu/location/ao;->bg()Lcom/baidu/location/ao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/ao;->a2()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/baidu/location/ao;->bg()Lcom/baidu/location/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ao;->a0()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lcom/baidu/location/BDLocation;

    invoke-direct {v10, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/location/K;->aG:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v8, v6, [F

    iget-wide v0, p0, Lcom/baidu/location/v;->ar:D

    iget-wide v2, p0, Lcom/baidu/location/v;->aq:D

    invoke-virtual {v10}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v10}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v9

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/v;->ap:Lcom/baidu/location/BDLocation$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/v;->ap:Lcom/baidu/location/BDLocation$a;

    invoke-virtual {v10, v0}, Lcom/baidu/location/BDLocation;->if(Lcom/baidu/location/BDLocation$a;)V

    :cond_1
    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/baidu/location/T;->if(Lcom/baidu/location/BDLocation;I)V

    invoke-direct {p0}, Lcom/baidu/location/v;->g()V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sky"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "wf"

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v1

    invoke-virtual {v1, v0, v11}, Lcom/baidu/location/T;->if(Lcom/baidu/location/BDLocation;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/v;->an:J

    iput-object v0, p0, Lcom/baidu/location/v;->af:Lcom/baidu/location/BDLocation;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->c7()I

    move-result v3

    if-nez v3, :cond_7

    sput-boolean v1, Lcom/baidu/location/k;->a:Z

    :goto_1
    iput-object v8, p0, Lcom/baidu/location/v;->ag:Lcom/baidu/location/BDLocation;

    iget-object v3, p0, Lcom/baidu/location/v;->ai:Lcom/baidu/location/aj$a;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/baidu/location/v;->ai:Lcom/baidu/location/aj$a;

    invoke-virtual {v3}, Lcom/baidu/location/aj$a;->do()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->c7()I

    move-result v3

    if-ne v3, v6, :cond_4

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v4, 0xa7

    if-ne v3, v4, :cond_4

    new-instance v3, Lcom/baidu/location/ab;

    iget-object v4, p0, Lcom/baidu/location/v;->ai:Lcom/baidu/location/aj$a;

    iget-object v5, p0, Lcom/baidu/location/v;->ah:Lcom/baidu/location/D$b;

    invoke-direct {v3, v4, v5, v1}, Lcom/baidu/location/ab;-><init>(Lcom/baidu/location/aj$a;Lcom/baidu/location/D$b;Z)V

    invoke-virtual {v3}, Lcom/baidu/location/ab;->N()V

    :cond_4
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v4, 0xa1

    if-ne v3, v4, :cond_b

    const-string v3, "cl"

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/baidu/location/v;->af:Lcom/baidu/location/BDLocation;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/baidu/location/v;->af:Lcom/baidu/location/BDLocation;

    invoke-virtual {v3}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v4, 0xa1

    if-ne v3, v4, :cond_b

    const-string v3, "wf"

    iget-object v4, p0, Lcom/baidu/location/v;->af:Lcom/baidu/location/BDLocation;

    invoke-virtual {v4}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/baidu/location/v;->an:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7530

    cmp-long v3, v4, v6

    if-gez v3, :cond_b

    iput-object v0, p0, Lcom/baidu/location/v;->ag:Lcom/baidu/location/BDLocation;

    :goto_2
    invoke-static {}, Lcom/baidu/location/ao;->bg()Lcom/baidu/location/ao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/ao;->a2()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/location/v;->af:Lcom/baidu/location/BDLocation;

    invoke-virtual {v3, v4, v11}, Lcom/baidu/location/T;->if(Lcom/baidu/location/BDLocation;I)V

    :cond_5
    :goto_3
    invoke-static {v0}, Lcom/baidu/location/K;->if(Lcom/baidu/location/BDLocation;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v1, :cond_6

    iput-object v0, p0, Lcom/baidu/location/v;->af:Lcom/baidu/location/BDLocation;

    :cond_6
    :goto_4
    sget-object v0, Lcom/baidu/location/v;->eu:Ljava/lang/String;

    const-string v1, "ssid\":\""

    const-string v3, "\""

    invoke-static {v0, v1, v3}, Lcom/baidu/location/K;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_a

    iget-object v1, p0, Lcom/baidu/location/v;->ah:Lcom/baidu/location/D$b;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/baidu/location/v;->ah:Lcom/baidu/location/D$b;

    invoke-virtual {v1, v0}, Lcom/baidu/location/D$b;->do(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/v;->ae:Ljava/lang/String;

    :goto_5
    invoke-static {}, Lcom/baidu/location/g;->cP()Lcom/baidu/location/g;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/v;->eu:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/location/v;->ai:Lcom/baidu/location/aj$a;

    iget-object v4, p0, Lcom/baidu/location/v;->ah:Lcom/baidu/location/D$b;

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/baidu/location/g;->if(Ljava/lang/String;Lcom/baidu/location/aj$a;Lcom/baidu/location/D$b;Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lcom/baidu/location/v;->g()V

    goto/16 :goto_0

    :cond_7
    sput-boolean v9, Lcom/baidu/location/k;->a:Z

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v3

    invoke-virtual {v3, v0, v11}, Lcom/baidu/location/T;->if(Lcom/baidu/location/BDLocation;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/v;->an:J

    goto :goto_3

    :cond_9
    iput-object v8, p0, Lcom/baidu/location/v;->af:Lcom/baidu/location/BDLocation;

    iget-object v0, p0, Lcom/baidu/location/v;->ad:Lcom/baidu/location/E;

    invoke-virtual {v0}, Lcom/baidu/location/E;->cC()V

    goto :goto_4

    :cond_a
    iput-object v8, p0, Lcom/baidu/location/v;->ae:Ljava/lang/String;

    goto :goto_5

    :cond_b
    move v1, v9

    goto :goto_2
.end method

.method public aG()V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/v;->al:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/location/v;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/v;->al:Z

    :cond_0
    return-void
.end method

.method public aK()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/v;->ac:Z

    return v0
.end method

.method b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/v;->aj:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/v;->ak:Z

    return-void
.end method

.method c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/v;->ak:Z

    invoke-virtual {p0}, Lcom/baidu/location/v;->d()V

    return-void
.end method

.method public case(Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/v;->b(Landroid/os/Message;)V

    return-void
.end method

.method d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/v;->af:Lcom/baidu/location/BDLocation;

    iget-object v0, p0, Lcom/baidu/location/v;->ad:Lcom/baidu/location/E;

    invoke-virtual {v0}, Lcom/baidu/location/E;->cC()V

    return-void
.end method

.method public for(Lcom/baidu/location/BDLocation;)V
    .locals 0

    invoke-virtual {p0}, Lcom/baidu/location/v;->d()V

    iput-object p1, p0, Lcom/baidu/location/v;->af:Lcom/baidu/location/BDLocation;

    return-void
.end method

.method public int(Lcom/baidu/location/BDLocation;)Lcom/baidu/location/BDLocation$a;
    .locals 9

    sget-object v0, Lcom/baidu/location/K;->aG:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v8, v0, [F

    iget-wide v0, p0, Lcom/baidu/location/v;->ar:D

    iget-wide v2, p0, Lcom/baidu/location/v;->aq:D

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/v;->ap:Lcom/baidu/location/BDLocation$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/v;->ap:Lcom/baidu/location/BDLocation$a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/v;->as:Z

    invoke-direct {p0}, Lcom/baidu/location/v;->e()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
