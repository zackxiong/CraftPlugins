.class public final Lcom/yf/smart/weloopx/data/c$c;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/data/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 509
    const-string v0, "create table AlarmTable (ALARM_ID varchar(50),ALARM_HOUR varchar(50),ALARM_MIN varchar(50),ALARM_MSG varchar(50),ALARM_STATE varchar(50),ALARM_REPEAT varchar(50),ALARM_TIME varchar(50))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 518
    return-void
.end method
