.class public Lcom/baidu/location/l$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/BDLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/l;


# direct methods
.method public constructor <init>(Lcom/baidu/location/l;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/l$a;->a:Lcom/baidu/location/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/location/BDLocation;)V
    .locals 0

    return-void
.end method

.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/l$a;->a:Lcom/baidu/location/l;

    invoke-static {v0}, Lcom/baidu/location/l;->a(Lcom/baidu/location/l;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/l$a;->a:Lcom/baidu/location/l;

    invoke-static {v0}, Lcom/baidu/location/l;->a(Lcom/baidu/location/l;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/l$a;->a:Lcom/baidu/location/l;

    invoke-static {v0, p1}, Lcom/baidu/location/l;->a(Lcom/baidu/location/l;Lcom/baidu/location/BDLocation;)V

    :cond_0
    return-void
.end method