.class Lcom/yf/smart/weloopx/android/ui/activities/dp;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/j/a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dp;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 722
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dp;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->o:Lb/a/a/a/a/a;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dp;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->p:Lcom/yf/gattlib/a/b;

    const-string v2, "V 0.00"

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/a/a;->a(Lcom/yf/gattlib/a/b;Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dp;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->p:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dp;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->o:Lb/a/a/a/a/a;

    const-string v1, "V 1.00"

    invoke-virtual {v0, v1}, Lb/a/a/a/a/a;->a(Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dp;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->o:Lb/a/a/a/a/a;

    const-string v1, "V 0.00"

    invoke-virtual {v0, v1}, Lb/a/a/a/a/a;->b(Ljava/lang/String;)V

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dp;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    .line 729
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    const-string v1, "new_firmware"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/dp;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    iget-object v4, v4, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->o:Lb/a/a/a/a/a;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 730
    return-void
.end method
