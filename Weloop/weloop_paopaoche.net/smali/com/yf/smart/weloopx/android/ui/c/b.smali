.class Lcom/yf/smart/weloopx/android/ui/c/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/yf/smart/weloopx/android/ui/c/a;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/a;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/b;->c:Lcom/yf/smart/weloopx/android/ui/c/a;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/c/b;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/yf/smart/weloopx/android/ui/c/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/b;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 120
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 121
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    return-void
.end method
