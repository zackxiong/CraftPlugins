.class Lcom/yf/smart/weloopx/android/ui/activities/aq;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/yf/smart/weloopx/android/ui/activities/ap;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/ap;II)V
    .locals 0

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/aq;->c:Lcom/yf/smart/weloopx/android/ui/activities/ap;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/aq;->a:I

    iput p3, p0, Lcom/yf/smart/weloopx/android/ui/activities/aq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1163
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/aq;->a:I

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/aq;->b:I

    invoke-static {v0, v1}, Lcom/yf/gattlib/client/b/a/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1164
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v1

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/aq;->c:Lcom/yf/smart/weloopx/android/ui/activities/ap;

    iget-boolean v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ap;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/aq;->c:Lcom/yf/smart/weloopx/android/ui/activities/ap;

    iget-byte v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ap;->b:B

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yf/gattlib/client/d;->c(B)V

    .line 1165
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/aq;->c:Lcom/yf/smart/weloopx/android/ui/activities/ap;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ap;->d:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/aq;->c:Lcom/yf/smart/weloopx/android/ui/activities/ap;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ap;->d:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/aq;->c:Lcom/yf/smart/weloopx/android/ui/activities/ap;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/ap;->d:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v2, 0x7f070211

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->s(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->n(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V

    .line 1173
    :cond_0
    :goto_1
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v0

    const/16 v1, 0x13

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/client/d;->a(I[Ljava/lang/Object;)V

    .line 1174
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/aq;->c:Lcom/yf/smart/weloopx/android/ui/activities/ap;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ap;->d:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->F(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    .line 1175
    return-void

    .line 1164
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/aq;->c:Lcom/yf/smart/weloopx/android/ui/activities/ap;

    iget v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ap;->c:I

    int-to-byte v0, v0

    goto :goto_0

    .line 1169
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/aq;->c:Lcom/yf/smart/weloopx/android/ui/activities/ap;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ap;->d:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/aq;->c:Lcom/yf/smart/weloopx/android/ui/activities/ap;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ap;->d:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/aq;->c:Lcom/yf/smart/weloopx/android/ui/activities/ap;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/ap;->d:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v2, 0x7f070241

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->t(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->o(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V

    goto :goto_1
.end method
