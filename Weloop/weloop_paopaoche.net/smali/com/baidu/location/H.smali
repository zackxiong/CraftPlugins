.class Lcom/baidu/location/H;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/C;

.field final synthetic b:Lcom/baidu/location/G;


# direct methods
.method constructor <init>(Lcom/baidu/location/G;Lcom/baidu/location/C;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/H;->b:Lcom/baidu/location/G;

    iput-object p2, p0, Lcom/baidu/location/H;->a:Lcom/baidu/location/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/H;->b:Lcom/baidu/location/G;

    iget-object v1, p0, Lcom/baidu/location/H;->a:Lcom/baidu/location/C;

    invoke-virtual {v1}, Lcom/baidu/location/C;->getGeofenceId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/G;->do(Ljava/lang/String;Z)V

    return-void
.end method
