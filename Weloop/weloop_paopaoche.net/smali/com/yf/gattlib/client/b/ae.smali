.class public Lcom/yf/gattlib/client/b/ae;
.super Lcom/yf/gattlib/client/b/ad;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([B[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 13
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->k()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yf/gattlib/client/b/af;

    invoke-direct {v1, p0}, Lcom/yf/gattlib/client/b/af;-><init>(Lcom/yf/gattlib/client/b/ae;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/client/b/ae;->b([B)[B

    .line 21
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/ae;->i()V

    .line 22
    return-void
.end method

.method public a()[I
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x53

    aput v2, v0, v1

    return-object v0
.end method
