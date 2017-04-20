.class Lcom/yf/smart/weloopx/android/ui/activities/ed;
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
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ed;->a:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

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
    .line 185
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ed;->a:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->a()V

    .line 186
    invoke-static {p2}, Lcom/yf/smart/weloopx/f/n;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/event/InvalidAccessTokenEvent;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/event/InvalidAccessTokenEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/lib/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ed;->a:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->a(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u83b7\u5f97\u6d88\u606f\u5931\u8d25 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    goto :goto_0
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
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ed;->a:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->a()V

    .line 169
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ed;->a:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->a(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u83b7\u5f97\u6240\u6709\u6d88\u606f\u901a\u77e5\u7684\u5185\u5bb9  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 171
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/event/InvalidAccessTokenEvent;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/event/InvalidAccessTokenEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/lib/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ed;->a:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->finish()V

    .line 181
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ed;->a:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->a(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ed;->a:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ed;->a:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    const v2, 0x7f07018a

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method
