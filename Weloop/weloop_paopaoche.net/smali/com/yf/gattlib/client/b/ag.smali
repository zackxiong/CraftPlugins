.class public Lcom/yf/gattlib/client/b/ag;
.super Lcom/yf/gattlib/client/b/ab;
.source "ProGuard"


# instance fields
.field private a:B


# direct methods
.method public constructor <init>(B)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/ab;-><init>()V

    .line 20
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/yf/gattlib/client/b/ag;->a:B

    .line 21
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected c()[B
    .locals 4

    .prologue
    .line 25
    const-string v0, "H2DR"

    const/16 v1, 0x89

    const/4 v2, 0x1

    iget-byte v3, p0, Lcom/yf/gattlib/client/b/ag;->a:B

    invoke-static {v0, v1, v2, v3}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    return-object v0
.end method
