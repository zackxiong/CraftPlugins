.class Lcom/baidu/location/O;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/location/L;


# direct methods
.method constructor <init>(Lcom/baidu/location/L;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/O;->a:Lcom/baidu/location/L;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/O;->a:Lcom/baidu/location/L;

    invoke-static {v0}, Lcom/baidu/location/L;->b(Lcom/baidu/location/L;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/O;->a:Lcom/baidu/location/L;

    invoke-static {v0}, Lcom/baidu/location/L;->c(Lcom/baidu/location/L;)V

    :cond_0
    return-void
.end method
