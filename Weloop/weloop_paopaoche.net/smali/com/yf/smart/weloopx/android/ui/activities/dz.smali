.class Lcom/yf/smart/weloopx/android/ui/activities/dz;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/umeng/update/UmengUpdateListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/dy;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/dy;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dz;->a:Lcom/yf/smart/weloopx/android/ui/activities/dy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateReturned(ILcom/umeng/update/UpdateResponse;)V
    .locals 3

    .prologue
    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dz;->a:Lcom/yf/smart/weloopx/android/ui/activities/dy;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/dy;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v0, p2}, Lcom/umeng/update/UmengUpdateAgent;->isIgnore(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)Z

    move-result v0

    .line 412
    packed-switch p1, :pswitch_data_0

    .line 429
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dz;->a:Lcom/yf/smart/weloopx/android/ui/activities/dy;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/dy;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->f(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    .line 437
    :goto_0
    return-void

    .line 415
    :pswitch_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dz;->a:Lcom/yf/smart/weloopx/android/ui/activities/dy;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/dy;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    iget-object v2, p2, Lcom/umeng/update/UpdateResponse;->version:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dz;->a:Lcom/yf/smart/weloopx/android/ui/activities/dy;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/dy;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->g(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dz;->a:Lcom/yf/smart/weloopx/android/ui/activities/dy;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/dy;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v0, p2}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;Lcom/umeng/update/UpdateResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    const-string v0, "MainActivity Not net error"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dz;->a:Lcom/yf/smart/weloopx/android/ui/activities/dy;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/dy;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->f(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    goto :goto_0

    .line 419
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dz;->a:Lcom/yf/smart/weloopx/android/ui/activities/dy;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/dy;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->f(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
