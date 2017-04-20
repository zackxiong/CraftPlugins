.class public Lcom/alimama/mobile/csdk/umupdate/b/f;
.super Lc/a/i;
.source "ProGuard"


# instance fields
.field public a:I

.field public b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lc/a/i;-><init>(Lorg/json/JSONObject;)V

    .line 20
    iput-object p1, p0, Lcom/alimama/mobile/csdk/umupdate/b/f;->b:Lorg/json/JSONObject;

    .line 21
    invoke-direct {p0, p1}, Lcom/alimama/mobile/csdk/umupdate/b/f;->a(Lorg/json/JSONObject;)V

    .line 22
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 26
    if-nez p1, :cond_0

    .line 27
    const-string v0, "failed requesting"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :goto_0
    return-void

    .line 30
    :cond_0
    :try_start_0
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/f;->a:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    const-string v1, "Parse json error"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
