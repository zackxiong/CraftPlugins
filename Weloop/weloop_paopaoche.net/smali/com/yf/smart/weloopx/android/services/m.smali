.class Lcom/yf/smart/weloopx/android/services/m;
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
    .line 147
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/services/m;->a:Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 173
    const-string v0, "TimingUploadDeviceDataService 4.1. onReadDataTimeout -1"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public a(JJ)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public a([BJLjava/util/Calendar;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    const-string v0, "TimingUploadDeviceDataService 4. onReadDataSuccees  \u5f00\u59cb\u4fdd\u5b58"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-static {v2}, Lcom/yf/smart/weloopx/g/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p5, v2, v1, p1}, Lcom/yf/smart/weloopx/b/b;->a(Ljava/lang/String;ILjava/lang/String;[B)V

    .line 168
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/m;->a:Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->b(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)V

    .line 169
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 150
    const-string v0, "TimingUploadDeviceDataService 3. onReadDataStart"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 178
    const-string v0, "TimingUploadDeviceDataService 4.2. onReadDataFail -1"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 183
    const-string v0, "TimingUploadDeviceDataService 4.3. onNoData"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 188
    const-string v0, "TimingUploadDeviceDataService 4.3. onReadDataBusy"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 189
    return-void
.end method
