.class Lcom/yf/smart/weloopx/activitys/g;
.super Lcom/yf/smart/weloopx/b/b/d;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/g;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/d/e;)V
    .locals 4
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
    .line 291
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/g;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->f()V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/g;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    iget-object v1, v1, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u63d0\u4ea4\u624b\u673a\u53f7\u548c\u9a8c\u8bc1\u7801\u8fd4\u56de\u7684 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 293
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 295
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/g;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->b(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)Lcom/yf/smart/weloopx/g/d;

    move-result-object v0

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/g;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/g;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-static {v3}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->a(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 296
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v2, Lcom/yf/smart/weloopx/data/models/UserDate3;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/UserDate3;

    .line 297
    const-string v1, "Y"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserDate3;->getCheckCodeIsValid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 299
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/g;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    const-class v2, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 300
    const-string v1, "code"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/g;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    iget-object v2, v2, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v1, "PHONE_NUM"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/g;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->a(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v1, "flagType"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/g;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->c(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/g;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 315
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/g;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    const v1, 0x7f07012d

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->c(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;I)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/g;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->f()V

    .line 313
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/g;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/g;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->d(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
