.class Lcom/baidu/location/ak;
.super Lcom/baidu/location/u;

# interfaces
.implements Lcom/baidu/location/e;


# static fields
.field private static a:Lcom/baidu/location/ak;


# instance fields
.field private Z:Lcom/baidu/location/BDLocation;

.field private aa:J

.field public e1:Lcom/baidu/location/u$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/ak;->a:Lcom/baidu/location/ak;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/baidu/location/u;-><init>()V

    iput-object v2, p0, Lcom/baidu/location/ak;->Z:Lcom/baidu/location/BDLocation;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/ak;->aa:J

    iput-object v2, p0, Lcom/baidu/location/ak;->e1:Lcom/baidu/location/u$a;

    new-instance v0, Lcom/baidu/location/u$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/u$a;-><init>(Lcom/baidu/location/u;)V

    iput-object v0, p0, Lcom/baidu/location/ak;->e1:Lcom/baidu/location/u$a;

    return-void
.end method

.method public static aQ()Lcom/baidu/location/ak;
    .locals 1

    sget-object v0, Lcom/baidu/location/ak;->a:Lcom/baidu/location/ak;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/ak;

    invoke-direct {v0}, Lcom/baidu/location/ak;-><init>()V

    sput-object v0, Lcom/baidu/location/ak;->a:Lcom/baidu/location/ak;

    :cond_0
    sget-object v0, Lcom/baidu/location/ak;->a:Lcom/baidu/location/ak;

    return-object v0
.end method

.method private b()V
    .locals 1

    invoke-static {}, Lcom/baidu/location/Z;->y()Lcom/baidu/location/Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/Z;->F()V

    return-void
.end method

.method private b(Landroid/os/Message;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/ak;->aa:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/ak;->Z:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/ak;->Z:Lcom/baidu/location/BDLocation;

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/T;->if(Lcom/baidu/location/BDLocation;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/T;->if(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/ak;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/ak;->e1:Lcom/baidu/location/u$a;

    invoke-virtual {v1, v0}, Lcom/baidu/location/u$a;->e(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/ak;->aa:J

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 3

    const-string v0, "baidu_location_service"

    const-string v1, "on network exception"

    invoke-static {v0, v1}, Lcom/baidu/location/K;->if(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/ak;->Z:Lcom/baidu/location/BDLocation;

    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/g;->cP()Lcom/baidu/location/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/location/g;->case(Z)Lcom/baidu/location/BDLocation;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/T;->if(Lcom/baidu/location/BDLocation;I)V

    invoke-direct {p0}, Lcom/baidu/location/ak;->b()V

    return-void
.end method

.method a(Landroid/os/Message;)V
    .locals 3

    const-string v0, "baidu_location_service"

    const-string v1, "on network success"

    invoke-static {v0, v1}, Lcom/baidu/location/K;->if(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/BDLocation;

    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v1, v0, v2}, Lcom/baidu/location/T;->if(Lcom/baidu/location/BDLocation;I)V

    invoke-static {v0}, Lcom/baidu/location/K;->if(Lcom/baidu/location/BDLocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/baidu/location/ak;->Z:Lcom/baidu/location/BDLocation;

    :goto_0
    invoke-direct {p0}, Lcom/baidu/location/ak;->b()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/ak;->Z:Lcom/baidu/location/BDLocation;

    goto :goto_0
.end method

.method public long(Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/ak;->b(Landroid/os/Message;)V

    return-void
.end method
