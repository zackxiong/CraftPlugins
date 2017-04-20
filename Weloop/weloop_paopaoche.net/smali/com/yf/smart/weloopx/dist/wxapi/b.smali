.class Lcom/yf/smart/weloopx/dist/wxapi/b;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    iput-object p2, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJZ)V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->a(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " A.3 Third login error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    const v2, 0x7f070154

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->b(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)V

    .line 303
    return-void
.end method

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
    const v3, 0x7f070154

    .line 261
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->f()V

    .line 262
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->a(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u6839\u541bOpenID\u83b7\u5f97\u7684\u4e2a\u4eba\u4fe1\u606f\u7ed3\u679c  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 264
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 265
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 266
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 267
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v2, Lcom/yf/smart/weloopx/data/models/UserData2;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/UserData2;

    .line 268
    if-eqz v0, :cond_1

    .line 269
    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData2;->setOpenId(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->b(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)Lcom/yf/smart/weloopx/g/d;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData2;->getMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->b(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)Lcom/yf/smart/weloopx/g/d;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    iget-object v3, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/yf/smart/weloopx/g/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->b(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)Lcom/yf/smart/weloopx/g/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/g/d;->a(Lcom/yf/smart/weloopx/data/models/UserData2;)V

    .line 273
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 274
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData2;->getHeadPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 279
    :goto_0
    const-string v0, "IS_WEIXIN_LOGIN"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 297
    :goto_1
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    const-class v2, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-virtual {v1, v3}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->b(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 286
    :cond_2
    const-class v2, Lcom/yf/smart/weloopx/data/models/ServerResult;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/ServerResult;

    .line 287
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/ServerResult;->getResult()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1029"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->c(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)Lcom/yf/smart/weloopx/data/models/WeChatModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/WeChatModel;->getOpenid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->c(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)Lcom/yf/smart/weloopx/data/models/WeChatModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/WeChatModel;->getAccess_token()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->a(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-virtual {v1, v3}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->b(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 295
    :cond_4
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-virtual {v1, v3}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->b(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b()V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/b;->b:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->a(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 252
    return-void
.end method
