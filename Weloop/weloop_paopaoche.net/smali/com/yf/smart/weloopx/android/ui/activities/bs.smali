.class Lcom/yf/smart/weloopx/android/ui/activities/bs;
.super Lcom/yf/smart/weloopx/android/ui/activities/z$b;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 1

    .prologue
    .line 1969
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bs;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z$b;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/smart/weloopx/android/ui/activities/aa;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bs;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/client/d;

    .line 1977
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bs;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bs;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v2, 0x7f070253

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->P(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->i(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V

    .line 1978
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bs;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->Y(Lcom/yf/smart/weloopx/android/ui/activities/z;)B

    move-result v0

    .line 1979
    :goto_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bs;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    new-instance v1, Lcom/yf/gattlib/client/b/ar;

    invoke-direct {v1, v0}, Lcom/yf/gattlib/client/b/ar;-><init>(B)V

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/activities/bt;

    invoke-direct {v2, p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/bt;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/bs;B)V

    invoke-virtual {v1, v2}, Lcom/yf/gattlib/client/b/ar;->b(Lcom/yf/gattlib/client/b/a/c;)Lcom/yf/gattlib/client/b/e;

    .line 2001
    return-void

    .line 1978
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
