.class Lcom/baidu/location/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/g;


# direct methods
.method constructor <init>(Lcom/baidu/location/g;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-boolean v0, Lcom/baidu/location/n;->gR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;)V

    :cond_0
    return-void
.end method
