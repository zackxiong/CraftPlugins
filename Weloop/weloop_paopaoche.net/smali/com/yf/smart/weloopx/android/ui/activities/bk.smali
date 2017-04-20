.class Lcom/yf/smart/weloopx/android/ui/activities/bk;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 0

    .prologue
    .line 1728
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bk;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bk;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "ignore_device"

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/bk;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v3, 0x7f070128

    invoke-static {v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/z;->O(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03004d

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 1735
    return-void
.end method
