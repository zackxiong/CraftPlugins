.class Lcom/yf/smart/weloopx/activitys/y;
.super Lcom/yf/smart/weloopx/b/b/d;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/ResetPassword;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/ResetPassword;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/y;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/d;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/y;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-static {v1}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->a(Lcom/yf/smart/weloopx/activitys/ResetPassword;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5fd8\u8bb0\u5bc6\u7801\u7684\u7ed3\u679c =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/y;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->f()V

    .line 274
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 277
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v2, Lcom/yf/smart/weloopx/data/models/UserDate3;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/UserDate3;

    .line 278
    const-string v1, "Y"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserDate3;->getCheckCodeIsValid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 280
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/y;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    const-class v2, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 281
    const-string v1, "code"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/y;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    iget-object v2, v2, Lcom/yf/smart/weloopx/activitys/ResetPassword;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v1, "PHONE_NUM"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/y;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    iget-object v2, v2, Lcom/yf/smart/weloopx/activitys/ResetPassword;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string v1, "flagType"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/y;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-static {v2}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->b(Lcom/yf/smart/weloopx/activitys/ResetPassword;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    const-string v1, "IS_BIND_OLD_PHONE_ACCOUNT"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/y;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-static {v2}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->c(Lcom/yf/smart/weloopx/activitys/ResetPassword;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 285
    const-string v1, "OPEN_ID"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/y;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-static {v2}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->d(Lcom/yf/smart/weloopx/activitys/ResetPassword;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v1, "NICK_NAME"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/y;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-static {v2}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->e(Lcom/yf/smart/weloopx/activitys/ResetPassword;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v1, "SEX"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/y;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-static {v2}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->f(Lcom/yf/smart/weloopx/activitys/ResetPassword;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v1, "HEAD_PIC_URL"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/y;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-static {v2}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->g(Lcom/yf/smart/weloopx/activitys/ResetPassword;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/y;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->startActivity(Landroid/content/Intent;)V

    .line 303
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/y;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->f()V

    .line 296
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/y;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    const v1, 0x7f07012d

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->a(Lcom/yf/smart/weloopx/activitys/ResetPassword;I)V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/y;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->f()V

    .line 301
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/y;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/y;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->e(Lcom/yf/smart/weloopx/activitys/ResetPassword;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->d(Lcom/yf/smart/weloopx/activitys/ResetPassword;Ljava/lang/String;)V

    goto :goto_0
.end method
