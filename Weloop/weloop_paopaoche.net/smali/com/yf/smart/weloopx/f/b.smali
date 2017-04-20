.class public Lcom/yf/smart/weloopx/f/b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/f/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/yf/smart/weloopx/data/l;

.field private c:Landroid/content/Context;

.field private d:Lcom/yf/smart/weloopx/data/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "StatisticalInfoUploadNetUtil"

    iput-object v0, p0, Lcom/yf/smart/weloopx/f/b;->a:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/yf/smart/weloopx/f/b;->c:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/yf/smart/weloopx/data/l;

    invoke-direct {v0, p1}, Lcom/yf/smart/weloopx/data/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/f/b;->b:Lcom/yf/smart/weloopx/data/l;

    .line 49
    new-instance v0, Lcom/yf/smart/weloopx/data/m;

    invoke-direct {v0, p1}, Lcom/yf/smart/weloopx/data/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/f/b;->d:Lcom/yf/smart/weloopx/data/m;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/f/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/f/b;)Lcom/yf/smart/weloopx/data/l;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/b;->b:Lcom/yf/smart/weloopx/data/l;

    return-object v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/f/b;)Lcom/yf/smart/weloopx/data/m;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/b;->d:Lcom/yf/smart/weloopx/data/m;

    return-object v0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/f/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/b;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yf/smart/weloopx/f/b$a;Z)V
    .locals 9

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/b;->b:Lcom/yf/smart/weloopx/data/l;

    invoke-virtual {v0, p2}, Lcom/yf/smart/weloopx/data/l;->a(Z)Ljava/util/List;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 61
    if-nez v2, :cond_1

    .line 141
    :cond_0
    return-void

    .line 66
    :cond_1
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yf/smart/weloopx/b/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;

    .line 69
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getHAPPEN_DATE()Ljava/lang/String;

    move-result-object v5

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/yf/smart/weloopx/f/b;->d:Lcom/yf/smart/weloopx/data/m;

    invoke-virtual {v1, v5}, Lcom/yf/smart/weloopx/data/m;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 74
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/SyncAndOTAStatisticalModel;

    .line 75
    iget-object v8, v1, Lcom/yf/smart/weloopx/data/models/SyncAndOTAStatisticalModel;->happenDate:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v8, v1, Lcom/yf/smart/weloopx/data/models/SyncAndOTAStatisticalModel;->syncDataSize:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v8, v1, Lcom/yf/smart/weloopx/data/models/SyncAndOTAStatisticalModel;->syncDataDuration:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v8, v1, Lcom/yf/smart/weloopx/data/models/SyncAndOTAStatisticalModel;->otaSize:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget v1, v1, Lcom/yf/smart/weloopx/data/models/SyncAndOTAStatisticalModel;->otaDuration:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, "|"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 88
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/yf/smart/weloopx/f/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " \u83b7\u5f97\u7684\u6240\u6709\u672a\u4e0a\u4f20\u7684\u7edf\u8ba1\u4fe1\u606f\u6570\u91cf = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", \u7528\u6237id = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", deviceId = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getDEVICE_ID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", \u56fa\u4ef6\u7248\u672c = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getDEVICE_FIRME_VERSION()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", \u65e5\u671f = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " \u5c06\u8981\u4e0a\u4f20\u7684\u7edf\u8ba1\u7684\u540c\u6b65\u65f6\u95f4\u548cOTA\u65f6\u95f4\u7684\u6570\u636e = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 91
    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 93
    new-instance v1, Lcom/b/a/d/d;

    invoke-direct {v1}, Lcom/b/a/d/d;-><init>()V

    .line 94
    const-string v7, "userId"

    invoke-virtual {v1, v7, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v7, "systemVersion"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getPHONE_SYSTEM_VERSION()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v7, "mobileModel"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getPHONE_MODEL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v7, "appVersion"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getAPP_VERSION()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v7, "bluetoothId"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getDEVICE_ID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v7, "firmwareVersion"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getDEVICE_FIRME_VERSION()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v7, "messageCount"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getPUSH_MSG_NUM()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v7, "reconnectionCount"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getDEVICE_CONNCTED_TIMES()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v7, "synchrodataCount"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getSYNC_DATA_NUM()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v7, "disconnectCount"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/StatisticalInfoModel;->getDEVICE_DISCONNECTED_TIMES()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "syncDataAndOTAInfo"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/b/a/b;

    invoke-direct {v0}, Lcom/b/a/b;-><init>()V

    .line 107
    sget-object v6, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yf/smart/weloopx/f/m;->F()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/yf/smart/weloopx/f/c;

    invoke-direct {v8, p0, p1, v5}, Lcom/yf/smart/weloopx/f/c;-><init>(Lcom/yf/smart/weloopx/f/b;Lcom/yf/smart/weloopx/f/b$a;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7, v1, v8}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    goto/16 :goto_0
.end method
