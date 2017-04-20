.class Lcom/yf/gattlib/client/b/bf;
.super Lcom/yf/gattlib/client/b/be$b;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/gattlib/client/b/be;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/client/b/be;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yf/gattlib/client/b/bf;->a:Lcom/yf/gattlib/client/b/be;

    invoke-direct {p0, p2, p3, p4}, Lcom/yf/gattlib/client/b/be$b;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bf;->a:Lcom/yf/gattlib/client/b/be;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/e;I)V

    .line 102
    return-void
.end method
