.class Lcom/yf/smart/weloopx/android/ui/activities/du;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/du;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/du;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    .line 166
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/du;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/aq;->a(Landroid/app/FragmentManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/du;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/as;->a(Landroid/app/FragmentManager;Z)Z

    .line 169
    :cond_0
    return-void
.end method
