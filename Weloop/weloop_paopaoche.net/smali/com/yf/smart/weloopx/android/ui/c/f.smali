.class Lcom/yf/smart/weloopx/android/ui/c/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/c/a;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/a;I)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/f;->b:Lcom/yf/smart/weloopx/android/ui/c/a;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/c/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/f;->b:Lcom/yf/smart/weloopx/android/ui/c/a;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/a;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/c/f;->a:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 190
    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 191
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 193
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/f;->b:Lcom/yf/smart/weloopx/android/ui/c/a;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/a;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
