.class public Lcom/yf/gattlib/client/b/al;
.super Lcom/yf/gattlib/client/b/ab;
.source "ProGuard"


# instance fields
.field private a:B


# direct methods
.method public constructor <init>(B)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/ab;-><init>()V

    .line 12
    iput-byte p1, p0, Lcom/yf/gattlib/client/b/al;->a:B

    .line 13
    return-void
.end method


# virtual methods
.method protected c()[B
    .locals 4

    .prologue
    .line 16
    const-string v0, "H2DR"

    const/16 v1, 0xb0

    const/4 v2, 0x0

    iget-byte v3, p0, Lcom/yf/gattlib/client/b/al;->a:B

    invoke-static {v0, v1, v2, v3}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    return-object v0
.end method
