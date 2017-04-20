.class Lcom/yf/smart/weloopx/c/aa;
.super Lcom/yf/smart/weloopx/b/b/b;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/data/models/OriginalData;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/yf/smart/weloopx/c/x;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/c/x;Lcom/yf/smart/weloopx/data/models/OriginalData;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    iput-object p2, p0, Lcom/yf/smart/weloopx/c/aa;->a:Lcom/yf/smart/weloopx/data/models/OriginalData;

    iput-object p3, p0, Lcom/yf/smart/weloopx/c/aa;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 400
    const-string v0, "\u4e0a\u4f20\u539f\u59cb\u6570\u636e\u5931\u8d25"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->d(Ljava/lang/String;)V

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload onFailure:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 402
    invoke-static {}, Lcom/yf/lib/a/b;->a()Lcom/yf/lib/a/b;

    move-result-object v0

    const-string v1, "upload_original_fail"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yf/lib/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    const/4 v1, -0x1

    const v2, 0x7f07024c

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;IILjava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;II)V

    .line 405
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncDeviceDataUtil \u4e0a\u4f20\u5931\u8d25\u7684msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public a(Lcom/b/a/d/e;)V
    .locals 9
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
    const v8, 0x7f07024b

    const/4 v2, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 330
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 331
    iget-object v1, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SyncDeviceDataUtil 5. \u4e0a\u4f20\u8bbe\u5907\u6570\u636e onSuccess and result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 333
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server error upload:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 335
    invoke-static {}, Lcom/yf/lib/a/b;->a()Lcom/yf/lib/a/b;

    move-result-object v0

    const-string v1, "upload_original_fail"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yf/lib/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    const v1, 0x7f07024d

    const-string v2, ""

    invoke-static {v0, v7, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;IILjava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;II)V

    .line 395
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;II)V

    .line 396
    :goto_1
    return-void

    .line 339
    :cond_1
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 340
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v1

    iget-object v4, p0, Lcom/yf/smart/weloopx/c/aa;->a:Lcom/yf/smart/weloopx/data/models/OriginalData;

    invoke-virtual {v4}, Lcom/yf/smart/weloopx/data/models/OriginalData;->getId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/yf/smart/weloopx/b/b;->a(I)V

    .line 341
    iget-object v1, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/c/x;->c()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 342
    :goto_2
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v4

    new-instance v5, Lcom/yf/smart/weloopx/event/UploadOriginalEvent;

    invoke-direct {v5}, Lcom/yf/smart/weloopx/event/UploadOriginalEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/yf/lib/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 343
    invoke-static {}, Lcom/yf/lib/a/b;->a()Lcom/yf/lib/a/b;

    move-result-object v4

    const-string v5, "upload_original_success"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/yf/lib/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    iget-object v4, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v4}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v4

    iget-object v5, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v5}, Lcom/yf/smart/weloopx/c/x;->b(Lcom/yf/smart/weloopx/c/x;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v1, v4, v5}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;II)V

    .line 347
    iget-object v1, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->e(Lcom/yf/smart/weloopx/c/x;)Lcom/google/gson/Gson;

    move-result-object v1

    const-class v4, Lcom/yf/smart/weloopx/data/models/BongDataResult;

    invoke-virtual {v1, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/BongDataResult;

    .line 348
    iget-object v4, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SyncDeviceDataUtil 5.1 \u4e0a\u4f20\u539f\u59cb\u6570\u636e\u8fd4\u56de Upload ori data and get activitys result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 350
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/BongDataResult;->getDailyGain()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/BongDataResult;->getDailyGain()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    const-string v1, "SyncDeviceDataUtil 5.2  NULL"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    const-string v1, ""

    invoke-static {v0, v7, v8, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;IILjava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    move v1, v3

    .line 341
    goto/16 :goto_2

    .line 355
    :cond_4
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    const-string v4, "SyncDeviceDataUtil 5.3 \u4fdd\u5b58\u8fd4\u56de\u7684\u6570\u636e"

    invoke-static {v0, v4}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 356
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/BongDataResult;->getDailyGain()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/DailyGain;

    .line 357
    iget-object v3, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v3, v0}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Lcom/yf/smart/weloopx/data/models/DailyGain;)V

    .line 358
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/yf/smart/weloopx/b/a;->a(Lcom/yf/smart/weloopx/data/models/DailyGain;)V

    .line 359
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v0

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/BongDataResult;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/a;->a(Ljava/util/List;)V

    .line 361
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/event/ActivityDataChangedEvent;

    invoke-direct {v1, v2}, Lcom/yf/smart/weloopx/event/ActivityDataChangedEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/yf/lib/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 366
    invoke-static {}, Lcom/yf/smart/weloopx/c/x;->g()Lcom/yf/smart/weloopx/data/j;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->f(Lcom/yf/smart/weloopx/c/x;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/j;->b(Ljava/lang/String;)Z

    move-result v0

    .line 367
    iget-object v1, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncDeviceDataUtil \u5220\u9664\u8dd1\u6b65\u6570\u636e\u7ed3\u679c = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncDeviceDataUtil \u662f\u5426\u6709\u8dd1\u6b65\u4fe1\u606f runningDataInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/aa;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/aa;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 374
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yf.weloopx.runtrain.new"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->e()Lcom/yf/gattlib/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/a/a;->c(Landroid/content/Intent;)V

    .line 377
    :cond_5
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;II)V

    goto/16 :goto_0

    .line 380
    :cond_6
    iget-object v1, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    const-string v2, "SyncDeviceDataUtil \u4e0a\u4f20\u539f\u59cb\u6570\u636e\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lcom/yf/lib/a/b;->a()Lcom/yf/lib/a/b;

    move-result-object v1

    const-string v2, "upload_original_fail"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/yf/lib/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    const-class v1, Lcom/yf/smart/weloopx/data/models/ServerResult;

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/data/models/ServerResult;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/ServerResult;

    .line 383
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/ServerResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/c/x;->b(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/c/x;->c(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 386
    :cond_7
    invoke-static {}, Lcom/yf/smart/weloopx/c/x;->g()Lcom/yf/smart/weloopx/data/j;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->f(Lcom/yf/smart/weloopx/c/x;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/j;->b(Ljava/lang/String;)Z

    .line 387
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/aa;->a:Lcom/yf/smart/weloopx/data/models/OriginalData;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/OriginalData;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->a(I)V

    .line 388
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/c/x;->c()Z

    goto/16 :goto_0

    .line 390
    :cond_8
    iget-object v1, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1, v7, v8, v0}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;IILjava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/aa;->c:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;II)V

    goto/16 :goto_0
.end method
