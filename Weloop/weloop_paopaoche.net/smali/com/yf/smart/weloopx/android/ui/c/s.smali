.class Lcom/yf/smart/weloopx/android/ui/c/s;
.super Lcom/b/a/d/a/d;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/d/a/d",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/l;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/l;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/s;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 3

    .prologue
    const v2, 0x7f0700e3

    .line 226
    const-string v0, "BaseDialogFragment \u8868\u76d8\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadWatchBin failed msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->c(Ljava/lang/String;)V

    .line 228
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/s;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/s;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/l;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->b(Ljava/lang/String;)V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/s;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/s;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/l;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/b/a/d/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/e",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseDialogFragment \u8868\u76d8\u4e0b\u8f7d\u6210\u529f responseInfo.result.getAbsolutePath() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/s;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/client/b/c/a;->a(Ljava/lang/String;)Lcom/yf/gattlib/client/b/c/a;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(Lcom/yf/smart/weloopx/android/ui/c/l;Lcom/yf/gattlib/client/b/c/a;)Lcom/yf/gattlib/client/b/c/a;

    .line 218
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/s;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->e(Lcom/yf/smart/weloopx/android/ui/c/l;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/s;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/s;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    const v2, 0x7f0700e3

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/l;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
