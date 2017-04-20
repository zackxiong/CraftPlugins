.class Lcom/baidu/location/J;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/G;


# direct methods
.method constructor <init>(Lcom/baidu/location/G;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/J;->a:Lcom/baidu/location/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/J;->a:Lcom/baidu/location/G;

    invoke-static {v0}, Lcom/baidu/location/G;->a(Lcom/baidu/location/G;)V

    return-void
.end method
