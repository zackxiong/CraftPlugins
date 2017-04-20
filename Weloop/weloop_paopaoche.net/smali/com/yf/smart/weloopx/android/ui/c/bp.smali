.class Lcom/yf/smart/weloopx/android/ui/c/bp;
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

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/c/bl;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/bl;Z)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bp;->b:Lcom/yf/smart/weloopx/android/ui/c/bl;

    iput-boolean p2, p0, Lcom/yf/smart/weloopx/android/ui/c/bp;->a:Z

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJZ)V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/c/bl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 3. \u83b7\u5f97\u6240\u6709\u597d\u53cb\u4fe1\u606f\u5931\u8d25 failed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bp;->b:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->f(Lcom/yf/smart/weloopx/android/ui/c/bl;)V

    .line 246
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bp;->b:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->b()V

    .line 247
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
    .line 232
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/c/bl;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 2. \u7f51\u7edc\u8fd4\u56de\u6240\u6709\u7684\u597d\u53cb\u4fe1\u606f  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 234
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bp;->b:Lcom/yf/smart/weloopx/android/ui/c/bl;

    iget-boolean v2, p0, Lcom/yf/smart/weloopx/android/ui/c/bp;->a:Z

    invoke-static {v1, v0, v2}, Lcom/yf/smart/weloopx/android/ui/c/bl;->a(Lcom/yf/smart/weloopx/android/ui/c/bl;Ljava/lang/String;Z)V

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bp;->b:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->b()V

    .line 240
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bp;->b:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->f(Lcom/yf/smart/weloopx/android/ui/c/bl;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/c/bl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 1. \u83b7\u5f97\u6240\u6709\u597d\u53cb\u4fe1\u606f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bp;->b:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->e(Lcom/yf/smart/weloopx/android/ui/c/bl;)V

    .line 223
    return-void
.end method
