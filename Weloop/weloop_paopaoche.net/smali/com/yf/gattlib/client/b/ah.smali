.class public Lcom/yf/gattlib/client/b/ah;
.super Lcom/yf/gattlib/client/b/e;
.source "ProGuard"


# instance fields
.field private a:B


# direct methods
.method public constructor <init>(B)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/e;-><init>()V

    .line 16
    iput-byte p1, p0, Lcom/yf/gattlib/client/b/ah;->a:B

    .line 17
    return-void
.end method


# virtual methods
.method public varargs a([B[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/ah;->i()V

    .line 25
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 30
    const-string v0, "H2DR"

    const/16 v1, 0xb8

    const/4 v2, 0x1

    iget-byte v3, p0, Lcom/yf/gattlib/client/b/ah;->a:B

    invoke-static {v0, v1, v2, v3}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/ah;->a([B)V

    .line 34
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    .line 35
    return-void
.end method
