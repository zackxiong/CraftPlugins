.class Lcom/yf/smart/weloopx/data/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/yf/smart/weloopx/data/models/LocationModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/data/f;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/data/f;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/g;->a:Lcom/yf/smart/weloopx/data/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yf/smart/weloopx/data/models/LocationModel;Lcom/yf/smart/weloopx/data/models/LocationModel;)I
    .locals 2

    .prologue
    .line 233
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_TIME()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_TIME()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 230
    check-cast p1, Lcom/yf/smart/weloopx/data/models/LocationModel;

    check-cast p2, Lcom/yf/smart/weloopx/data/models/LocationModel;

    invoke-virtual {p0, p1, p2}, Lcom/yf/smart/weloopx/data/g;->a(Lcom/yf/smart/weloopx/data/models/LocationModel;Lcom/yf/smart/weloopx/data/models/LocationModel;)I

    move-result v0

    return v0
.end method
