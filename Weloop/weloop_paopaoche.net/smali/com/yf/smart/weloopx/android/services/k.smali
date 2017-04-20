.class Lcom/yf/smart/weloopx/android/services/k;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/smart/weloopx/f/b$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/services/LocationService;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/services/LocationService;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/services/k;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 614
    const-string v0, "LocationService \u5f00\u59cb\u4e0a\u4f20\u7edf\u8ba1\u4fe1\u606f"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 615
    const-string v0, "uploadStatisticalInfo onUploadStart "

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 616
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationService \u4e0a\u4f20\u7edf\u8ba1\u4fe1\u606f\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadStatisticalInfo onUploadFailed msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 622
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 631
    const-string v0, "LocationService \u4e0a\u4f20\u7edf\u8ba1\u4fe1\u606f\u6210\u529f"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 632
    const-string v0, "uploadStatisticalInfo onUploadSuccess"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 634
    return-void
.end method
