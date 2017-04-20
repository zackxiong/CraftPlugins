.class Lcom/yf/smart/weloopx/android/ui/activities/s;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/r;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/r;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/s;->b:Lcom/yf/smart/weloopx/android/ui/activities/r;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/s;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/s;->b:Lcom/yf/smart/weloopx/android/ui/activities/r;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/s;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 90
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 91
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 92
    return-void
.end method
