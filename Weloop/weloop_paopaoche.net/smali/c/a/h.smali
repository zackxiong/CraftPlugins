.class public abstract Lc/a/h;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static GET:Ljava/lang/String;

.field protected static POST:Ljava/lang/String;


# instance fields
.field protected baseUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "POST"

    sput-object v0, Lc/a/h;->POST:Ljava/lang/String;

    .line 26
    const-string v0, "GET"

    sput-object v0, Lc/a/h;->GET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lc/a/h;->baseUrl:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lc/a/h;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getHttpMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lc/a/h;->POST:Ljava/lang/String;

    return-object v0
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lc/a/h;->baseUrl:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public abstract toGetUrl()Ljava/lang/String;
.end method

.method public abstract toJson()Lorg/json/JSONObject;
.end method
