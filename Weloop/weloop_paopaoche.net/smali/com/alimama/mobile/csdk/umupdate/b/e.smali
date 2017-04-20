.class public Lcom/alimama/mobile/csdk/umupdate/b/e;
.super Lc/a/h;
.source "ProGuard"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    const-string v0, ""

    invoke-direct {p0, v0}, Lc/a/h;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/alimama/mobile/csdk/umupdate/b/e;->a:Ljava/util/Map;

    .line 28
    return-void
.end method


# virtual methods
.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lc/a/h;->GET:Ljava/lang/String;

    return-object v0
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alimama/mobile/csdk/umupdate/b/e;->baseUrl:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public toGetUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/e;->baseUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/b/e;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/n;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method
