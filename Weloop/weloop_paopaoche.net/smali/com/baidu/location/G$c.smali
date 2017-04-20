.class Lcom/baidu/location/G$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/G;

.field private final b:Lcom/baidu/location/C;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/baidu/location/GeofenceClient$OnAddBDGeofencesResultListener;


# direct methods
.method public constructor <init>(Lcom/baidu/location/G;Lcom/baidu/location/C;Ljava/lang/String;Lcom/baidu/location/GeofenceClient$OnAddBDGeofencesResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/G$c;->a:Lcom/baidu/location/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/baidu/location/G$c;->b:Lcom/baidu/location/C;

    iput-object p3, p0, Lcom/baidu/location/G$c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/location/G$c;->d:Lcom/baidu/location/GeofenceClient$OnAddBDGeofencesResultListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/G$c;->a:Lcom/baidu/location/G;

    iget-object v1, p0, Lcom/baidu/location/G$c;->b:Lcom/baidu/location/C;

    iget-object v2, p0, Lcom/baidu/location/G$c;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/baidu/location/G;->a(Lcom/baidu/location/G;Lcom/baidu/location/C;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/baidu/location/G$c;->a:Lcom/baidu/location/G;

    iget-object v2, p0, Lcom/baidu/location/G$c;->d:Lcom/baidu/location/GeofenceClient$OnAddBDGeofencesResultListener;

    iget-object v3, p0, Lcom/baidu/location/G$c;->b:Lcom/baidu/location/C;

    invoke-virtual {v3}, Lcom/baidu/location/C;->getGeofenceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/baidu/location/G;->a(Lcom/baidu/location/G;Lcom/baidu/location/GeofenceClient$OnAddBDGeofencesResultListener;ILjava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/j;->de()Lcom/baidu/location/j;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/G$c;->b:Lcom/baidu/location/C;

    invoke-virtual {v0, v1}, Lcom/baidu/location/j;->for(Lcom/baidu/location/C;)V

    :cond_0
    return-void
.end method
