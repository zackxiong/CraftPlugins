.class Lcom/yf/smart/weloopx/android/ui/activities/he;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/he;->b:Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/he;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/he;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 92
    return-void
.end method
