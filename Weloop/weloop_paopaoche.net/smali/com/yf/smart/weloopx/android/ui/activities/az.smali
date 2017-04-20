.class Lcom/yf/smart/weloopx/android/ui/activities/az;
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
    .line 1251
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/az;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 1254
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1267
    :goto_0
    return-void

    .line 1256
    :sswitch_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/az;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/cc;->a(Landroid/app/FragmentManager;B)V

    .line 1257
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/az;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/client/d;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Lcom/yf/gattlib/client/d;->a(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1260
    :sswitch_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/az;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/cc;->a(Landroid/app/FragmentManager;B)V

    .line 1261
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/az;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/client/d;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Lcom/yf/gattlib/client/d;->a(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1264
    :sswitch_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/az;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->L(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    goto :goto_0

    .line 1254
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d01f9 -> :sswitch_2
        0x7f0d01fd -> :sswitch_0
        0x7f0d01ff -> :sswitch_1
    .end sparse-switch
.end method
