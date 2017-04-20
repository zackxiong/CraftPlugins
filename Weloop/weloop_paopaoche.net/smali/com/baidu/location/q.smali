.class Lcom/baidu/location/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/o;


# direct methods
.method constructor <init>(Lcom/baidu/location/o;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/q;->a:Lcom/baidu/location/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/q;->a:Lcom/baidu/location/o;

    invoke-static {v0}, Lcom/baidu/location/o;->b(Lcom/baidu/location/o;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/q;->a:Lcom/baidu/location/o;

    invoke-static {v1}, Lcom/baidu/location/o;->a(Lcom/baidu/location/o;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/baidu/location/q;->a:Lcom/baidu/location/o;

    invoke-static {v0}, Lcom/baidu/location/o;->b(Lcom/baidu/location/o;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/q;->a:Lcom/baidu/location/o;

    invoke-static {v1}, Lcom/baidu/location/o;->c(Lcom/baidu/location/o;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/baidu/location/q;->a:Lcom/baidu/location/o;

    invoke-virtual {v0}, Lcom/baidu/location/o;->bK()V

    iget-object v0, p0, Lcom/baidu/location/q;->a:Lcom/baidu/location/o;

    invoke-virtual {v0}, Lcom/baidu/location/o;->bL()V

    return-void
.end method
