.class Lcom/yf/smart/weloopx/test/ui/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/test/ui/b;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/test/ui/b;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/yf/smart/weloopx/test/ui/c;->a:Lcom/yf/smart/weloopx/test/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnapshotReady(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    const-string v0, "Test"

    const-string v1, "bitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string v0, "Test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitmap is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/yf/smart/weloopx/test/ui/c;->a:Lcom/yf/smart/weloopx/test/ui/b;

    iget-object v0, v0, Lcom/yf/smart/weloopx/test/ui/b;->a:Lcom/yf/smart/weloopx/test/ui/a;

    iget-object v0, v0, Lcom/yf/smart/weloopx/test/ui/a;->c:Lcom/yf/smart/weloopx/test/ui/TestActivity;

    new-instance v1, Lcom/yf/smart/weloopx/test/ui/d;

    invoke-direct {v1, p0, p1}, Lcom/yf/smart/weloopx/test/ui/d;-><init>(Lcom/yf/smart/weloopx/test/ui/c;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/test/ui/TestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
