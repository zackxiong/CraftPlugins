.class public final Lcom/yf/gattlib/notification/l;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yf/gattlib/notification/m;)I
    .locals 2

    .prologue
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/yf/gattlib/notification/m;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/yf/gattlib/notification/m;->b()I

    move-result v1

    xor-int/2addr v0, v1

    .line 7
    return v0
.end method
