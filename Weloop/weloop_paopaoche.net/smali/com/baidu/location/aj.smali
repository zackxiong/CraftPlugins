.class Lcom/baidu/location/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/aj$b;,
        Lcom/baidu/location/aj$a;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/location/aj;

.field private static ac:Ljava/lang/String;

.field private static af:Ljava/lang/reflect/Method;

.field private static ag:Ljava/lang/reflect/Method;

.field private static ah:Ljava/lang/reflect/Method;

.field private static ai:Ljava/lang/reflect/Method;

.field private static aj:Ljava/lang/reflect/Method;

.field private static ak:Ljava/lang/Class;

.field private static al:J

.field private static am:I

.field private static an:Z


# instance fields
.field private Y:Landroid/telephony/TelephonyManager;

.field private Z:Lcom/baidu/location/aj$a;

.field private aa:Lcom/baidu/location/aj$a;

.field private ab:Ljava/util/List;

.field private ad:Lcom/baidu/location/aj$b;

.field private ae:Z

.field private ao:Z

.field private ap:I

.field private aq:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/aj;->a:Lcom/baidu/location/aj;

    sput-object v0, Lcom/baidu/location/aj;->ac:Ljava/lang/String;

    sput-object v0, Lcom/baidu/location/aj;->af:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/aj;->ag:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/aj;->ah:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/aj;->ai:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/aj;->aj:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/aj;->ak:Ljava/lang/Class;

    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/baidu/location/aj;->al:J

    const/4 v0, 0x3

    sput v0, Lcom/baidu/location/aj;->am:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/location/aj;->an:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/baidu/location/aj;->Y:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/baidu/location/aj$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/aj$a;-><init>(Lcom/baidu/location/aj;)V

    iput-object v0, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    iput-object v2, p0, Lcom/baidu/location/aj;->aa:Lcom/baidu/location/aj$a;

    iput-object v2, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    iput-object v2, p0, Lcom/baidu/location/aj;->ad:Lcom/baidu/location/aj$b;

    iput-boolean v1, p0, Lcom/baidu/location/aj;->ae:Z

    iput-boolean v1, p0, Lcom/baidu/location/aj;->ao:Z

    iput v1, p0, Lcom/baidu/location/aj;->ap:I

    iput v1, p0, Lcom/baidu/location/aj;->aq:I

    return-void
.end method

.method private a(I)I
    .locals 1

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method

