.class Lcom/baidu/location/j$b;
.super Lcom/baidu/location/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/j;


# direct methods
.method private constructor <init>(Lcom/baidu/location/j;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/j$b;->a:Lcom/baidu/location/j;

    invoke-direct {p0}, Lcom/baidu/location/u;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/j;Lcom/baidu/location/j$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/j$b;-><init>(Lcom/baidu/location/j;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    return-void
.end method

.method a(Landroid/os/Message;)V
    .locals 0

    return-void
.end method
