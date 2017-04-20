.class public final Lcom/yf/smart/weloopx/data/c$x;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/data/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "x"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 962
    const-string v0, "create table SyncdataAndOTAStatisticsTable (id INTEGER PRIMARY KEY autoincrement,syncDataSize integer,syncDataDuration integer,happenDate varchar(15),happenTime varchar(25),otaSize  integer,otaDuration  integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 971
    return-void
.end method
