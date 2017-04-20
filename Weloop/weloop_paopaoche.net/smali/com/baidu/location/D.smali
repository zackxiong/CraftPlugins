.class Lcom/baidu/location/D;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/D$1;,
        Lcom/baidu/location/D$b;,
        Lcom/baidu/location/D$a;
    }
.end annotation


# static fields
.field private static aa:Lcom/baidu/location/D;


# instance fields
.field private final Y:J

.field private final Z:J

.field private final a:J

.field private ab:Landroid/net/wifi/WifiManager;

.field private ac:Lcom/baidu/location/D$a;

.field private ad:Lcom/baidu/location/D$b;

.field private ae:J

.field private af:J

.field private ag:Z

.field private ah:Ljava/lang/Object;

.field private ai:Ljava/lang/reflect/Method;

.field private aj:Z

.field private ak:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/D;->aa:Lcom/baidu/location/D;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const-wide/16 v0, 0xbb8

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/baidu/location/D;->a:J

    iput-wide v0, p0, Lcom/baidu/location/D;->Y:J

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/baidu/location/D;->Z:J

    iput-object v2, p0, Lcom/baidu/location/D;->ab:Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/baidu/location/D;->ac:Lcom/baidu/location/D$a;

    iput-object v2, p0, Lcom/baidu/location/D;->ad:Lcom/baidu/location/D$b;

    iput-wide v4, p0, Lcom/baidu/location/D;->ae:J

    iput-wide v4, p0, Lcom/baidu/location/D;->af:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/D;->ag:Z

    iput-object v2, p0, Lcom/baidu/location/D;->ah:Ljava/lang/Object;

    iput-object v2, p0, Lcom/baidu/location/D;->ai:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/D;->aj:Z

    iput-wide v4, p0, Lcom/baidu/location/D;->ak:J

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/D;J)J
    .locals 1

    iput-wide p1, p0, Lcom/baidu/location/D;->ak:J

    return-wide p1
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/D;->ab:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/D;->ab:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Lcom/baidu/location/D$b;

    iget-wide v2, p0, Lcom/baidu/location/D;->ae:J

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/baidu/location/D$b;-><init>(Lcom/baidu/location/D;Ljava/util/List;J)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/baidu/location/D;->ae:J

    iget-object v0, p0, Lcom/baidu/location/D;->ad:Lcom/baidu/location/D$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/D;->ad:Lcom/baidu/location/D$b;

    invoke-virtual {v1, v0}, Lcom/baidu/location/D$b;->if(Lcom/baidu/location/D$b;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iput-object v1, p0, Lcom/baidu/location/D;->ad:Lcom/baidu/location/D$b;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/location/D;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/D;->a()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/D;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/location/D;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "wpa|wep"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/baidu/location/D;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/D;->ak:J

    return-wide v0
.end method

.method public static cq()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public static cs()Lcom/baidu/location/D;
    .locals 1

    sget-object v0, Lcom/baidu/location/D;->aa:Lcom/baidu/location/D;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/D;

    invoke-direct {v0}, Lcom/baidu/location/D;-><init>()V

    sput-object v0, Lcom/baidu/location/D;->aa:Lcom/baidu/location/D;

    :cond_0
    sget-object v0, Lcom/baidu/location/D;->aa:Lcom/baidu/location/D;

    return-object v0
.end method

.method public static if(Lcom/baidu/location/D$b;Lcom/baidu/location/D$b;)D
    .locals 13

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-wide v0, v2

    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    iget-object v7, p0, Lcom/baidu/location/D$b;->for:Ljava/util/List;

    iget-object v8, p1, Lcom/baidu/location/D$b;->for:Ljava/util/List;

    if-eq v7, v8, :cond_1

    if-eqz v7, :cond_3

    if-nez v8, :cond_4

    :cond_3
    move-wide v0, v2

    goto :goto_0

    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    add-int v4, v9, v10

    int-to-float v11, v4

    if-nez v9, :cond_5

    if-eqz v10, :cond_1

    :cond_5
    if-eqz v9, :cond_6

    if-nez v10, :cond_7

    :cond_6
    move-wide v0, v2

    goto :goto_0

    :cond_7
    move v6, v5

    move v1, v5

    :goto_1
    if-ge v6, v9, :cond_a

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v12, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v12, :cond_8

    move v0, v1

    :goto_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v0

    goto :goto_1

    :cond_8
    move v4, v5

    :goto_3
    if-ge v4, v10, :cond_c

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    cmpg-float v0, v11, v0

    if-gtz v0, :cond_b

    move-wide v0, v2

    goto :goto_0

    :cond_b
    int-to-double v0, v1

    float-to-double v2, v11

    div-double/2addr v0, v2

    goto :goto_0

    :cond_c
    move v0, v1

    goto :goto_2
.end method

.method public static if(Lcom/baidu/location/D$b;Lcom/baidu/location/D$b;F)Z
    .locals 12

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    iget-object v6, p0, Lcom/baidu/location/D$b;->for:Ljava/util/List;

    iget-object v7, p1, Lcom/baidu/location/D$b;->for:Ljava/util/List;

    if-ne v6, v7, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    if-nez v7, :cond_4

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int v0, v8, v9

    int-to-float v10, v0

    if-nez v8, :cond_5

    if-nez v9, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    if-eqz v8, :cond_6

    if-nez v9, :cond_7

    :cond_6
    move v0, v3

    goto :goto_0

    :cond_7
    move v5, v3

    move v1, v3

    :goto_1
    if-ge v5, v8, :cond_a

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v11, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v11, :cond_8

    move v0, v1

    :goto_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_1

    :cond_8
    move v4, v3

    :goto_3
    if-ge v4, v9, :cond_c

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_a
    mul-int/lit8 v0, v1, 0x2

    int-to-float v0, v0

    mul-float v1, v10, p2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_b

    move v0, v2

    goto :goto_0

    :cond_b
    move v0, v3

    goto :goto_0

    :cond_c
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public cA()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/location/D;->ab:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "000000000000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public cB()Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/location/D;->ab:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/baidu/location/D;->ab:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/baidu/location/D;->ai:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/location/D;->ah:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/baidu/location/D;->ai:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/baidu/location/D;->ah:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/baidu/location/D;->aj:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/D;->ae:J

    move v0, v1

    :goto_1
    return v0

    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/baidu/location/D;->ab:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/baidu/location/D;->ab:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/D;->ae:J

    move v0, v1

    goto :goto_1

    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/baidu/location/D;->ab:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/baidu/location/D;->ae:J
    :try_end_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1
.end method

.method public cn()Lcom/baidu/location/D$b;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/D;->ad:Lcom/baidu/location/D$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/D;->ad:Lcom/baidu/location/D$b;

    invoke-virtual {v0}, Lcom/baidu/location/D$b;->for()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/location/D;->cu()Lcom/baidu/location/D$b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/D;->ad:Lcom/baidu/location/D$b;

    goto :goto_0
.end method

.method public declared-synchronized co()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/D;->ag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/D;->ac:Lcom/baidu/location/D$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/D;->ak:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/baidu/location/D;->ac:Lcom/baidu/location/D$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/D;->ab:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/D;->ag:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public cp()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/D;->ab:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/D;->ab:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public ct()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/D;->ab:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/D;->ae:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/location/D;->cB()Z

    move-result v0

    goto :goto_0
.end method

.method public cu()Lcom/baidu/location/D$b;
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/baidu/location/D;->ab:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/baidu/location/D$b;

    iget-object v1, p0, Lcom/baidu/location/D;->ab:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/baidu/location/D$b;-><init>(Lcom/baidu/location/D;Ljava/util/List;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    new-instance v0, Lcom/baidu/location/D$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/baidu/location/D$b;-><init>(Lcom/baidu/location/D;Ljava/util/List;J)V

    goto :goto_0
.end method

.method public cv()Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/D;->ab:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/baidu/location/D;->ab:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cw()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/D;->ab:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public cx()Lcom/baidu/location/D$b;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/D;->ad:Lcom/baidu/location/D$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/D;->ad:Lcom/baidu/location/D$b;

    invoke-virtual {v0}, Lcom/baidu/location/D$b;->new()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/location/D;->cu()Lcom/baidu/location/D$b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/D;->ad:Lcom/baidu/location/D$b;

    goto :goto_0
.end method

.method public declared-synchronized cy()V
    .locals 4

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/D;->ag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/baidu/location/n;->gR:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/location/D;->ab:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/baidu/location/D$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/D$a;-><init>(Lcom/baidu/location/D;Lcom/baidu/location/D$1;)V

    iput-object v0, p0, Lcom/baidu/location/D;->ac:Lcom/baidu/location/D$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/D;->ac:Lcom/baidu/location/D$a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/baidu/location/D;->ag:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v0, "android.net.wifi.WifiManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mService"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/baidu/location/D;->ab:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/D;->ah:Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/location/D;->ah:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public cz()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/D;->af:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-wide v0, p0, Lcom/baidu/location/D;->af:J

    invoke-virtual {p0}, Lcom/baidu/location/D;->ct()Z

    move-result v0

    goto :goto_0
.end method
