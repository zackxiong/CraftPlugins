.class Lcom/yf/smart/weloopx/android/ui/activities/an;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/yf/smart/weloopx/android/ui/activities/am;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/am;II)V
    .locals 0

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/an;->c:Lcom/yf/smart/weloopx/android/ui/activities/am;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/an;->a:I

    iput p3, p0, Lcom/yf/smart/weloopx/android/ui/activities/an;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1110
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/an;->a:I

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/an;->b:I

    invoke-static {v0, v1}, Lcom/yf/gattlib/client/b/a/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1112
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/an;->c:Lcom/yf/smart/weloopx/android/ui/activities/am;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/am;->a:Lcom/yf/smart/weloopx/android/ui/activities/al;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/al;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/an;->c:Lcom/yf/smart/weloopx/android/ui/activities/am;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/am;->a:Lcom/yf/smart/weloopx/android/ui/activities/al;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/al;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/an;->c:Lcom/yf/smart/weloopx/android/ui/activities/am;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/am;->a:Lcom/yf/smart/weloopx/android/ui/activities/al;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/al;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v2, 0x7f070211

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->m(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->l(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V

    .line 1120
    :cond_0
    :goto_0
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v0

    const/16 v1, 0x13

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/client/d;->a(I[Ljava/lang/Object;)V

    .line 1121
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/an;->c:Lcom/yf/smart/weloopx/android/ui/activities/am;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/am;->a:Lcom/yf/smart/weloopx/android/ui/activities/al;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/al;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->F(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    .line 1122
    return-void

    .line 1116
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/an;->c:Lcom/yf/smart/weloopx/android/ui/activities/am;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/am;->a:Lcom/yf/smart/weloopx/android/ui/activities/al;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/al;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/an;->c:Lcom/yf/smart/weloopx/android/ui/activities/am;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/am;->a:Lcom/yf/smart/weloopx/android/ui/activities/al;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/al;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/an;->c:Lcom/yf/smart/weloopx/android/ui/activities/am;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/am;->a:Lcom/yf/smart/weloopx/android/ui/activities/al;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/al;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v2, 0x7f070241

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->n(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->m(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V

    goto :goto_0
.end method
