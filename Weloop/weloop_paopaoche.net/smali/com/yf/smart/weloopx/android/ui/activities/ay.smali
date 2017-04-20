.class Lcom/yf/smart/weloopx/android/ui/activities/ay;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/yf/smart/weloopx/android/ui/activities/ax;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/ax;II)V
    .locals 0

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ay;->c:Lcom/yf/smart/weloopx/android/ui/activities/ax;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ay;->a:I

    iput p3, p0, Lcom/yf/smart/weloopx/android/ui/activities/ay;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1234
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ay;->a:I

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ay;->b:I

    invoke-static {v0, v1}, Lcom/yf/gattlib/client/b/a/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ay;->c:Lcom/yf/smart/weloopx/android/ui/activities/ax;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ax;->a:Lcom/yf/smart/weloopx/android/ui/activities/aw;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/aw;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/client/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yf/gattlib/client/d;->a(Z)V

    .line 1236
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ay;->c:Lcom/yf/smart/weloopx/android/ui/activities/ax;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ax;->a:Lcom/yf/smart/weloopx/android/ui/activities/aw;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/aw;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ay;->c:Lcom/yf/smart/weloopx/android/ui/activities/ax;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/ax;->a:Lcom/yf/smart/weloopx/android/ui/activities/aw;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/aw;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v2, 0x7f070211

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->E(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->r(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V

    .line 1240
    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ay;->c:Lcom/yf/smart/weloopx/android/ui/activities/ax;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ax;->a:Lcom/yf/smart/weloopx/android/ui/activities/aw;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/aw;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/client/d;

    move-result-object v0

    const/16 v1, 0x12

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/client/d;->a(I[Ljava/lang/Object;)V

    .line 1241
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ay;->c:Lcom/yf/smart/weloopx/android/ui/activities/ax;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ax;->a:Lcom/yf/smart/weloopx/android/ui/activities/aw;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/aw;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->F(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    .line 1242
    return-void

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ay;->c:Lcom/yf/smart/weloopx/android/ui/activities/ax;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ax;->a:Lcom/yf/smart/weloopx/android/ui/activities/aw;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/aw;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ay;->c:Lcom/yf/smart/weloopx/android/ui/activities/ax;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/ax;->a:Lcom/yf/smart/weloopx/android/ui/activities/aw;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/aw;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v2, 0x7f070242

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->F(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->s(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V

    goto :goto_0
.end method
