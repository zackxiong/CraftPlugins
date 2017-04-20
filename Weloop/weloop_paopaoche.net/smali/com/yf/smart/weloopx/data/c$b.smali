.class public final Lcom/yf/smart/weloopx/data/c$b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/data/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 207
    const-string v0, "create table activity (id INTEGER PRIMARY KEY autoincrement,account  varchar(50),start_time varchar(30),end_time varchar(30),type integer,sub_type integer,step_count integer,calorie double,distance double,sleep_score double,activity_time integer,non_activity_time integer,speed double,deep_sleep_time integer,shallow_sleep_time integer,wake_time integer,wake_count integer,happen_date varchar(30),bong_value varchar(2000),HD_RATIO varchar(3),JZ_RATIO varchar(3))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 233
    const-string v0, "ALTER TABLE activity ADD bong_value varchar(2000)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 234
    const-string v0, "ALTER TABLE activity ADD HD_RATIO varchar(3)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 235
    const-string v0, "ALTER TABLE activity ADD JZ_RATIO varchar(3)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 236
    return-void
.end method
