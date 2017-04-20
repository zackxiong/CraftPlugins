.class public final Lorg/acra/b/c;
.super Ljava/util/EnumMap;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap",
        "<",
        "Lorg/acra/ReportField;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/acra/ReportField;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 43
    return-void
.end method


# virtual methods
.method public a(Lorg/acra/ReportField;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 56
    invoke-static {p0}, Lorg/acra/e/e;->a(Lorg/acra/b/c;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