.method static synthetic a(Lcom/baidu/location/aj;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/location/aj;->ap:I

    return p1
.end method

.method static synthetic a()J
    .locals 2

    sget-wide v0, Lcom/baidu/location/aj;->al:J

    return-wide v0
.end method

.method private a(Landroid/telephony/CellInfo;)Lcom/baidu/location/aj$a;
    .locals 7

    const/16 v6, 0x67

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v0, 0x11

    if-ge v2, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/baidu/location/aj$a;

    invoke-direct {v1, p0}, Lcom/baidu/location/aj$a;-><init>(Lcom/baidu/location/aj;)V

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cellinfo"

    const-string v3, "isRegistered"

    invoke-static {v0, v3}, Lcom/baidu/location/K;->do(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    instance-of v0, p1, Landroid/telephony/CellInfoGsm;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    const-string v3, "cellinfo"

    const-string v4, "CellInfoGsm"

    invoke-static {v3, v4}, Lcom/baidu/location/K;->do(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/aj;->a(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/location/aj$a;->byte:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/aj;->a(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/location/aj$a;->case:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/aj;->a(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/location/aj$a;->a:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/baidu/location/aj;->a(I)I

    move-result v0

    iput v0, v1, Lcom/baidu/location/aj$a;->for:I

    iput-char v6, v1, Lcom/baidu/location/aj$a;->new:C

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v0}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/aj$a;->int:I

    :cond_2
    :goto_1
    const/16 v0, 0x12

    if-lt v2, v0, :cond_3

    instance-of v0, p1, Landroid/telephony/CellInfoWcdma;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    const-string v2, "cellinfo"

    const-string v3, "CellInfoWcdma"

    invoke-static {v2, v3}, Lcom/baidu/location/K;->do(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/aj;->a(I)I

    move-result v2

    iput v2, v1, Lcom/baidu/location/aj$a;->byte:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/aj;->a(I)I

    move-result v2

    iput v2, v1, Lcom/baidu/location/aj$a;->case:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/aj;->a(I)I

    move-result v2

    iput v2, v1, Lcom/baidu/location/aj$a;->a:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/baidu/location/aj;->a(I)I

    move-result v0

    iput v0, v1, Lcom/baidu/location/aj$a;->for:I

    iput-char v6, v1, Lcom/baidu/location/aj$a;->new:C

    check-cast p1, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/aj$a;->int:I

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/location/aj$a;->if:J

    const-string v0, "cellinfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/baidu/location/aj$a;->byte:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/location/K;->do(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cellinfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mnc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/baidu/location/aj$a;->case:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/location/K;->do(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cellinfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lac = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/baidu/location/aj$a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/location/K;->do(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cellinfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/baidu/location/aj$a;->for:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/location/K;->do(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    instance-of v0, p1, Landroid/telephony/CellInfoCdma;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    const-string v3, "cellinfo"

    const-string v4, "CellInfoCdma"

    invoke-static {v3, v4}, Lcom/baidu/location/K;->do(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cellinfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/location/K;->do(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cellinfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lon = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/location/K;->do(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v3

    iput v3, v1, Lcom/baidu/location/aj$a;->char:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v3

    iput v3, v1, Lcom/baidu/location/aj$a;->do:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/aj;->a(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/location/aj$a;->case:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/aj;->a(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/location/aj$a;->a:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/baidu/location/aj;->a(I)I

    move-result v0

    iput v0, v1, Lcom/baidu/location/aj$a;->for:I

    const/16 v0, 0x63

    iput-char v0, v1, Lcom/baidu/location/aj$a;->new:C

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/aj$a;->int:I

    goto/16 :goto_1

    :cond_5
    instance-of v0, p1, Landroid/telephony/CellInfoLte;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoLte;

    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    const-string v3, "cellinfo"

    const-string v4, "CellInfoLte"

    invoke-static {v3, v4}, Lcom/baidu/location/K;->do(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/aj;->a(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/location/aj$a;->byte:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/aj;->a(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/location/aj$a;->case:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/aj;->a(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/location/aj$a;->a:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/baidu/location/aj;->a(I)I

    move-result v0

    iput v0, v1, Lcom/baidu/location/aj$a;->for:I

    iput-char v6, v1, Lcom/baidu/location/aj$a;->new:C

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoLte;

    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/aj$a;->int:I

    goto/16 :goto_1
.end method

.method private a(Landroid/telephony/CellLocation;)Lcom/baidu/location/aj$a;
    .locals 10

    const/4 v2, 0x0

    const v9, 0x7fffffff

    const/4 v8, 0x3

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/baidu/location/aj;->Y:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    sget-boolean v4, Lcom/baidu/location/aj;->an:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/baidu/location/aj;->Y:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/baidu/location/aj;->ac:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/location/aj;->d()Z

    move-result v4

    sput-boolean v4, Lcom/baidu/location/aj;->an:Z

    :cond_2
    new-instance v4, Lcom/baidu/location/aj$a;

    invoke-direct {v4, p0}, Lcom/baidu/location/aj$a;-><init>(Lcom/baidu/location/aj;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/baidu/location/aj$a;->if:J

    :try_start_0
    iget-object v5, p0, Lcom/baidu/location/aj;->Y:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v8, :cond_4

    const/4 v5, 0x0

    const/4 v7, 0x3

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_3

    iget-object v5, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    iget v5, v5, Lcom/baidu/location/aj$a;->byte:I

    :cond_3
    iput v5, v4, Lcom/baidu/location/aj$a;->byte:I

    :cond_4
    const/4 v5, 0x3

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    :goto_1
    array-length v7, v6

    if-ge v3, v7, :cond_5

    aget-char v7, v6, v3

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_6

    iget-object v3, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    iget v3, v3, Lcom/baidu/location/aj$a;->case:I

    :cond_6
    iput v3, v4, Lcom/baidu/location/aj$a;->case:I

    :cond_7
    iget-object v3, p0, Lcom/baidu/location/aj;->Y:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    iput v3, p0, Lcom/baidu/location/aj;->ap:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    instance-of v3, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_a

    move-object v2, p1

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/aj$a;->a:I

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/aj$a;->for:I

    const/16 v2, 0x67

    iput-char v2, v4, Lcom/baidu/location/aj$a;->new:C

    :cond_8
    :goto_3
    invoke-direct {p0, v4}, Lcom/baidu/location/aj;->a(Lcom/baidu/location/aj$a;)V

    move-object v2, v4

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    const/4 v3, 0x1

    iput v3, p0, Lcom/baidu/location/aj;->aq:I

    goto :goto_2

    :cond_a
    instance-of v3, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_8

    const/16 v3, 0x63

    iput-char v3, v4, Lcom/baidu/location/aj$a;->new:C

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x5

    if-ge v3, v5, :cond_b

    move-object v2, v4

    goto/16 :goto_0

    :cond_b
    sget-object v3, Lcom/baidu/location/aj;->ak:Ljava/lang/Class;

    if-nez v3, :cond_c

    :try_start_1
    const-string v3, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/baidu/location/aj;->ak:Ljava/lang/Class;

    sget-object v3, Lcom/baidu/location/aj;->ak:Ljava/lang/Class;

    const-string v5, "getBaseStationId"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/baidu/location/aj;->af:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/baidu/location/aj;->ak:Ljava/lang/Class;

    const-string v5, "getNetworkId"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/baidu/location/aj;->ag:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/baidu/location/aj;->ak:Ljava/lang/Class;

    const-string v5, "getSystemId"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/baidu/location/aj;->ah:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/baidu/location/aj;->ak:Ljava/lang/Class;

    const-string v5, "getBaseStationLatitude"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/baidu/location/aj;->ai:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/baidu/location/aj;->ak:Ljava/lang/Class;

    const-string v5, "getBaseStationLongitude"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/baidu/location/aj;->aj:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_c
    sget-object v2, Lcom/baidu/location/aj;->ak:Ljava/lang/Class;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/baidu/location/aj;->ak:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :try_start_2
    sget-object v2, Lcom/baidu/location/aj;->ah:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_d

    iget-object v2, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    iget v2, v2, Lcom/baidu/location/aj$a;->case:I

    :cond_d
    iput v2, v4, Lcom/baidu/location/aj$a;->case:I

    sget-object v2, Lcom/baidu/location/aj;->af:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/aj$a;->for:I

    sget-object v2, Lcom/baidu/location/aj;->ag:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/aj$a;->a:I

    sget-object v2, Lcom/baidu/location/aj;->ai:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v9, :cond_e

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/aj$a;->char:I

    :cond_e
    sget-object v2, Lcom/baidu/location/aj;->aj:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v9, :cond_8

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/aj$a;->do:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v2

    iput v8, p0, Lcom/baidu/location/aj;->aq:I

    move-object v2, v4

    goto/16 :goto_0

    :catch_2
    move-exception v3

    sput-object v2, Lcom/baidu/location/aj;->ak:Ljava/lang/Class;

    const/4 v2, 0x2

    iput v2, p0, Lcom/baidu/location/aj;->aq:I

    move-object v2, v4

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/baidu/location/aj;)Lcom/baidu/location/aj$a;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/location/aj;Landroid/telephony/CellInfo;)Lcom/baidu/location/aj$a;
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/location/aj;->a(Landroid/telephony/CellInfo;)Lcom/baidu/location/aj$a;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/baidu/location/aj$a;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/baidu/location/aj$a;->if()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    invoke-virtual {v0, p1}, Lcom/baidu/location/aj$a;->a(Lcom/baidu/location/aj$a;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iput-object p1, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    invoke-virtual {p1}, Lcom/baidu/location/aj$a;->if()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/baidu/location/aj$a;->for:I

    iget-object v2, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    iget v2, v2, Lcom/baidu/location/aj$a;->for:I

    if-ne v1, v2, :cond_1

    iget v0, v0, Lcom/baidu/location/aj$a;->a:I

    iget-object v1, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    iget v1, v1, Lcom/baidu/location/aj$a;->a:I

    if-eq v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/baidu/location/aj;->am:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-direct {p0}, Lcom/baidu/location/aj;->c()V

    iput-boolean v3, p0, Lcom/baidu/location/aj;->ao:Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v1, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/aj$a;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method public static at()Lcom/baidu/location/aj;
    .locals 1

    sget-object v0, Lcom/baidu/location/aj;->a:Lcom/baidu/location/aj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/aj;

    invoke-direct {v0}, Lcom/baidu/location/aj;-><init>()V

    sput-object v0, Lcom/baidu/location/aj;->a:Lcom/baidu/location/aj;

    :cond_0
    sget-object v0, Lcom/baidu/location/aj;->a:Lcom/baidu/location/aj;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/location/aj;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 14

    invoke-static {}, Lcom/baidu/location/K;->goto()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lcvif.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v10, v9, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readInt()I

    const/4 v0, 0x0

    move v8, v0

    :goto_1
    const/4 v0, 0x3

    if-ge v8, v0, :cond_7

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v12

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    const/4 v7, 0x0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/16 v7, 0x67

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const/16 v7, 0x63

    :cond_4
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_6

    :cond_5
    :goto_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/baidu/location/aj$a;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/baidu/location/aj$a;-><init>(Lcom/baidu/location/aj;IIIIIC)V

    iput-wide v12, v0, Lcom/baidu/location/aj$a;->if:J

    invoke-virtual {v0}, Lcom/baidu/location/aj$a;->if()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/aj;->ao:Z

    iget-object v1, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/baidu/location/aj;)I
    .locals 1

    iget v0, p0, Lcom/baidu/location/aj;->ap:I

    return v0
.end method

.method private c()V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/aj;->aa:Lcom/baidu/location/aj$a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/aj;->aa:Lcom/baidu/location/aj$a;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    iget-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/location/aj;->aa:Lcom/baidu/location/aj$a;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/baidu/location/K;->goto()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "lcvif.dat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v4, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    add-int/lit8 v2, v3, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/aj$a;

    iget-wide v6, v0, Lcom/baidu/location/aj$a;->if:J

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->writeLong(J)V

    invoke-virtual {v4, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    move v0, v1

    :goto_1
    rsub-int/lit8 v2, v3, 0x3

    if-ge v0, v2, :cond_4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ge v1, v3, :cond_7

    iget-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/aj$a;

    iget-wide v6, v0, Lcom/baidu/location/aj$a;->if:J

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/aj$a;

    iget v0, v0, Lcom/baidu/location/aj$a;->byte:I

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/aj$a;

    iget v0, v0, Lcom/baidu/location/aj$a;->case:I

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/aj$a;

    iget v0, v0, Lcom/baidu/location/aj$a;->a:I

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/aj$a;

    iget v0, v0, Lcom/baidu/location/aj$a;->for:I

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/aj$a;

    iget-char v0, v0, Lcom/baidu/location/aj$a;->new:C

    const/16 v2, 0x67

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/aj$a;

    iget-char v0, v0, Lcom/baidu/location/aj$a;->new:C

    const/16 v2, 0x63

    if-ne v0, v2, :cond_6

    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/baidu/location/aj;)I
    .locals 1

    iget v0, p0, Lcom/baidu/location/aj;->aq:I

    return v0
.end method

.method private d()Z
    .locals 6

    const/16 v5, 0xa

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/location/aj;->ac:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/baidu/location/aj;->ac:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    sget-object v1, Lcom/baidu/location/aj;->ac:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_2

    aget-char v3, v2, v1

    const/16 v4, 0x39

    if-gt v3, v4, :cond_0

    aget-char v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/baidu/location/aj;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/aj;->Y:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/aj;->Y:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/aj;->a(Landroid/telephony/CellLocation;)Lcom/baidu/location/aj$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/location/aj$a;->if()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/baidu/location/aj;->f()Lcom/baidu/location/aj$a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/baidu/location/aj;->a(Lcom/baidu/location/aj$a;)V

    :cond_1
    return-void
.end method

.method private f()Lcom/baidu/location/aj$a;
    .locals 4

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x11

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/aj;->Y:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "cellinfo"

    const-string v3, "!=null"

    invoke-static {v2, v3}, Lcom/baidu/location/K;->do(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v1, v0

    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/baidu/location/aj;->a(Landroid/telephony/CellInfo;)Lcom/baidu/location/aj$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-nez v0, :cond_0

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    :try_start_2
    const-string v1, "getAllCellInfo"

    const-string v2, "=null"

    invoke-static {v1, v2}, Lcom/baidu/location/K;->do(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic f(Lcom/baidu/location/aj;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/aj;->e()V

    return-void
.end method


# virtual methods
.method public aB()I
    .locals 2

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aq()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/aj;->Y:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/aj;->Y:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized as()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/aj;->ae:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/aj;->ad:Lcom/baidu/location/aj$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/aj;->Y:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/aj;->Y:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/baidu/location/aj;->ad:Lcom/baidu/location/aj$b;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/aj;->ad:Lcom/baidu/location/aj$b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/aj;->Y:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    invoke-direct {p0}, Lcom/baidu/location/aj;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/aj;->ae:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public aw()Lcom/baidu/location/aj$a;
    .locals 8

    iget-object v0, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    invoke-virtual {v0}, Lcom/baidu/location/aj$a;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    invoke-virtual {v0}, Lcom/baidu/location/aj$a;->if()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/aj;->Y:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/baidu/location/aj;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    invoke-virtual {v0}, Lcom/baidu/location/aj$a;->case()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/aj;->aa:Lcom/baidu/location/aj$a;

    new-instance v0, Lcom/baidu/location/aj$a;

    iget-object v1, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    iget v2, v1, Lcom/baidu/location/aj$a;->a:I

    iget-object v1, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    iget v3, v1, Lcom/baidu/location/aj$a;->for:I

    iget-object v1, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    iget v4, v1, Lcom/baidu/location/aj$a;->byte:I

    iget-object v1, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    iget v5, v1, Lcom/baidu/location/aj$a;->case:I

    iget-object v1, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    iget v6, v1, Lcom/baidu/location/aj$a;->int:I

    iget-object v1, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    iget-char v7, v1, Lcom/baidu/location/aj$a;->new:C

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/baidu/location/aj$a;-><init>(Lcom/baidu/location/aj;IIIIIC)V

    iput-object v0, p0, Lcom/baidu/location/aj;->aa:Lcom/baidu/location/aj$a;

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    invoke-virtual {v0}, Lcom/baidu/location/aj$a;->else()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/aj;->aa:Lcom/baidu/location/aj$a;

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/location/aj;->aa:Lcom/baidu/location/aj$a;

    iget-wide v2, v2, Lcom/baidu/location/aj$a;->if:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    iget-char v0, v0, Lcom/baidu/location/aj$a;->new:C

    const/16 v1, 0x63

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    iget-object v1, p0, Lcom/baidu/location/aj;->aa:Lcom/baidu/location/aj$a;

    iget v1, v1, Lcom/baidu/location/aj$a;->case:I

    iput v1, v0, Lcom/baidu/location/aj$a;->case:I

    iget-object v0, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    iget-object v1, p0, Lcom/baidu/location/aj;->aa:Lcom/baidu/location/aj$a;

    iget v1, v1, Lcom/baidu/location/aj$a;->byte:I

    iput v1, v0, Lcom/baidu/location/aj$a;->byte:I

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/aj;->Z:Lcom/baidu/location/aj$a;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public ax()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/aj;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized ay()V
    .locals 3

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/aj;->ae:Z
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

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/baidu/location/aj;->Y:Landroid/telephony/TelephonyManager;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/aj;->ab:Ljava/util/List;

    new-instance v0, Lcom/baidu/location/aj$b;

    invoke-direct {v0, p0}, Lcom/baidu/location/aj$b;-><init>(Lcom/baidu/location/aj;)V

    iput-object v0, p0, Lcom/baidu/location/aj;->ad:Lcom/baidu/location/aj$b;

    invoke-direct {p0}, Lcom/baidu/location/aj;->b()V

    iget-object v0, p0, Lcom/baidu/location/aj;->Y:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/aj;->ad:Lcom/baidu/location/aj$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/baidu/location/aj;->Y:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/baidu/location/aj;->ad:Lcom/baidu/location/aj$b;

    const/16 v2, 0x110

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-direct {p0}, Lcom/baidu/location/aj;->d()Z

    move-result v0

    sput-boolean v0, Lcom/baidu/location/aj;->an:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/aj;->ae:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public az()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/aj;->ao:Z

    return v0
.end method
