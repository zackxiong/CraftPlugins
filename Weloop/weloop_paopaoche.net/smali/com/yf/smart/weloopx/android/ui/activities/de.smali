.class Lcom/yf/smart/weloopx/android/ui/activities/de;
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
.field final synthetic a:Z

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;Z)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/de;->b:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    iput-boolean p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/de;->a:Z

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJZ)V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FriendSearchActivity Query search failed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/de;->b:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->f()V

    .line 233
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
    .line 219
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FriendSearchActivity Query search result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 221
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/de;->b:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    iget-boolean v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/de;->a:Z

    invoke-static {v1, v0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;Ljava/lang/String;Z)V

    .line 226
    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/de;->b:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->f()V

    .line 227
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/de;->b:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/de;->b:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    const v2, 0x7f0701f8

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/de;->b:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/df;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/df;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/de;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 210
    return-void
.end method
