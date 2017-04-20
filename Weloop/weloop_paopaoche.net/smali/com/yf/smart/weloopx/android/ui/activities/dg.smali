.class Lcom/yf/smart/weloopx/android/ui/activities/dg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;I)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dg;->b:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/dg;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FriendSearchActivity \u5c06\u8981\u663e\u793a\u7684\u6570\u636e\u7684\u5927\u5c0f  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dg;->b:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dg;->b:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/a/i;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/dg;->b:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/dg;->b:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yf/smart/weloopx/android/ui/a/i;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;Lcom/yf/smart/weloopx/android/ui/a/i;)Lcom/yf/smart/weloopx/android/ui/a/i;

    .line 261
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dg;->b:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dg;->b:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;)Lcom/yf/smart/weloopx/android/ui/a/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 262
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dg;->b:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dg;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 264
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dg;->b:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;)V

    .line 265
    return-void
.end method
