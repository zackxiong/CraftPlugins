.class public Lcom/yf/gattlib/client/b/an;
.super Lcom/yf/gattlib/client/b/ab;
.source "ProGuard"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/ab;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/yf/gattlib/client/b/an;->a:Z

    .line 13
    return-void
.end method


# virtual methods
.method protected c()[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 17
    const-string v2, "H2DR"

    const/16 v3, 0xb7

    iget-boolean v0, p0, Lcom/yf/gattlib/client/b/an;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v1, v0}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
