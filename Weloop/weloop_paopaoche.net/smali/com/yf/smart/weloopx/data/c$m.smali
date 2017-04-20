.class public final Lcom/yf/smart/weloopx/data/c$m;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/data/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 570
    const-string v0, "LocationTable"

    invoke-static {p1, v0}, Lcom/yf/smart/weloopx/data/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    const-string v0, "create table LocationTable (LOCATION_ID INTEGER PRIMARY KEY autoincrement,LABEL_ID varchar(50),LOCATION_DATE varchar(50),LOCATION_TIME varchar(50),LOCATION_LATITUDE varchar(50),LOCATION_LONGITUTE varchar(50),LOCATION_ALTITUTE varchar(50),LOCATION_DIRECTION varchar(50),LOCATION_SPEED varchar(50),LOCATION_DEVICE_ID varchar(50),LOCATION_USER_ID varchar(50),LOCATION_IS_SUBMIT varchar(50),LOCATION_LOCATION_INFO varchar(50))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 587
    :cond_0
    return-void
.end method
