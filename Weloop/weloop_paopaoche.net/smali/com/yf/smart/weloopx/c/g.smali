.class Lcom/yf/smart/weloopx/c/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/c/c;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/c/c;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/g;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 194
    const-string v0, "CustomInitializer test, Runnable syncStep"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 195
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    sget-object v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->g:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const-string v0, "CustomInitializer test, is not after OTA, do not syncStep"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/g;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v0, v4, v5}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;J)V

    .line 241
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v0

    invoke-static {}, Lcom/yf/gattlib/p/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/a;->b(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/DailyGain;

    move-result-object v2

    .line 201
    if-nez v2, :cond_1

    .line 202
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/g;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v0, v4, v5}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;J)V

    goto :goto_0

    .line 206
    :cond_1
    invoke-static {}, Lcom/yf/smart/weloopx/c/x;->a()Lcom/yf/smart/weloopx/c/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/c/x;->b()Lcom/yf/gattlib/client/b/b/a;

    move-result-object v0

    .line 207
    if-nez v0, :cond_2

    .line 208
    new-instance v0, Lcom/yf/gattlib/client/b/b/a;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/b/a;-><init>()V

    move-object v5, v0

    .line 211
    :goto_1
    const-string v0, "CustomInitializer OTA\u5b8c\u6210\u4e4b\u540e\u7684\u9996\u6b21\u8fde\u63a5\uff0c\u5f00\u59cb\u6267\u884c\u6570\u636e\u56de\u4f20\u529f\u80fd"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 212
    const-string v0, "CustomInitializer test, OTA\u5b8c\u6210\u4e4b\u540e\u7684\u9996\u6b21\u8fde\u63a5\uff0c\u5f00\u59cb\u6267\u884c\u6570\u636e\u56de\u4f20\u529f\u80fd"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 213
    new-instance v0, Lcom/yf/gattlib/client/b/ap;

    new-instance v1, Lcom/yf/smart/weloopx/c/h;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/c/h;-><init>(Lcom/yf/smart/weloopx/c/g;)V

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/DailyGain;->getStepCount()I

    move-result v2

    iget v3, v5, Lcom/yf/gattlib/client/b/b/a;->c:I

    iget v4, v5, Lcom/yf/gattlib/client/b/b/a;->b:I

    iget v5, v5, Lcom/yf/gattlib/client/b/b/a;->d:I

    invoke-direct/range {v0 .. v5}, Lcom/yf/gattlib/client/b/ap;-><init>(Lcom/yf/gattlib/client/b/ap$a;IIII)V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/ap;->g()Lcom/yf/gattlib/client/b/e;

    goto :goto_0

    :cond_2
    move-object v5, v0

    goto :goto_1
.end method
