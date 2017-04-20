.class Lcom/yf/smart/weloopx/android/ui/activities/ew;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/data/models/MsgNotiNumServerResult;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/ev;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/ev;Lcom/yf/smart/weloopx/data/models/MsgNotiNumServerResult;)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ew;->b:Lcom/yf/smart/weloopx/android/ui/activities/ev;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ew;->a:Lcom/yf/smart/weloopx/data/models/MsgNotiNumServerResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ew;->a:Lcom/yf/smart/weloopx/data/models/MsgNotiNumServerResult;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/MsgNotiNumServerResult;->getCount()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 823
    if-nez v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ew;->b:Lcom/yf/smart/weloopx/android/ui/activities/ev;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ev;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->l(Lcom/yf/smart/weloopx/android/ui/activities/el;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 825
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ew;->b:Lcom/yf/smart/weloopx/android/ui/activities/ev;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ev;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->l(Lcom/yf/smart/weloopx/android/ui/activities/el;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ew;->a:Lcom/yf/smart/weloopx/data/models/MsgNotiNumServerResult;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/MsgNotiNumServerResult;->getCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 826
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ew;->b:Lcom/yf/smart/weloopx/android/ui/activities/ev;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ev;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->l(Lcom/yf/smart/weloopx/android/ui/activities/el;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 828
    :cond_0
    return-void
.end method
