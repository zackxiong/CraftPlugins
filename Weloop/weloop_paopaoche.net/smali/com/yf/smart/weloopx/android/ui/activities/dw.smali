.class Lcom/yf/smart/weloopx/android/ui/activities/dw;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/update/UpdateResponse;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;Lcom/umeng/update/UpdateResponse;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dw;->b:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/dw;->a:Lcom/umeng/update/UpdateResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dw;->b:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dw;->a:Lcom/umeng/update/UpdateResponse;

    invoke-static {v0, v1}, Lcom/umeng/update/UmengUpdateAgent;->startDownload(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V

    .line 305
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dw;->b:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->e(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 306
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dw;->b:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->f(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    .line 307
    return-void
.end method
