.class Lcom/yf/smart/weloopx/activitys/q;
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
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/q;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJZ)V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 503
    const-string v0, "RegisterPhoneActivity1 onFailure\u4e0b\u8f7d\u5fae\u4fe1\u5934\u50cf"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 504
    return-void
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
    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegisterPhoneActivity1 \u4e0b\u8f7d\u5fae\u4fe1\u5934\u50cf\u6210\u529f = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/q;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->a(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;Z)Z

    .line 492
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/q;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/q;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-static {v2}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->h(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->a(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;Ljava/io/File;)Ljava/io/File;

    .line 494
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/q;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-static {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->i(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/q;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-static {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->h(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 496
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/q;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    iget-object v1, v1, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->c:Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 498
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 481
    const-string v0, "RegisterPhoneActivity1 \u5f00\u59cb\u4e0b\u8f7d\u5fae\u4fe1\u5934\u50cf"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 482
    return-void
.end method
