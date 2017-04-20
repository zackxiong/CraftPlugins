.class Lcom/yf/smart/weloopx/android/ui/c/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/a;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/a;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/d;->a:Lcom/yf/smart/weloopx/android/ui/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/d;->a:Lcom/yf/smart/weloopx/android/ui/c/a;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/a;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
