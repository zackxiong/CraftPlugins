.class public final Lcom/yf/smart/weloopx/data/c$w;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/data/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "w"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 825
    const-string v0, "create table StatisticsTable (PHONE_MODEL varchar(10),PHONE_NUM varchar(13),PHONE_SYSTEM_VERSION varchar(10),DEVICE_ID varchar(30),APP_VERSION varchar(10),DEVICE_FIRME_VERSION varchar(30),DEVICE_CONNCTED_TIMES varchar(4),DEVICE_DISCONNECTED_TIMES varchar(4),PUSH_MSG_NUM varchar(6),SYNC_DATA_NUM varchar(3),HAPPEN_DATE varchar(20),IS_SUBMIT varchar(1))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 839
    return-void
.end method
