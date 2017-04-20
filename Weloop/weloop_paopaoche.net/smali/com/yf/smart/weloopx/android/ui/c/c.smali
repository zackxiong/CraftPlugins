.class Lcom/yf/smart/weloopx/android/ui/c/c;
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
    .line 133
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/c;->b:Lcom/yf/smart/weloopx/android/ui/c/a;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/c/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/c;->b:Lcom/yf/smart/weloopx/android/ui/c/a;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/c;->b:Lcom/yf/smart/weloopx/android/ui/c/a;

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/c/c;->a:I

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 139
    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 140
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
