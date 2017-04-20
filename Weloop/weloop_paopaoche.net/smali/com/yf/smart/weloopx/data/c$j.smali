.class public final Lcom/yf/smart/weloopx/data/c$j;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/data/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 761
    const-string v0, "create table FriendTable (FRIEND_PHOTO varchar(50),FRIEND_NAME varchar(30),FRIEND_ID varchar(10),FRIEND_RANK varchar(3),FRIEND_CALORIES varchar(6),FRIEND_SEX varchar(1),FRIEND_RES_DATE varchar(25),ACCOUNT varchar(25),USER_ID varchar(10))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 772
    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 775
    const-string v0, "FriendTable"

    const-string v1, "ACCOUNT"

    invoke-static {p1, v0, v1}, Lcom/yf/smart/weloopx/data/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    const-string v0, "ALTER TABLE FriendTable ADD ACCOUNT varchar(25)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 777
    :cond_0
    const-string v0, "FriendTable"

    const-string v1, "USER_ID"

    invoke-static {p1, v0, v1}, Lcom/yf/smart/weloopx/data/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 778
    const-string v0, "ALTER TABLE FriendTable ADD USER_ID varchar(10)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 779
    :cond_1
    return-void
.end method
