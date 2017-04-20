.class Lcom/yf/smart/weloopx/android/ui/activities/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/h;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/h;I)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/i;->b:Lcom/yf/smart/weloopx/android/ui/activities/h;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/i;->b:Lcom/yf/smart/weloopx/android/ui/activities/h;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/h;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/i;->b:Lcom/yf/smart/weloopx/android/ui/activities/h;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/h;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/i;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    return-void
.end method
