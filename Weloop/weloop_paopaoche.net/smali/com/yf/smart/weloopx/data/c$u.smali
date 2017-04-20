.class public final Lcom/yf/smart/weloopx/data/c$u;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/data/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "u"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 889
    const-string v0, "create table RunningTrainingTable (userId varchar(10),runid varchar(10),happendate varchar(22),distance  varchar(5),ps varchar(5),time varchar(5),gjflag varchar(1),url varchar(100),startTime varchar(25),endTime varchar(25))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 901
    return-void
.end method
