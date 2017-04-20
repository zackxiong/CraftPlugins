.class Lcom/yf/smart/weloopx/android/ui/c/cy;
.super Lcom/yf/smart/weloopx/b/b/u;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/cw;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/cw;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/cy;->a:Lcom/yf/smart/weloopx/android/ui/c/cw;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cy;->a:Lcom/yf/smart/weloopx/android/ui/c/cw;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/cy;->a:Lcom/yf/smart/weloopx/android/ui/c/cw;

    const v3, 0x7f070085

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/android/ui/c/cw;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/cw;->a(Lcom/yf/smart/weloopx/android/ui/c/cw;ILjava/lang/String;)V

    .line 139
    return-void
.end method

.method public a(Lcom/b/a/d/e;)V
    .locals 5
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
    const/4 v4, -0x1

    .line 114
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server error check token:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cy;->a:Lcom/yf/smart/weloopx/android/ui/c/cw;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/cy;->a:Lcom/yf/smart/weloopx/android/ui/c/cw;

    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/cw;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/yf/smart/weloopx/android/ui/c/cw;->a(Lcom/yf/smart/weloopx/android/ui/c/cw;ILjava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 121
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v2, Lcom/yf/smart/weloopx/data/models/CheckAccessTokenModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/CheckAccessTokenModel;

    .line 123
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/CheckAccessTokenModel;->getTokenIsValid()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cy;->a:Lcom/yf/smart/weloopx/android/ui/c/cw;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/cy;->a:Lcom/yf/smart/weloopx/android/ui/c/cw;

    const v3, 0x7f070134

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/android/ui/c/cw;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/cw;->a(Lcom/yf/smart/weloopx/android/ui/c/cw;ILjava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cy;->a:Lcom/yf/smart/weloopx/android/ui/c/cw;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->f()V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/cy;->a:Lcom/yf/smart/weloopx/android/ui/c/cw;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/cy;->a:Lcom/yf/smart/weloopx/android/ui/c/cw;

    const v3, 0x7f070084

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/android/ui/c/cw;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/yf/smart/weloopx/data/models/ServerResult;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v2, v0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->a(Lcom/yf/smart/weloopx/android/ui/c/cw;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
