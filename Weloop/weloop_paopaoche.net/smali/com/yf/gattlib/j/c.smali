.class Lcom/yf/gattlib/j/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/c/d;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/j/b;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/j/b;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/yf/gattlib/j/c;->a:Lcom/yf/gattlib/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yf/gattlib/c/b;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yf/gattlib/j/c;->a:Lcom/yf/gattlib/j/b;

    invoke-static {v0}, Lcom/yf/gattlib/j/b;->a(Lcom/yf/gattlib/j/b;)Lcom/yf/gattlib/j/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/yf/gattlib/j/c;->a:Lcom/yf/gattlib/j/b;

    invoke-static {v0}, Lcom/yf/gattlib/j/b;->a(Lcom/yf/gattlib/j/b;)Lcom/yf/gattlib/j/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/gattlib/j/a;->a()V

    .line 31
    :cond_0
    return-void
.end method
