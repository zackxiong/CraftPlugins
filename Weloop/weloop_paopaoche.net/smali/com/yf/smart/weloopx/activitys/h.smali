.class Lcom/yf/smart/weloopx/activitys/h;
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
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/h;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJZ)V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/h;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->f()V

    .line 405
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
    .line 392
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/h;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->f()V

    .line 393
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/h;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    iget-object v2, v2, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u7ed1\u5b9a\u539f\u6709\u8d26\u53f7\u7684\u7ed3\u679c = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 395
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/h;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->e(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;Ljava/lang/String;)V

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/h;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/h;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    const v2, 0x7f07005b

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->f(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/h;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/h;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/h;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    iget-object v2, v2, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 383
    return-void
.end method
