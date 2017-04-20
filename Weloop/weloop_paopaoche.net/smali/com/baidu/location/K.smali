.class Lcom/baidu/location/K;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/e;


# static fields
.field public static Y:F = 0.0f

.field public static Z:D = 0.0

.field private static a:Ljava/lang/String; = null

.field public static a0:I = 0x0

.field public static a1:F = 0.0f

.field public static a2:I = 0x0

.field public static a3:I = 0x0

.field public static a4:D = 0.0

.field public static a5:I = 0x0

.field public static a6:Z = false

.field public static a7:J = 0x0L

.field public static a8:I = 0x0

.field public static a9:J = 0x0L

.field public static aA:I = 0x0

.field public static aB:F = 0.0f

.field public static aC:F = 0.0f

.field public static aD:I = 0x0

.field public static aE:F = 0.0f

.field public static final aF:Z = true

.field public static aG:Ljava/lang/String;

.field public static aH:F

.field public static aI:F

.field private static aJ:Ljava/lang/Process;

.field public static aK:F

.field public static aL:Z

.field public static aM:Z

.field public static aN:F

.field public static aO:I

.field public static aP:D

.field public static aQ:I

.field public static aR:I

.field public static aS:J

.field public static aT:J

.field public static aU:J

.field public static aV:Ljava/lang/String;

.field public static aW:I

.field public static aX:F

.field public static aY:I

.field public static aZ:F

.field public static aa:I

.field public static ab:I

.field public static ac:I

.field public static ad:Z

.field public static ae:F

.field public static af:I

.field private static ag:Ljava/lang/String;

.field private static ah:Ljava/lang/String;

.field public static ai:I

.field public static aj:I

.field public static ak:Z

.field public static al:I

.field private static am:Ljava/lang/String;

.field public static an:F

.field public static ao:Z

.field private static ap:Ljava/lang/String;

.field public static aq:I

.field public static ar:I

