.class Lcom/yf/smart/weloopx/android/services/n;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/services/n;->a:Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 207
    const-string v0, "TimingUploadDeviceDataService 5.2 \u5c0f\u9ed12\uff0c\u5f00\u59cb\u83b7\u5f97\u8dd1\u6b65\u6570\u636e"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/n;->a:Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->c(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)V

    .line 209
    return-void
.end method
