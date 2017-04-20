.class Lcom/yf/smart/weloopx/android/ui/activities/p;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;I)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/p;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 428
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/p;->a:I

    const/16 v1, 0x271c

    if-ne v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/p;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->finish()V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/p;->b:Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 432
    return-void
.end method
