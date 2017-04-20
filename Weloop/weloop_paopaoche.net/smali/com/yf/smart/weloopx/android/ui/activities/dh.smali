.class Lcom/yf/smart/weloopx/android/ui/activities/dh;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dh;->a:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dh;->a:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->j()V

    .line 275
    return-void
.end method
