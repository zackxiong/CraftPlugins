.class Lcom/baidu/location/N;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/L;


# direct methods
.method constructor <init>(Lcom/baidu/location/L;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/N;->a:Lcom/baidu/location/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/N;->a:Lcom/baidu/location/L;

    invoke-static {v0}, Lcom/baidu/location/L;->a(Lcom/baidu/location/L;)V

    return-void
.end method
