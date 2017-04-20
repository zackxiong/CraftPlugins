.class public Lcom/alimama/mobile/csdk/umupdate/b/b;
.super Lc/a/g;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lc/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alimama/mobile/csdk/umupdate/b/e;)Lcom/alimama/mobile/csdk/umupdate/b/f;
    .locals 4

    .prologue
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    sget-object v2, Lcom/alimama/mobile/csdk/umupdate/b/a;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 19
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/b/a;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/alimama/mobile/csdk/umupdate/b/e;->setBaseUrl(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/alimama/mobile/csdk/umupdate/a/n;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alimama/mobile/csdk/umupdate/b/b;->setHeader(Ljava/util/Map;)Lc/a/g;

    move-result-object v0

    const-class v2, Lcom/alimama/mobile/csdk/umupdate/b/f;

    invoke-virtual {v0, p1, v2}, Lc/a/g;->execute(Lc/a/h;Ljava/lang/Class;)Lc/a/i;

    move-result-object v0

    check-cast v0, Lcom/alimama/mobile/csdk/umupdate/b/f;

    .line 21
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/alimama/mobile/csdk/umupdate/b/f;->b:Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 25
    :cond_0
    return-object v0

    .line 18
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
