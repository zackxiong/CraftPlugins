.class Lcom/baidu/location/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/e;


# static fields
.field private static a:Lcom/baidu/location/w;


# instance fields
.field private Y:Landroid/os/Handler;

.field private Z:Z

.field private aa:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/w;->a:Lcom/baidu/location/w;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/w;->Y:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/baidu/location/w;->Z:Z

    iput-boolean v1, p0, Lcom/baidu/location/w;->aa:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/w;->Y:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/w;->a()V

    return-void
.end method

.method public static b5()Lcom/baidu/location/w;
    .locals 1

    sget-object v0, Lcom/baidu/location/w;->a:Lcom/baidu/location/w;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/w;

    invoke-direct {v0}, Lcom/baidu/location/w;-><init>()V

    sput-object v0, Lcom/baidu/location/w;->a:Lcom/baidu/location/w;

    :cond_0
    sget-object v0, Lcom/baidu/location/w;->a:Lcom/baidu/location/w;

    return-object v0
.end method


# virtual methods
.method public b4()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/w;->Y:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/location/x;

    invoke-direct {v1, p0}, Lcom/baidu/location/x;-><init>(Lcom/baidu/location/w;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b6()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/w;->Z:Z

    return-void
.end method
