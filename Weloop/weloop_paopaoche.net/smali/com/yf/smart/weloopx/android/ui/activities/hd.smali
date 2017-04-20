.class Lcom/yf/smart/weloopx/android/ui/activities/hd;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/app/AlertDialog;

.field final synthetic c:Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;ILandroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/hd;->c:Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/hd;->a:I

    iput-object p3, p0, Lcom/yf/smart/weloopx/android/ui/activities/hd;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/hd;->c:Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/hd;->a:I

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;I)V

    .line 84
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/hd;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 85
    return-void
.end method
