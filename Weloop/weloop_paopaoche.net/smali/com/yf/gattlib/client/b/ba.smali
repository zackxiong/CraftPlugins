.class public Lcom/yf/gattlib/client/b/ba;
.super Lcom/yf/gattlib/client/b/ab;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/ab;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()[B
    .locals 4

    .prologue
    .line 9
    const-string v0, "H2DR"

    const/16 v1, 0xaf

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    return-object v0
.end method