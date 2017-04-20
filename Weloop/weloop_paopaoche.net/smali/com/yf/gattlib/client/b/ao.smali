.class public Lcom/yf/gattlib/client/b/ao;
.super Lcom/yf/gattlib/client/b/ab;
.source "ProGuard"


# instance fields
.field private a:B


# direct methods
.method public constructor <init>(B)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/ab;-><init>()V

    .line 13
    iput-byte p1, p0, Lcom/yf/gattlib/client/b/ao;->a:B

    .line 14
    return-void
.end method


# virtual methods
.method protected c()[B
    .locals 4

    .prologue
    .line 18
    const-string v0, "H2DR"

    const/16 v1, 0xb1

    const/4 v2, 0x0

    iget-byte v3, p0, Lcom/yf/gattlib/client/b/ao;->a:B

    invoke-static {v0, v1, v2, v3}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    return-object v0
.end method
