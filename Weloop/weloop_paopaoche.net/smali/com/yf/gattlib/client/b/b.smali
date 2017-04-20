.class public Lcom/yf/gattlib/client/b/b;
.super Lcom/yf/gattlib/client/b/ad;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/ad;-><init>()V

    return-void
.end method

.method private c()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/yf/gattlib/k/a;->a()V

    .line 28
    return-void
.end method


# virtual methods
.method public varargs a([B[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/b;->c()V

    .line 19
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/client/b/b;->b([B)[B

    .line 20
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/b;->i()V

    .line 21
    return-void
.end method

.method public a()[I
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x44

    aput v2, v0, v1

    return-object v0
.end method
