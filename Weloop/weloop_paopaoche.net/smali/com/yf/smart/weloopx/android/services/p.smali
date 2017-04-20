.class Lcom/yf/smart/weloopx/android/services/p;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/p$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/services/p;->a:Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 349
    const-string v0, "TimingUploadDeviceDataService getRunningDataFromDevice onReadDataTimeout -1"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public a(JJ)V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public a([BJLjava/util/Calendar;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 333
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 334
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 335
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 336
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 337
    new-instance v1, Lcom/yf/gattlib/client/b/b/b;

    invoke-direct {v1}, Lcom/yf/gattlib/client/b/b/b;-><init>()V

    .line 338
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/yf/gattlib/client/b/b/b;->a:I

    .line 339
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/yf/gattlib/client/b/b/b;->b:I

    .line 340
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/yf/gattlib/client/b/b/b;->c:I

    .line 341
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/yf/gattlib/client/b/b/b;->d:I

    .line 342
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/services/p;->a:Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->f(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)Lcom/yf/smart/weloopx/data/j;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/services/p;->a:Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->e(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/yf/smart/weloopx/data/j;->a(Lcom/yf/gattlib/client/b/b/b;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/p;->a:Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->d(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)Z

    .line 345
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 355
    const-string v0, "TimingUploadDeviceDataService getRunningDataFromDevice onReadDataFail -1"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/p;->a:Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->d(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)Z

    .line 362
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/services/p;->c()V

    .line 367
    return-void
.end method
