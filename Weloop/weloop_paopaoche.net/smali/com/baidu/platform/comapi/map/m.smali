.class public Lcom/baidu/platform/comapi/map/m;
.super Lcom/baidu/platform/comapi/map/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/b;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/platform/comapi/map/m;->c:I

    const-string v0, "itsevent"

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/m;->b:Ljava/lang/String;

    const v0, 0x2bf20

    iput v0, p0, Lcom/baidu/platform/comapi/map/m;->d:I

    return-void
.end method
