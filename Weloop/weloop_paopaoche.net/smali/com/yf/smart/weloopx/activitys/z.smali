.class Lcom/yf/smart/weloopx/activitys/z;
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
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/ResetPassword;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/ResetPassword;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/z;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJZ)V
    .locals 0

    .prologue
    .line 338
    return-void
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/z;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->f()V

    .line 364
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
    const v3, 0x7f07005b

    .line 342
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/z;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->f()V

    .line 343
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/z;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-static {v2}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->a(Lcom/yf/smart/weloopx/activitys/ResetPassword;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u7ed1\u5b9a\u624b\u673a\u53f7\u7801\u7684\u7ed3\u679c = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 345
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/z;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->f(Lcom/yf/smart/weloopx/activitys/ResetPassword;Ljava/lang/String;)V

    .line 359
    :goto_0
    return-void

    .line 348
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/yf/smart/weloopx/data/models/ServerResult;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/ServerResult;

    .line 349
    if-eqz v0, :cond_2

    .line 350
    const-string v1, "1013"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/ServerResult;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/z;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/z;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    const v2, 0x7f070027

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->g(Lcom/yf/smart/weloopx/activitys/ResetPassword;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/z;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/z;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-virtual {v1, v3}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->h(Lcom/yf/smart/weloopx/activitys/ResetPassword;Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/z;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/z;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-virtual {v1, v3}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->i(Lcom/yf/smart/weloopx/activitys/ResetPassword;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/z;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    iget-object v0, v0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/z;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/z;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-static {v2}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->a(Lcom/yf/smart/weloopx/activitys/ResetPassword;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 333
    return-void
.end method
