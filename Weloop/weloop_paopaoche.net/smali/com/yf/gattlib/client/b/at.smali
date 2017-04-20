.class public Lcom/yf/gattlib/client/b/at;
.super Lcom/yf/gattlib/client/b/ab;
.source "ProGuard"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:B


# direct methods
.method public constructor <init>(Lcom/yf/gattlib/client/b/bo;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/ab;-><init>()V

    .line 12
    const-string v0, "SetWakeUpPatternTransaction"

    iput-object v0, p0, Lcom/yf/gattlib/client/b/at;->a:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcom/yf/gattlib/client/b/bo;->a()B

    move-result v0

    iput-byte v0, p0, Lcom/yf/gattlib/client/b/at;->b:B

    .line 17
    return-void
.end method


# virtual methods
.method protected c()[B
    .locals 4

    .prologue
    .line 21
    const-string v0, "H2DR"

    const/16 v1, 0xac

    const/4 v2, 0x0

    iget-byte v3, p0, Lcom/yf/gattlib/client/b/at;->b:B

    invoke-static {v0, v1, v2, v3}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetWakeUpPatternTransaction byteResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 24
    return-object v0
.end method
