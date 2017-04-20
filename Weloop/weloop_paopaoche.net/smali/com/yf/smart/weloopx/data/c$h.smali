.class public final Lcom/yf/smart/weloopx/data/c$h;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/data/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 253
    const-string v0, "create table daily_gain (id INTEGER PRIMARY KEY autoincrement,account varchar(50),step_count integer,distance double,calorie double,deep_sleep_time integer,sleep_time integer,sleep_count integer,still_time integer,calorie_goal double,active_point integer,happen_date varchar(30))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 267
    return-void
.end method
