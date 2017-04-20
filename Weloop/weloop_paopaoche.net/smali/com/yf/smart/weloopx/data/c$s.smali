.class public final Lcom/yf/smart/weloopx/data/c$s;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/data/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "s"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 536
    const-string v0, "create table RemindersTable (REMINDER_ID INTEGER PRIMARY KEY autoincrement,REMINDER_YEAR varchar(50),REMINDER_MONTH varchar(50),REMINDER_DAY varchar(50),REMINDER_HOUR varchar(50),REMINDER_MIN varchar(50),REMINDER_TIME varchar(50),REMINDER_DATE_TIME varchar(50),REMINDER_MSG varchar(50))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 547
    return-void
.end method
