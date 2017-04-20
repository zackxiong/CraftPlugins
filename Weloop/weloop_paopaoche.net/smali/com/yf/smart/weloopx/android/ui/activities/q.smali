.class Lcom/yf/smart/weloopx/android/ui/activities/q;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/q;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/q;->a:Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 441
    return-void
.end method
