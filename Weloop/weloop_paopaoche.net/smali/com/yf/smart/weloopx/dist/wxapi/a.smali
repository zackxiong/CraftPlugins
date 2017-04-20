.class Lcom/yf/smart/weloopx/dist/wxapi/a;
.super Lcom/b/a/d/a/d;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/d/a/d",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/yf/smart/weloopx/dist/wxapi/a;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJZ)V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/a;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->a(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onFailure = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/a;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-static {v0, p2}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->b(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public a(Lcom/b/a/d/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/e",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/a;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->a(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 2. GetWeChatAuthInfo Get auth result  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/a;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->a(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method
