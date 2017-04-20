.class Lcom/yf/smart/weloopx/android/ui/c/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/c/g;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/g;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/h;->b:Lcom/yf/smart/weloopx/android/ui/c/g;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/c/h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/h;->b:Lcom/yf/smart/weloopx/android/ui/c/g;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/h;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 75
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 76
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 77
    return-void
.end method
