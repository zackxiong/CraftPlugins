.class Lcom/yf/smart/weloopx/android/ui/activities/eh;
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->d:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->c:Z

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJZ)V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->d:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->a(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Del friend requst failed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->d:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->d:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    const v2, 0x7f0700ac

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->e(Ljava/lang/String;)V

    .line 341
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
    .line 316
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->d:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->a(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Del friend request or msgnoti  result  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 318
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->d:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->d(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;)Lcom/yf/smart/weloopx/data/h;

    move-result-object v0

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yf/smart/weloopx/data/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->c:Z

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->d:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->d:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    const v2, 0x7f0700ad

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->e(Ljava/lang/String;)V

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->d:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->e(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;)V

    .line 330
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->d:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->f()V

    .line 335
    :goto_1
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->d:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->d:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    const v2, 0x7f07003f

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->d:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->a(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5220\u9664/\u5ffd\u7565\u6d88\u606f\u540e\u5904\u7406\u672c\u5730\u6570\u636e\u5e93\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->d:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->f()V

    .line 333
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->d:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/eh;->d:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    const v2, 0x7f07011a

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b()V
    .locals 0

    .prologue
    .line 307
    return-void
.end method
