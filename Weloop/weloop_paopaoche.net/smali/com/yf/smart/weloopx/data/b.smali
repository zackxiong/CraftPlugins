.class public Lcom/yf/smart/weloopx/data/b;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/ContentResolver;

.field private c:Landroid/net/Uri;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "ApplyFriendsDBUtil"

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/b;->a:Ljava/lang/String;

    .line 18
    const-string v0, "content://com.yf.smart.weloopx.data.WeLoopProvider/ApplyAddFriendTable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/b;->c:Landroid/net/Uri;

    .line 23
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/b;->d:Landroid/content/Context;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/b;->b:Landroid/content/ContentResolver;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lcom/yf/smart/weloopx/data/models/ApplyFriendModel;)V
    .locals 5

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/ApplyFriendModel;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/ApplyFriendModel;->getBeApplyUserId()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/ApplyFriendModel;->getMyUserId()Ljava/lang/String;

    move-result-object v2

    .line 87
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 88
    const-string v4, "ACCOUNT"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "APPLY_FRIENDS"

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "MY_USER_ID"

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/b;->b:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/b;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 95
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    iget-object v2, p0, Lcom/yf/smart/weloopx/data/b;->b:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/yf/smart/weloopx/data/b;->c:Landroid/net/Uri;

    const-string v4, "APPLY_FRIENDS = ? OR MY_USER_ID = ? "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v1

    aput-object p1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
