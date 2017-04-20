.class Lcom/yf/smart/weloopx/android/ui/activities/bu;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/yf/smart/weloopx/android/ui/activities/bt;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/bt;II)V
    .locals 0

    .prologue
    .line 1984
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bu;->c:Lcom/yf/smart/weloopx/android/ui/activities/bt;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/bu;->a:I

    iput p3, p0, Lcom/yf/smart/weloopx/android/ui/activities/bu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1987
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bu;->a:I

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bu;->b:I

    invoke-static {v0, v1}, Lcom/yf/gattlib/client/b/a/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1989
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bu;->c:Lcom/yf/smart/weloopx/android/ui/activities/bt;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/bt;->b:Lcom/yf/smart/weloopx/android/ui/activities/bs;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/bs;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/client/d;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bu;->c:Lcom/yf/smart/weloopx/android/ui/activities/bt;

    iget-byte v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/bt;->a:B

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/d;->d(B)V

    .line 1990
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bu;->c:Lcom/yf/smart/weloopx/android/ui/activities/bt;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/bt;->b:Lcom/yf/smart/weloopx/android/ui/activities/bs;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/bs;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bu;->c:Lcom/yf/smart/weloopx/android/ui/activities/bt;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/bt;->b:Lcom/yf/smart/weloopx/android/ui/activities/bs;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/bs;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v2, 0x7f070211

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->Q(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->u(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V

    .line 1994
    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bu;->c:Lcom/yf/smart/weloopx/android/ui/activities/bt;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/bt;->b:Lcom/yf/smart/weloopx/android/ui/activities/bs;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/bs;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/client/d;

    move-result-object v0

    const/16 v1, 0x14

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/client/d;->a(I[Ljava/lang/Object;)V

    .line 1995
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bu;->c:Lcom/yf/smart/weloopx/android/ui/activities/bt;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/bt;->b:Lcom/yf/smart/weloopx/android/ui/activities/bs;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/bs;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->F(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    .line 1996
    return-void

    .line 1992
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bu;->c:Lcom/yf/smart/weloopx/android/ui/activities/bt;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/bt;->b:Lcom/yf/smart/weloopx/android/ui/activities/bs;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/bs;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bu;->c:Lcom/yf/smart/weloopx/android/ui/activities/bt;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/bt;->b:Lcom/yf/smart/weloopx/android/ui/activities/bs;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/bs;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v2, 0x7f070242

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->R(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->v(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V

    goto :goto_0
.end method
