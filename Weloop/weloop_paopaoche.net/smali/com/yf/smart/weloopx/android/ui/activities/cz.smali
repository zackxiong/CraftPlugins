.class Lcom/yf/smart/weloopx/android/ui/activities/cz;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/cx;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/cx;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cz;->a:Lcom/yf/smart/weloopx/android/ui/activities/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cz;->a:Lcom/yf/smart/weloopx/android/ui/activities/cx;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/cx;->b:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->f()V

    .line 378
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cz;->a:Lcom/yf/smart/weloopx/android/ui/activities/cx;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/cx;->b:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    const v1, 0x7f070211

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->b(I)V

    .line 379
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cz;->a:Lcom/yf/smart/weloopx/android/ui/activities/cx;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/cx;->b:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->l(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Lcom/yf/gattlib/client/d;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cz;->a:Lcom/yf/smart/weloopx/android/ui/activities/cx;

    iget-boolean v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/cx;->a:Z

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/cz;->a:Lcom/yf/smart/weloopx/android/ui/activities/cx;

    iget-object v2, v2, Lcom/yf/smart/weloopx/android/ui/activities/cx;->b:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->e(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/client/d;->a(Z[B)V

    .line 380
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cz;->a:Lcom/yf/smart/weloopx/android/ui/activities/cx;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/cx;->b:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->l(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Lcom/yf/gattlib/client/d;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/client/d;->a(I[Ljava/lang/Object;)V

    .line 381
    return-void
.end method
