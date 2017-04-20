.class Lcom/baidu/location/M;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/L;


# direct methods
.method constructor <init>(Lcom/baidu/location/L;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/M;->a:Lcom/baidu/location/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/baidu/location/D;->cq()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/M;->a:Lcom/baidu/location/L;

    invoke-virtual {v0}, Lcom/baidu/location/L;->U()V

    :cond_0
    return-void
.end method
