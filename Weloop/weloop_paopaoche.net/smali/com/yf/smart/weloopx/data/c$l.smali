.class public final Lcom/yf/smart/weloopx/data/c$l;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/data/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 606
    const-string v0, "DBKeys 1. \u5f00\u59cb\u521b\u5efa\u8f68\u8ff9\u65b0\u8868"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 607
    const-string v0, "LocationNewTable"

    invoke-static {p1, v0}, Lcom/yf/smart/weloopx/data/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    const-string v0, "DBKeys 2. \u6267\u884c\u521b\u5efa\u8f68\u8ff9\u65b0\u8868"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 609
    const-string v0, "create table LocationNewTable (LOCATION_ID INTEGER PRIMARY KEY autoincrement,LOCATION_DATE varchar(10),LOCATION_TIME varchar(22),LOCATION_DEVICE_ID varchar(10),LOCATION_USER_ID varchar(50),LOCATION_IS_SUBMIT varchar(1),LOCATION_LOCATION_INFO varchar(50),LOCATION_RADIUS varchar(5),LOCATION_SPEED varchar(5))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 623
    :goto_0
    return-void

    .line 621
    :cond_0
    const-string v0, "DBKeys \u5df2\u7ecf\u5b58\u5728\u8f68\u8ff9\u65b0\u8868"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 626
    const-string v0, "LocationNewTable"

    const-string v1, "LOCATION_RADIUS"

    invoke-static {p1, v0, v1}, Lcom/yf/smart/weloopx/data/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    const-string v0, "ALTER TABLE LocationNewTable ADD LOCATION_RADIUS varchar(5)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 628
    :cond_0
    const-string v0, "LocationNewTable"

    const-string v1, "LOCATION_SPEED"

    invoke-static {p1, v0, v1}, Lcom/yf/smart/weloopx/data/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 629
    const-string v0, "ALTER TABLE LocationNewTable ADD LOCATION_SPEED varchar(5)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 630
    :cond_1
    return-void
.end method
