.class public Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;
.super Lcom/baidu/mapapi/search/core/RouteStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/route/WalkingRouteLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WalkingStep"
.end annotation


# instance fields
.field private c:I

.field private d:Lcom/baidu/mapapi/search/core/RouteNode;

.field private e:Lcom/baidu/mapapi/search/core/RouteNode;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/RouteStep;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirection()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->c:I

    return v0
.end method

.method public getEntrace()Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->d:Lcom/baidu/mapapi/search/core/RouteNode;

    return-object v0
.end method

.method public getEntraceInstructions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getExit()Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->e:Lcom/baidu/mapapi/search/core/RouteNode;

    return-object v0
.end method

.method public getExitInstructions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getInstructions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getWayPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->mWayPoints:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mapapi/model/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->mWayPoints:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->mWayPoints:Ljava/util/List;

    return-object v0
.end method