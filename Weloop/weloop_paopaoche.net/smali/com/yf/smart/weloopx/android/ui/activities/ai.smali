.class Lcom/yf/smart/weloopx/android/ui/activities/ai;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/ag;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/ag;)V
    .locals 0

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ai;->a:Lcom/yf/smart/weloopx/android/ui/activities/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ai;->a:Lcom/yf/smart/weloopx/android/ui/activities/ag;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ag;->c:Lcom/yf/smart/weloopx/android/ui/activities/af;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/af;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->F(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    .line 1069
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ai;->a:Lcom/yf/smart/weloopx/android/ui/activities/ag;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ag;->c:Lcom/yf/smart/weloopx/android/ui/activities/af;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/af;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ai;->a:Lcom/yf/smart/weloopx/android/ui/activities/ag;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/ag;->c:Lcom/yf/smart/weloopx/android/ui/activities/af;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/af;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v2, 0x7f070211

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->k(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->k(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V

    .line 1070
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ai;->a:Lcom/yf/smart/weloopx/android/ui/activities/ag;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ag;->a:Lcom/yf/gattlib/client/d;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ai;->a:Lcom/yf/smart/weloopx/android/ui/activities/ag;

    iget-boolean v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/ag;->b:Z

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/d;->d(Z)V

    .line 1071
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ai;->a:Lcom/yf/smart/weloopx/android/ui/activities/ag;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ag;->a:Lcom/yf/gattlib/client/d;

    const/16 v1, 0x11

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/client/d;->a(I[Ljava/lang/Object;)V

    .line 1072
    return-void
.end method
