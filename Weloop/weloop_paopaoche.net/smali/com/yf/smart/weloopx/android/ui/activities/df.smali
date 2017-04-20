.class Lcom/yf/smart/weloopx/android/ui/activities/df;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/de;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/de;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/df;->a:Lcom/yf/smart/weloopx/android/ui/activities/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/df;->a:Lcom/yf/smart/weloopx/android/ui/activities/de;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/de;->b:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/df;->a:Lcom/yf/smart/weloopx/android/ui/activities/de;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/de;->b:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "FriendSearchActivity"

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 208
    return-void
.end method
