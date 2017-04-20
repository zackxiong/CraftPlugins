.class Lcom/yf/smart/weloopx/android/ui/activities/aj;
.super Lcom/yf/smart/weloopx/android/ui/activities/z$c;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 1

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/aj;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z$c;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/smart/weloopx/android/ui/activities/aa;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/aj;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ce;->a(Landroid/app/FragmentManager;)V

    .line 1084
    return-void
.end method
