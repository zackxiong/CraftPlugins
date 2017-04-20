.class Lcom/yf/smart/weloopx/android/ui/activities/ar;
.super Lcom/yf/smart/weloopx/android/ui/activities/z$b;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 1

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ar;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z$b;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/smart/weloopx/android/ui/activities/aa;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/CompoundButton;Z)V
    .locals 6

    .prologue
    .line 1188
    if-eqz p2, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ar;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "openAntLost"

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ar;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v3, 0x7f07004a

    invoke-static {v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/z;->u(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/ar;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v4, 0x7f07018e

    invoke-static {v3, v4}, Lcom/yf/smart/weloopx/android/ui/activities/z;->v(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/ar;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v5, 0x7f070194

    invoke-static {v4, v5}, Lcom/yf/smart/weloopx/android/ui/activities/z;->w(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f03004a

    invoke-static/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1214
    :goto_0
    return-void

    .line 1192
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ar;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ar;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v2, 0x7f070253

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->x(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->i(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V

    .line 1193
    new-instance v0, Lcom/yf/gattlib/client/b/am;

    invoke-direct {v0, p2}, Lcom/yf/gattlib/client/b/am;-><init>(Z)V

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/as;

    invoke-direct {v1, p0, p2}, Lcom/yf/smart/weloopx/android/ui/activities/as;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/ar;Z)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/b/am;->b(Lcom/yf/gattlib/client/b/a/c;)Lcom/yf/gattlib/client/b/e;

    goto :goto_0
.end method
