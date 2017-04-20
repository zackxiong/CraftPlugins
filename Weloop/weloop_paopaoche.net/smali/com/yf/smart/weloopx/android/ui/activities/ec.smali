.class Lcom/yf/smart/weloopx/android/ui/activities/ec;
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
    .line 463
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ec;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 466
    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/b;->a()Lcom/yf/smart/weloopx/android/ui/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ec;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/b;->a(Landroid/app/Activity;)V

    .line 467
    return-void
.end method
