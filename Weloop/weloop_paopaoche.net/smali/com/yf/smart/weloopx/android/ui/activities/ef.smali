.class Lcom/yf/smart/weloopx/android/ui/activities/ef;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;

.field final synthetic b:Z

.field final synthetic c:Landroid/app/AlertDialog;

.field final synthetic d:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;ZLandroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ef;->d:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ef;->a:Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;

    iput-boolean p3, p0, Lcom/yf/smart/weloopx/android/ui/activities/ef;->b:Z

    iput-object p4, p0, Lcom/yf/smart/weloopx/android/ui/activities/ef;->c:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 259
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ef;->d:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ef;->a:Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getToUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ef;->a:Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getRequestUserId()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/ef;->b:Z

    invoke-static {v0, v1, v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->a(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 260
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ef;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 261
    return-void
.end method
