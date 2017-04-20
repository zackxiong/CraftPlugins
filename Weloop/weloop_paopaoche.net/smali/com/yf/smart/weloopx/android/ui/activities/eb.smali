.class Lcom/yf/smart/weloopx/android/ui/activities/eb;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/eb;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/eb;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->i(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/eb;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->f(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    .line 460
    :cond_0
    return-void
.end method
