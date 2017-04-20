.class Lcom/baidu/location/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/aa$a;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/location/aa;


# instance fields
.field private Y:Lcom/baidu/location/U;

.field private Z:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/aa;->a:Lcom/baidu/location/aa;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/aa;->Y:Lcom/baidu/location/U;

    iput-object v0, p0, Lcom/baidu/location/aa;->Z:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/location/aa$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/aa$a;-><init>(Lcom/baidu/location/aa;)V

    iput-object v0, p0, Lcom/baidu/location/aa;->Z:Landroid/os/Handler;

    return-void
.end method

.method public static I()Lcom/baidu/location/aa;
    .locals 1

    sget-object v0, Lcom/baidu/location/aa;->a:Lcom/baidu/location/aa;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/aa;

    invoke-direct {v0}, Lcom/baidu/location/aa;-><init>()V

    sput-object v0, Lcom/baidu/location/aa;->a:Lcom/baidu/location/aa;

    :cond_0
    sget-object v0, Lcom/baidu/location/aa;->a:Lcom/baidu/location/aa;

    return-object v0
.end method

.method private a()V
    .locals 1

    :try_start_0
    sget-boolean v0, Lcom/baidu/location/k;->gx:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/baidu/location/K;->aL:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/location/aa;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/aa;->a()V

    return-void
.end method


# virtual methods
.method public H()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/aa;->Y:Lcom/baidu/location/U;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/aa;->Y:Lcom/baidu/location/U;

    invoke-virtual {v0}, Lcom/baidu/location/U;->v()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/aa;->Y:Lcom/baidu/location/U;

    return-void
.end method

.method public J()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/aa;->Z:Landroid/os/Handler;

    return-object v0
.end method

.method public L()V
    .locals 0

    return-void
.end method
