.class Lcom/yf/smart/weloopx/commons/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/yf/smart/weloopx/commons/f;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/f;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    invoke-static {}, Lcom/yf/gattlib/db/WhiteApp;->obtainAllWhiteApp()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->a(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;Ljava/util/List;)Ljava/util/List;

    .line 144
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/f;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/commons/f;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->b(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->b(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;Ljava/util/List;)Ljava/util/List;

    .line 145
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/f;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->c(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 146
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/f;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/commons/f;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->c(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->a(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;I)I

    .line 148
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/f;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    new-instance v1, Lcom/yf/smart/weloopx/commons/g;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/commons/g;-><init>(Lcom/yf/smart/weloopx/commons/f;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method