.field public static as:[B

.field private static at:Z

.field public static au:I

.field public static av:D

.field private static aw:Z

.field private static ax:Ljava/lang/String;

.field public static ay:I

.field public static az:I

.field public static ba:I

.field public static bb:I

.field public static bc:Z

.field public static bd:Ljava/lang/String;

.field public static be:F

.field public static bg:J

.field public static bh:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/high16 v3, 0x41200000    # 10.0f

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    sput-boolean v2, Lcom/baidu/location/K;->aM:Z

    sput-boolean v2, Lcom/baidu/location/K;->a6:Z

    sput-boolean v2, Lcom/baidu/location/K;->ao:Z

    sput v2, Lcom/baidu/location/K;->ar:I

    const-string v0, "http://loc.map.baidu.com/sdk.php"

    sput-object v0, Lcom/baidu/location/K;->a:Ljava/lang/String;

    const-string v0, "http://loc.map.baidu.com/sdk_ep.php"

    sput-object v0, Lcom/baidu/location/K;->aV:Ljava/lang/String;

    const-string v0, "http://loc.map.baidu.com/user_err.php"

    sput-object v0, Lcom/baidu/location/K;->ag:Ljava/lang/String;

    const-string v0, "http://loc.map.baidu.com/oqur.php"

    sput-object v0, Lcom/baidu/location/K;->ah:Ljava/lang/String;

    const-string v0, "http://loc.map.baidu.com/tcu.php"

    sput-object v0, Lcom/baidu/location/K;->am:Ljava/lang/String;

    const-string v0, "https://sapi.skyhookwireless.com/wps2/location"

    sput-object v0, Lcom/baidu/location/K;->ap:Ljava/lang/String;

    sput-boolean v2, Lcom/baidu/location/K;->at:Z

    sput-boolean v2, Lcom/baidu/location/K;->aw:Z

    const-string v0, "[baidu_location_service]"

    sput-object v0, Lcom/baidu/location/K;->ax:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/K;->aJ:Ljava/lang/Process;

    const-string v0, "no"

    sput-object v0, Lcom/baidu/location/K;->aG:Ljava/lang/String;

    const-string v0, "gcj02"

    sput-object v0, Lcom/baidu/location/K;->bd:Ljava/lang/String;

    sput-boolean v1, Lcom/baidu/location/K;->aL:Z

    sput v6, Lcom/baidu/location/K;->au:I

    sput-wide v4, Lcom/baidu/location/K;->aP:D

    sput-wide v4, Lcom/baidu/location/K;->a4:D

    sput-wide v4, Lcom/baidu/location/K;->Z:D

    sput-wide v4, Lcom/baidu/location/K;->av:D

    sput v2, Lcom/baidu/location/K;->aO:I

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/K;->as:[B

    sput-boolean v2, Lcom/baidu/location/K;->bc:Z

    sput v2, Lcom/baidu/location/K;->aq:I

    const v0, 0x3f8ccccd    # 1.1f

    sput v0, Lcom/baidu/location/K;->bh:F

    const v0, 0x400ccccd    # 2.2f

    sput v0, Lcom/baidu/location/K;->an:F

    const v0, 0x40133333    # 2.3f

    sput v0, Lcom/baidu/location/K;->aK:F

    const v0, 0x40733333    # 3.8f

    sput v0, Lcom/baidu/location/K;->aZ:F

    sput v6, Lcom/baidu/location/K;->ay:I

    const/16 v0, 0xa

    sput v0, Lcom/baidu/location/K;->aQ:I

    const/4 v0, 0x2

    sput v0, Lcom/baidu/location/K;->a2:I

    const/4 v0, 0x7

    sput v0, Lcom/baidu/location/K;->ac:I

    const/16 v0, 0x14

    sput v0, Lcom/baidu/location/K;->aa:I

    const/16 v0, 0x46

    sput v0, Lcom/baidu/location/K;->a8:I

    const/16 v0, 0x78

    sput v0, Lcom/baidu/location/K;->aj:I

    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/baidu/location/K;->aI:F

    sput v3, Lcom/baidu/location/K;->aH:F

    const/high16 v0, 0x42480000    # 50.0f

    sput v0, Lcom/baidu/location/K;->be:F

    const/high16 v0, 0x43480000    # 200.0f

    sput v0, Lcom/baidu/location/K;->aX:F

    const/16 v0, 0x10

    sput v0, Lcom/baidu/location/K;->a3:I

    const v0, 0x3f666666    # 0.9f

    sput v0, Lcom/baidu/location/K;->ae:F

    const/16 v0, 0x2710

    sput v0, Lcom/baidu/location/K;->aY:I

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/baidu/location/K;->Y:F

    const/4 v0, 0x0

    sput v0, Lcom/baidu/location/K;->aC:F

    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lcom/baidu/location/K;->aB:F

    const/16 v0, 0x1e

    sput v0, Lcom/baidu/location/K;->aA:I

    const/16 v0, 0x64

    sput v0, Lcom/baidu/location/K;->az:I

    const v0, 0x668a0

    sput v0, Lcom/baidu/location/K;->aW:I

    sput-boolean v1, Lcom/baidu/location/K;->ak:Z

    sput-boolean v1, Lcom/baidu/location/K;->ad:Z

    const/16 v0, 0x14

    sput v0, Lcom/baidu/location/K;->a0:I

    const/16 v0, 0x12c

    sput v0, Lcom/baidu/location/K;->a5:I

    const/16 v0, 0x3e8

    sput v0, Lcom/baidu/location/K;->aR:I

    const-wide/32 v0, 0xdbba0

    sput-wide v0, Lcom/baidu/location/K;->aS:J

    const-wide/32 v0, 0x668a0

    sput-wide v0, Lcom/baidu/location/K;->a9:J

    const-wide/32 v0, 0x2bf20

    sput-wide v0, Lcom/baidu/location/K;->aU:J

    const-wide/32 v0, 0x2bf20

    sput-wide v0, Lcom/baidu/location/K;->aT:J

    const-wide/16 v0, 0xf

    sput-wide v0, Lcom/baidu/location/K;->a7:J

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/baidu/location/K;->bg:J

    const/16 v0, 0x64

    sput v0, Lcom/baidu/location/K;->al:I

    sput v2, Lcom/baidu/location/K;->bb:I

    const/16 v0, 0x7530

    sput v0, Lcom/baidu/location/K;->ab:I

    const/16 v0, 0x7530

    sput v0, Lcom/baidu/location/K;->af:I

    sput v3, Lcom/baidu/location/K;->aN:F

    const/high16 v0, 0x40c00000    # 6.0f

    sput v0, Lcom/baidu/location/K;->aE:F

    sput v3, Lcom/baidu/location/K;->a1:F

    const/16 v0, 0x3c

    sput v0, Lcom/baidu/location/K;->aD:I

    const/16 v0, 0x46

    sput v0, Lcom/baidu/location/K;->ba:I

    const/4 v0, 0x6

    sput v0, Lcom/baidu/location/K;->ai:I

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, -0x1

    const/high16 v0, -0x80000000

    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static a()Ljava/lang/String;
    .locals 13

    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v7, "%d-%d-%d %d:%d:%d"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v11

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v12

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static byte()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/K;->ag:Ljava/lang/String;

    return-object v0
.end method

.method public static case()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/baidu/tempdata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static char()V
    .locals 0

    return-void
.end method

.method public static do()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/K;->ah:Ljava/lang/String;

    return-object v0
.end method

.method public static do(Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/baidu/location/K;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static do(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static else()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/baidu/location/K;->aJ:Ljava/lang/Process;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/location/K;->aJ:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/K;->aJ:Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static for()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/K;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static goto()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/baidu/location/K;->case()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/baidu/tempdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static if(Lcom/baidu/location/aj$a;Lcom/baidu/location/D$b;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/location/aj$a;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/baidu/location/D$b;->if(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    if-eqz p2, :cond_2

    sget v0, Lcom/baidu/location/K;->ar:I

    if-eqz v0, :cond_6

    invoke-static {p2}, Lcom/baidu/location/ao;->new(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-static {}, Lcom/baidu/location/i;->cY()Lcom/baidu/location/i;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/baidu/location/i;->char(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/baidu/location/aj$a;->int()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x2ee

    if-ge v2, v3, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    invoke-static {p2}, Lcom/baidu/location/ao;->byte(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static if(Lcom/baidu/location/aj$a;Lcom/baidu/location/D$b;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x3

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/location/aj$a;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz p1, :cond_1

    if-nez p4, :cond_a

    invoke-virtual {p1}, Lcom/baidu/location/D$b;->char()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    if-eqz p2, :cond_2

    sget v0, Lcom/baidu/location/K;->ar:I

    if-eqz v0, :cond_b

    if-eqz p4, :cond_b

    invoke-static {p2}, Lcom/baidu/location/ao;->new(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const/4 v0, 0x0

    if-nez p4, :cond_3

    move v0, v1

    :cond_3
    invoke-static {}, Lcom/baidu/location/i;->cY()Lcom/baidu/location/i;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/location/i;->char(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-static {}, Lcom/baidu/location/d;->do()Lcom/baidu/location/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "&bc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/baidu/location/aj$a;->int()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x2ee

    if-ge v3, v4, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_10

    if-eqz p1, :cond_10

    :try_start_0
    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    sget v3, Lcom/baidu/location/K;->ar:I

    invoke-virtual {p1}, Lcom/baidu/location/D$b;->do()I

    move-result v4

    invoke-virtual {p1}, Lcom/baidu/location/D$b;->try()I

    move-result v5

    invoke-virtual {p1}, Lcom/baidu/location/D$b;->case()Z

    move-result v6

    sget v7, Lcom/baidu/location/K;->aE:F

    cmpg-float v7, v2, v7

    if-gez v7, :cond_c

    if-eq v3, v1, :cond_8

    if-nez v3, :cond_c

    :cond_8
    sget v7, Lcom/baidu/location/K;->aD:I

    if-lt v4, v7, :cond_9

    if-ne v6, v1, :cond_c

    :cond_9
    const/4 v1, 0x1

    sput v1, Lcom/baidu/location/K;->au:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v0

    :cond_a
    invoke-virtual {p1}, Lcom/baidu/location/D$b;->byte()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    invoke-static {p2}, Lcom/baidu/location/ao;->byte(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    :try_start_1
    sget v6, Lcom/baidu/location/K;->a1:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_f

    if-eq v3, v1, :cond_d

    if-eqz v3, :cond_d

    if-ne v3, v8, :cond_f

    :cond_d
    sget v1, Lcom/baidu/location/K;->ba:I

    if-lt v4, v1, :cond_e

    sget v1, Lcom/baidu/location/K;->ai:I

    if-le v5, v1, :cond_f

    :cond_e
    const/4 v1, 0x2

    sput v1, Lcom/baidu/location/K;->au:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sput v8, Lcom/baidu/location/K;->au:I

    goto :goto_2

    :cond_f
    const/4 v1, 0x3

    :try_start_2
    sput v1, Lcom/baidu/location/K;->au:I

    goto :goto_2

    :cond_10
    const/4 v1, 0x3

    sput v1, Lcom/baidu/location/K;->au:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public static if(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/baidu/location/K;->aw:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/location/K;->ax:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static if(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/baidu/location/K;->at:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static if(Lcom/baidu/location/BDLocation;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static int()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/K;->ap:Ljava/lang/String;

    return-object v0
.end method

.method public static long()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lldt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static new()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/K;->am:Ljava/lang/String;

    return-object v0
.end method
