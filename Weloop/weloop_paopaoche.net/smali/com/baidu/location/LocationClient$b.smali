.class Lcom/baidu/location/LocationClient$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/LocationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/LocationClient;


# direct methods
.method private constructor <init>(Lcom/baidu/location/LocationClient;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/LocationClient$b;->a:Lcom/baidu/location/LocationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/LocationClient;Lcom/baidu/location/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient$b;-><init>(Lcom/baidu/location/LocationClient;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/LocationClient$b;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->char(Lcom/baidu/location/LocationClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/LocationClient$b;->a:Lcom/baidu/location/LocationClient;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/baidu/location/LocationClient;->new(Lcom/baidu/location/LocationClient;Z)Z

    iget-object v0, p0, Lcom/baidu/location/LocationClient$b;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->void(Lcom/baidu/location/LocationClient;)Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/LocationClient$b;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->new(Lcom/baidu/location/LocationClient;)Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/LocationClient$b;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->case(Lcom/baidu/location/LocationClient;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/LocationClient$b;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->case(Lcom/baidu/location/LocationClient;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_3

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/LocationClient$b;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->int(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/LocationClient$a;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
