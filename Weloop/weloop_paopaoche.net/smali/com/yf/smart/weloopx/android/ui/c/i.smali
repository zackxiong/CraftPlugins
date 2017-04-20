.class Lcom/yf/smart/weloopx/android/ui/c/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/c/g;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/g;I)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/i;->b:Lcom/yf/smart/weloopx/android/ui/c/g;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/c/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/i;->b:Lcom/yf/smart/weloopx/android/ui/c/g;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/i;->b:Lcom/yf/smart/weloopx/android/ui/c/g;

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/c/i;->a:I

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/g;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 91
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 92
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 93
    return-void
.end method
