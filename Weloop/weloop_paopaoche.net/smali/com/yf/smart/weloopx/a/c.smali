.class Lcom/yf/smart/weloopx/a/c;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/a/b;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/a/b;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yf/smart/weloopx/a/c;->a:Lcom/yf/smart/weloopx/a/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yf/smart/weloopx/a/c;->a:Lcom/yf/smart/weloopx/a/b;

    invoke-static {v0}, Lcom/yf/smart/weloopx/a/b;->a(Lcom/yf/smart/weloopx/a/b;)Lcom/yf/smart/weloopx/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/a/d;->b()V

    .line 75
    iget-object v0, p0, Lcom/yf/smart/weloopx/a/c;->a:Lcom/yf/smart/weloopx/a/b;

    invoke-static {v0}, Lcom/yf/smart/weloopx/a/b;->b(Lcom/yf/smart/weloopx/a/b;)Lcom/yf/gattlib/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/a/c;->a:Lcom/yf/smart/weloopx/a/b;

    invoke-interface {v0, v1}, Lcom/yf/gattlib/c/d;->a(Lcom/yf/gattlib/c/b;)V

    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/a/c;->a:Lcom/yf/smart/weloopx/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/a/b;->a(Lcom/yf/smart/weloopx/a/b;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 77
    return-void
.end method
