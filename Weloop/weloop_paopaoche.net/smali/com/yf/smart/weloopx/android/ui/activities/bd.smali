.class Lcom/yf/smart/weloopx/android/ui/activities/bd;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 0

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bd;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bd;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "disconnect"

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/bd;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v3, 0x7f0700ce

    invoke-static {v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/z;->H(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/bd;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v4, 0x7f07018e

    invoke-static {v3, v4}, Lcom/yf/smart/weloopx/android/ui/activities/z;->I(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/bd;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v5, 0x7f0700cc

    invoke-static {v4, v5}, Lcom/yf/smart/weloopx/android/ui/activities/z;->J(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f03004d

    invoke-static/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1325
    return-void
.end method
