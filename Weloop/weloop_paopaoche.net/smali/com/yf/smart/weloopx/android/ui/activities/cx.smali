.class Lcom/yf/smart/weloopx/android/ui/activities/cx;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/smart/weloopx/c/s$a;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;Z)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cx;->b:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    iput-boolean p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/cx;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cx;->b:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/cy;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/cy;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/cx;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 368
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 372
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "anti disturb model"

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/cx;->b:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->m(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;I)V

    .line 373
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cx;->b:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;Z)Z

    .line 374
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cx;->b:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/cz;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/cz;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/cx;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 383
    return-void
.end method
