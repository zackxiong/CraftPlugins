.class Lcom/yf/smart/weloopx/android/services/h;
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
    .line 459
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/services/h;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/h;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/services/LocationService;->b(Lcom/yf/smart/weloopx/android/services/LocationService;Z)V

    .line 463
    return-void
.end method
