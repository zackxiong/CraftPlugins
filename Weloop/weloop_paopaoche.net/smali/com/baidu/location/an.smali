.class public Lcom/baidu/location/an;
.super Ljava/lang/Object;


# static fields
.field private static a:J

.field private static b:Lcom/baidu/location/aj$a;

.field private static c:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/location/Location;
    .locals 1

    sget-object v0, Lcom/baidu/location/an;->c:Landroid/location/Location;

    return-object v0
.end method

.method public static a(J)V
    .locals 0

    sput-wide p0, Lcom/baidu/location/an;->a:J

    return-void
.end method

.method public static a(Landroid/location/Location;)V
    .locals 0

    sput-object p0, Lcom/baidu/location/an;->c:Landroid/location/Location;

    return-void
.end method

.method public static a(Lcom/baidu/location/aj$a;)V
    .locals 0

    sput-object p0, Lcom/baidu/location/an;->b:Lcom/baidu/location/aj$a;

    return-void
.end method

.method public static do()J
    .locals 2

    sget-wide v0, Lcom/baidu/location/an;->a:J

    return-wide v0
.end method

.method public static if()Lcom/baidu/location/aj$a;
    .locals 1

    sget-object v0, Lcom/baidu/location/an;->b:Lcom/baidu/location/aj$a;

    return-object v0
.end method
