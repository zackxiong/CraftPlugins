.class Lcom/baidu/location/R;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/baidu/location/R;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/R;->a:Lcom/baidu/location/R;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static for()Lcom/baidu/location/R;
    .locals 1

    sget-object v0, Lcom/baidu/location/R;->a:Lcom/baidu/location/R;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/R;

    invoke-direct {v0}, Lcom/baidu/location/R;-><init>()V

    sput-object v0, Lcom/baidu/location/R;->a:Lcom/baidu/location/R;

    :cond_0
    sget-object v0, Lcom/baidu/location/R;->a:Lcom/baidu/location/R;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public do()V
    .locals 0

    return-void
.end method

.method public if()V
    .locals 0

    return-void
.end method

.method public int()V
    .locals 0

    return-void
.end method
