.class Lcom/yf/smart/weloopx/android/services/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/d/b$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/services/LocationService;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/services/LocationService;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/services/b;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/b;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->a(Lcom/yf/smart/weloopx/android/services/LocationService;)V

    .line 173
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/b;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->b(Lcom/yf/smart/weloopx/android/services/LocationService;)V

    .line 174
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 164
    if-nez p2, :cond_0

    .line 165
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/b;->a:Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->a(Lcom/yf/smart/weloopx/android/services/LocationService;)V

    .line 168
    :cond_0
    return-void
.end method
