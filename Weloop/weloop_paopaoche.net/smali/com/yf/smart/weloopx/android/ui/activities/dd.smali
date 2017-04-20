.class Lcom/yf/smart/weloopx/android/ui/activities/dd;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/e$e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/e$e",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dd;->a:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/handmark/pulltorefresh/library/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/e",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dd;->a:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dd;->a:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;Z)V

    .line 148
    :cond_0
    return-void
.end method
