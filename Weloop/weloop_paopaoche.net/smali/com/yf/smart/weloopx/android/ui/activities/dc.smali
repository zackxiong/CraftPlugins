.class Lcom/yf/smart/weloopx/android/ui/activities/dc;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/dc;->a:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dc;->a:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dc;->a:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 135
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/dc;->a:Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/FriendSearchActivity;I)V

    .line 137
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 123
    return-void
.end method
