.class Lcom/yf/smart/weloopx/android/ui/activities/bf;
.super Lcom/yf/smart/weloopx/android/ui/activities/z$c;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 1

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bf;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z$c;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/smart/weloopx/android/ui/activities/aa;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bf;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "recover"

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/bf;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v3, 0x7f0701d8

    invoke-static {v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/z;->K(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/bf;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v4, 0x7f07018e

    invoke-static {v3, v4}, Lcom/yf/smart/weloopx/android/ui/activities/z;->L(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/bf;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v5, 0x7f0701d9

    invoke-static {v4, v5}, Lcom/yf/smart/weloopx/android/ui/activities/z;->M(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f03004d

    invoke-static/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1345
    return-void
.end method
