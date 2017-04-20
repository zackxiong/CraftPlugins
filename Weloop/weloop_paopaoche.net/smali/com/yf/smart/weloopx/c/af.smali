.class Lcom/yf/smart/weloopx/c/af;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/data/models/DailyGain;

.field final synthetic b:Lcom/yf/smart/weloopx/c/x;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/c/x;Lcom/yf/smart/weloopx/data/models/DailyGain;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/af;->b:Lcom/yf/smart/weloopx/c/x;

    iput-object p2, p0, Lcom/yf/smart/weloopx/c/af;->a:Lcom/yf/smart/weloopx/data/models/DailyGain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 724
    new-instance v0, Lcom/yf/gattlib/client/b/ap;

    new-instance v1, Lcom/yf/smart/weloopx/c/ag;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/c/ag;-><init>(Lcom/yf/smart/weloopx/c/af;)V

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/af;->a:Lcom/yf/smart/weloopx/data/models/DailyGain;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/DailyGain;->getStepCount()I

    move-result v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/c/af;->b:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v3}, Lcom/yf/smart/weloopx/c/x;->i(Lcom/yf/smart/weloopx/c/x;)Lcom/yf/gattlib/client/b/b/a;

    move-result-object v3

    iget v3, v3, Lcom/yf/gattlib/client/b/b/a;->c:I

    iget-object v4, p0, Lcom/yf/smart/weloopx/c/af;->b:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v4}, Lcom/yf/smart/weloopx/c/x;->i(Lcom/yf/smart/weloopx/c/x;)Lcom/yf/gattlib/client/b/b/a;

    move-result-object v4

    iget v4, v4, Lcom/yf/gattlib/client/b/b/a;->b:I

    iget-object v5, p0, Lcom/yf/smart/weloopx/c/af;->b:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v5}, Lcom/yf/smart/weloopx/c/x;->i(Lcom/yf/smart/weloopx/c/x;)Lcom/yf/gattlib/client/b/b/a;

    move-result-object v5

    iget v5, v5, Lcom/yf/gattlib/client/b/b/a;->d:I

    invoke-direct/range {v0 .. v5}, Lcom/yf/gattlib/client/b/ap;-><init>(Lcom/yf/gattlib/client/b/ap$a;IIII)V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/ap;->f()Lcom/yf/gattlib/client/b/e;

    .line 750
    return-void
.end method
