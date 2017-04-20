.class public Lcom/yf/gattlib/client/b/as;
.super Lcom/yf/gattlib/client/b/ab;
.source "ProGuard"


# instance fields
.field private a:Ljava/lang/String;

.field private b:B


# direct methods
.method public constructor <init>(ZB)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/ab;-><init>()V

    .line 12
    const-string v0, "SetVibrationModeTransaction"

    iput-object v0, p0, Lcom/yf/gattlib/client/b/as;->a:Ljava/lang/String;

    .line 17
    if-eqz p1, :cond_0

    or-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    :goto_0
    iput-byte v0, p0, Lcom/yf/gattlib/client/b/as;->b:B

    .line 18
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v0

    iget-byte v1, p0, Lcom/yf/gattlib/client/b/as;->b:B

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/d;->c(B)V

    .line 19
    return-void

    .line 17
    :cond_0
    and-int/lit8 v0, p2, 0xf

    int-to-byte v0, v0

    goto :goto_0
.end method


# virtual methods
.method protected c()[B
    .locals 4

    .prologue
    .line 23
    const-string v0, "H2DR"

    const/16 v1, 0xb1

    const/4 v2, 0x0

    iget-byte v3, p0, Lcom/yf/gattlib/client/b/as;->b:B

    invoke-static {v0, v1, v2, v3}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    .line 29
    return-object v0
.end method
