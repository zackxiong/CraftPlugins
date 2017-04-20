.class Lcom/yf/smart/weloopx/c/ag;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/ap$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/c/af;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/c/af;)V
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/ag;->a:Lcom/yf/smart/weloopx/c/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ag;->a:Lcom/yf/smart/weloopx/c/af;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/af;->b:Lcom/yf/smart/weloopx/c/x;

    const-string v1, "SyncDeviceDataUtil 12. onSetStepStart"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ag;->a:Lcom/yf/smart/weloopx/c/af;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/af;->b:Lcom/yf/smart/weloopx/c/x;

    const-string v1, "SyncDeviceDataUtil 14. onSetStepTimeout"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ag;->a:Lcom/yf/smart/weloopx/c/af;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/af;->b:Lcom/yf/smart/weloopx/c/x;

    const-string v1, "SyncDeviceDataUtil 13. onSetStepFinish"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ag;->a:Lcom/yf/smart/weloopx/c/af;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/af;->b:Lcom/yf/smart/weloopx/c/x;

    const-string v1, "SyncDeviceDataUtil 15. onSetStepFail"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 748
    return-void
.end method
