.class Lcom/yf/gattlib/client/b/g;
.super Lcom/yf/gattlib/client/b/be$b;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/gattlib/client/b/e;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/client/b/e;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 116
    iput-object p1, p0, Lcom/yf/gattlib/client/b/g;->a:Lcom/yf/gattlib/client/b/e;

    invoke-direct {p0, p2, p3, p4}, Lcom/yf/gattlib/client/b/be$b;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yf/gattlib/client/b/g;->a:Lcom/yf/gattlib/client/b/e;

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/yf/gattlib/client/b/e;->a(Ljava/lang/String;J)V

    .line 120
    return-void
.end method
