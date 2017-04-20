.class Lcom/yf/smart/weloopx/android/services/o;
.super Lcom/yf/smart/weloopx/b/b/b;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/data/models/OriginalData;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;Lcom/yf/smart/weloopx/data/models/OriginalData;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/services/o;->c:Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/services/o;->a:Lcom/yf/smart/weloopx/data/models/OriginalData;

    iput-object p3, p0, Lcom/yf/smart/weloopx/android/services/o;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 303
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

    .line 305
    return-void
.end method

.method public a(Lcom/b/a/d/e;)V
    .locals 6
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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 242
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimingUploadDeviceDataService \u4e0a\u4f20\u8bbe\u5907\u6570\u636e onSuccess and result = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 244
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 247
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
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

    .line 249
    const-string v0, "TimingUploadDeviceDataService \u4e0a\u4f20\u8bbe\u5907\u6570\u636e\u8fd4\u56de\u7684\u4e0d\u662fjson"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 253
    const-string v1, "TimingUploadDeviceDataService \u4e0a\u4f20\u8bbe\u5907\u6570\u636e\u8fd4\u56de\u6807\u8bb0\u6210\u529f"

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v1

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/services/o;->a:Lcom/yf/smart/weloopx/data/models/OriginalData;

    invoke-virtual {v5}, Lcom/yf/smart/weloopx/data/models/OriginalData;->getId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/yf/smart/weloopx/b/b;->a(I)V

    .line 256
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/o;->c:Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->d(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 257
    :goto_1
    if-eqz v1, :cond_4

    .line 258
    const-class v1, Lcom/yf/smart/weloopx/data/models/BongDataResult;

    invoke-virtual {v4, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/BongDataResult;

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimingUploadDeviceDataService \u4e0a\u4f20\u539f\u59cb\u6570\u636eUpload ori data and get activitys result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 260
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

    .line 261
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/BongDataResult;->getDailyGain()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/BongDataResult;->getDailyGain()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 265
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v4

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/BongDataResult;->getDailyGain()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/DailyGain;

    invoke-virtual {v4, v0}, Lcom/yf/smart/weloopx/b/a;->a(Lcom/yf/smart/weloopx/data/models/DailyGain;)V

    .line 266
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v0

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/BongDataResult;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/a;->a(Ljava/util/List;)V

    .line 268
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/event/ActivityDataChangedEvent;

    invoke-direct {v1, v2}, Lcom/yf/smart/weloopx/event/ActivityDataChangedEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/yf/lib/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/o;->c:Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->f(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)Lcom/yf/smart/weloopx/data/j;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/o;->c:Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->e(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/j;->b(Ljava/lang/String;)Z

    .line 274
    const-string v0, "TimingUploadDeviceDataService \u5f00\u59cb\u4e0a\u4f20\u8f68\u8ff9\u6570\u636e"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 275
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.download.upload.locationinfo"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    const-string v0, "DATE"

    invoke-static {}, Lcom/yf/gattlib/p/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v0, "IS_CUR_DATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 278
    const-string v4, "IS_HAVE_NEW_TRAIN"

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/o;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 279
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/a/a;->c(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 256
    goto/16 :goto_1

    :cond_3
    move v0, v3

    .line 278
    goto :goto_2

    .line 282
    :cond_4
    const-string v0, "TimingUploadDeviceDataService \u4e0d\u77e5\u9053\u4e3a\u4ec0\u4e48\u8fd9\u4e48\u5199\u7684finishedUploading"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :cond_5
    const-class v1, Lcom/yf/smart/weloopx/data/models/ServerResult;

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/data/models/ServerResult;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/ServerResult;

    .line 286
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/ServerResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 287
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/services/o;->c:Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;

    invoke-static {v2, v1}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->a(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/services/o;->c:Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;

    invoke-static {v2, v1}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->b(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 290
    :cond_6
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/o;->a:Lcom/yf/smart/weloopx/data/models/OriginalData;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/OriginalData;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->a(I)V

    .line 291
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/o;->c:Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->d(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)Z

    goto/16 :goto_0

    .line 293
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimingUploadDeviceDataService \u4e0a\u4f20\u5931\u8d25  -1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/ServerResult;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
