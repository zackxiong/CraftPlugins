.class Lcom/yf/smart/weloopx/android/ui/activities/dx;
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
    .line 312
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dx;->b:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/dx;->a:Lcom/umeng/update/UpdateResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dx;->a:Lcom/umeng/update/UpdateResponse;

    sput-object v0, Lcom/yf/smart/weloopx/g/k;->a:Lcom/umeng/update/UpdateResponse;

    .line 316
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/yf/smart/weloopx/g/k;->a:Lcom/umeng/update/UpdateResponse;

    iget-object v1, v1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 318
    sget-object v0, Lcom/yf/smart/weloopx/g/k;->a:Lcom/umeng/update/UpdateResponse;

    const-string v1, ""

    iput-object v1, v0, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dx;->b:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    sget-object v1, Lcom/yf/smart/weloopx/g/k;->a:Lcom/umeng/update/UpdateResponse;

    invoke-static {v0, v1}, Lcom/umeng/update/UmengUpdateAgent;->ignoreUpdate(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V

    .line 322
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dx;->b:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->e(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 323
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dx;->b:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->f(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    .line 324
    return-void
.end method
