.class Lcom/yf/smart/weloopx/android/ui/activities/ao;
.super Lcom/yf/smart/weloopx/android/ui/activities/z$b;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 1

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ao;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z$b;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/smart/weloopx/android/ui/activities/aa;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/CompoundButton;Z)V
    .locals 6

    .prologue
    .line 1136
    if-eqz p2, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ao;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "openMotionDisplayTommy2"

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ao;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v3, 0x7f070171

    invoke-static {v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/z;->o(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/ao;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v4, 0x7f070126

    invoke-static {v3, v4}, Lcom/yf/smart/weloopx/android/ui/activities/z;->p(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/ao;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v5, 0x7f070129

    invoke-static {v4, v5}, Lcom/yf/smart/weloopx/android/ui/activities/z;->q(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f03004a

    invoke-static/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1142
    :goto_0
    return-void

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ao;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ao;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v2, 0x7f070253

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->r(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->i(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ao;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0, p2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Lcom/yf/smart/weloopx/android/ui/activities/z;Z)V

    goto :goto_0
.end method
