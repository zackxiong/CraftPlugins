.class Lcom/yf/smart/weloopx/activitys/f;
.super Lcom/yf/smart/weloopx/b/b/h;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/f;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/f;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->f()V

    .line 247
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/f;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/f;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    const v2, 0x7f070204

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->c(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;Ljava/lang/String;)V

    .line 248
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
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/f;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    iget-object v1, v1, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6ce8\u518c\u83b7\u5f97\u9a8c\u8bc1\u7801\u7684\u53ca\u683c\u8fc7 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/f;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->f()V

    .line 231
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/f;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    const v1, 0x7f07020b

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->a(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;I)V

    .line 241
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/f;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->a(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/f;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    const v1, 0x7f070082

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->b(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;I)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/f;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/f;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->b(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
