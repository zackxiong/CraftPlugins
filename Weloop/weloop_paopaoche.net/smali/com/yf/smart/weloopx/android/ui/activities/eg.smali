.class Lcom/yf/smart/weloopx/android/ui/activities/eg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/eg;->b:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/eg;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/eg;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 273
    return-void
.end method
