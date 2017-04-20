.class Lcom/yf/smart/weloopx/c/k;
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
    .line 306
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/k;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/k;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v1

    const-string v2, "KEY_RECORD_CURRENT_CITY"

    const-string v3, "\u6c5f\u95e8"

    invoke-virtual {v1, v2, v3}, Lcom/yf/gattlib/c/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;Ljava/lang/String;)Ljava/lang/String;

    .line 313
    const-string v0, "CustomInitializer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current city = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/k;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/c;->h(Lcom/yf/smart/weloopx/c/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/k;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/c;->h(Lcom/yf/smart/weloopx/c/c;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/yf/smart/weloopx/c/l;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/c/l;-><init>(Lcom/yf/smart/weloopx/c/k;)V

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/b/a;->a(Ljava/lang/String;Lcom/yf/smart/weloopx/b/b/i;)V

    .line 361
    return-void
.end method
