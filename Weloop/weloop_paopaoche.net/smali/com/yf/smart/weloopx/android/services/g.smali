.class Lcom/yf/smart/weloopx/android/services/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/services/LocationService;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/services/LocationService;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/services/g;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/g;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/android/services/LocationService;->onRecongnizerChanged(II)V

    .line 456
    return-void
.end method
