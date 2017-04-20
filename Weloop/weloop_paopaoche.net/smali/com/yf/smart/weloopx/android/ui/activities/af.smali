.class Lcom/yf/smart/weloopx/android/ui/activities/af;
.super Lcom/yf/smart/weloopx/android/ui/activities/z$b;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 1

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/af;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z$b;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/smart/weloopx/android/ui/activities/aa;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    .line 1046
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v0

    .line 1047
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/af;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/af;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v3, 0x7f070253

    invoke-static {v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/z;->i(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->i(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V

    .line 1048
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/af;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->K(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/c/s;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->k()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/c/s;->a(B)V

    .line 1049
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/af;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->K(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/c/s;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/yf/smart/weloopx/c/s;->a(Z)V

    .line 1050
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/af;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->K(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/c/s;

    move-result-object v1

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/activities/ag;

    invoke-direct {v2, p0, v0, p2}, Lcom/yf/smart/weloopx/android/ui/activities/ag;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/af;Lcom/yf/gattlib/client/d;Z)V

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/c/s;->a(Lcom/yf/smart/weloopx/c/s$b;)V

    .line 1076
    return-void
.end method
