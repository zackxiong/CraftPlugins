.class public Lcom/yf/gattlib/client/b/i;
.super Lcom/yf/gattlib/client/b/ab;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/ab;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    const-string v0, "H2DR"

    const/16 v1, 0x9c

    invoke-static {v0, v1, v2, v2}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    return-object v0
.end method
