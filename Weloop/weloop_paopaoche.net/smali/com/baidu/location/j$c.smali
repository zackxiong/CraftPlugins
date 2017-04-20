.class public Lcom/baidu/location/j$c;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/j;


# direct methods
.method public constructor <init>(Lcom/baidu/location/j;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/j$c;->a:Lcom/baidu/location/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/j$c;->a:Lcom/baidu/location/j;

    invoke-static {v0, p1}, Lcom/baidu/location/j;->a(Lcom/baidu/location/j;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/location/j$c;->a:Lcom/baidu/location/j;

    invoke-static {v0}, Lcom/baidu/location/j;->k(Lcom/baidu/location/j;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/j$c;->a:Lcom/baidu/location/j;

    invoke-static {v1}, Lcom/baidu/location/j;->j(Lcom/baidu/location/j;)Lcom/baidu/location/j$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
