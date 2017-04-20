.class public Lcom/yf/gattlib/client/b/au;
.super Lcom/yf/gattlib/client/b/ab;
.source "ProGuard"


# instance fields
.field private a:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/ab;-><init>()V

    .line 21
    invoke-static {}, Lcom/yf/gattlib/p/e;->a()B

    move-result v0

    iput-byte v0, p0, Lcom/yf/gattlib/client/b/au;->a:B

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sync Language Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/yf/gattlib/client/b/au;->a:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected c()[B
    .locals 4

    .prologue
    .line 33
    const-string v0, "H2DR"

    const/16 v1, 0xa3

    const/4 v2, 0x0

    iget-byte v3, p0, Lcom/yf/gattlib/client/b/au;->a:B

    invoke-static {v0, v1, v2, v3}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    return-object v0
.end method
