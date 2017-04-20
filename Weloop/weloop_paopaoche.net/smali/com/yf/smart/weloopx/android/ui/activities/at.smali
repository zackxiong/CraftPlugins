.class Lcom/yf/smart/weloopx/android/ui/activities/at;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/yf/smart/weloopx/android/ui/activities/as;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/as;II)V
    .locals 0

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/at;->c:Lcom/yf/smart/weloopx/android/ui/activities/as;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/at;->a:I

    iput p3, p0, Lcom/yf/smart/weloopx/android/ui/activities/at;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1201
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/at;->a:I

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/at;->b:I

    invoke-static {v0, v1}, Lcom/yf/gattlib/client/b/a/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/at;->c:Lcom/yf/smart/weloopx/android/ui/activities/as;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/as;->b:Lcom/yf/smart/weloopx/android/ui/activities/ar;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ar;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/client/d;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/at;->c:Lcom/yf/smart/weloopx/android/ui/activities/as;

    iget-boolean v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/as;->a:Z

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/d;->c(Z)V

    .line 1203
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/at;->c:Lcom/yf/smart/weloopx/android/ui/activities/as;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/as;->b:Lcom/yf/smart/weloopx/android/ui/activities/ar;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ar;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/at;->c:Lcom/yf/smart/weloopx/android/ui/activities/as;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/as;->b:Lcom/yf/smart/weloopx/android/ui/activities/ar;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/ar;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v2, 0x7f070211

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->y(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->p(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V

    .line 1207
    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/at;->c:Lcom/yf/smart/weloopx/android/ui/activities/as;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/as;->b:Lcom/yf/smart/weloopx/android/ui/activities/ar;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ar;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/client/d;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/client/d;->a(I[Ljava/lang/Object;)V

    .line 1208
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/at;->c:Lcom/yf/smart/weloopx/android/ui/activities/as;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/as;->b:Lcom/yf/smart/weloopx/android/ui/activities/ar;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ar;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->F(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    .line 1209
    return-void

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/at;->c:Lcom/yf/smart/weloopx/android/ui/activities/as;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/as;->b:Lcom/yf/smart/weloopx/android/ui/activities/ar;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ar;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/at;->c:Lcom/yf/smart/weloopx/android/ui/activities/as;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/as;->b:Lcom/yf/smart/weloopx/android/ui/activities/ar;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/ar;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v2, 0x7f070242

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->z(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->q(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V

    goto :goto_0
.end method
