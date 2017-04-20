.class public Lcom/yf/smart/weloopx/data/c$y;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/data/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "y"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 112
    const-string v0, "create table user (id INTEGER PRIMARY KEY autoincrement,account  varchar(50),nickname varchar(50),sex integer,height integer,weight integer,birthday integer,target integer,lon  double,lat  double,head_pic  varchar(100),access_token  varchar(100),privacy_flag integer,bind_to_bong integer,register_date  varchar(30),bind_device varchar(30),userId varchar(30),OPEN_ID varchar(50),AUTH_TYPE varchar(1))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 136
    const-string v0, "user"

    const-string v1, "userId"

    invoke-static {p1, v0, v1}, Lcom/yf/smart/weloopx/data/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const-string v0, "ALTER TABLE user ADD userId varchar(30)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    :cond_0
    const-string v0, "user"

    const-string v1, "OPEN_ID"

    invoke-static {p1, v0, v1}, Lcom/yf/smart/weloopx/data/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    const-string v0, "ALTER TABLE user ADD OPEN_ID varchar(30)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    :cond_1
    const-string v0, "user"

    const-string v1, "AUTH_TYPE"

    invoke-static {p1, v0, v1}, Lcom/yf/smart/weloopx/data/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 141
    const-string v0, "ALTER TABLE user ADD AUTH_TYPE varchar(30)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 142
    :cond_2
    return-void
.end method
