.class public Lcom/yf/smart/weloopx/data/k;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Landroid/content/ContentResolver;

.field private d:Landroid/net/Uri;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/yf/smart/weloopx/data/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/yf/smart/weloopx/data/k;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "RunningTrainingDBUtil"

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/k;->b:Ljava/lang/String;

    .line 24
    const-string v0, "content://com.yf.smart.weloopx.data.WeLoopProvider/RunningTrainingTable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/k;->d:Landroid/net/Uri;

    .line 28
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/k;->e:Landroid/content/Context;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/k;->c:Landroid/content/ContentResolver;

    .line 30
    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    const-string v0, "-01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/k;->e:Landroid/content/Context;

    const v1, 0x7f070147

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    :goto_0
    return-object v0

    .line 296
    :cond_0
    const-string v0, "-02"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/k;->e:Landroid/content/Context;

    const v1, 0x7f0700fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 298
    :cond_1
    const-string v0, "-03"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/k;->e:Landroid/content/Context;

    const v1, 0x7f07015e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_2
    const-string v0, "-04"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/k;->e:Landroid/content/Context;

    const v1, 0x7f07004f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 302
    :cond_3
    const-string v0, "-05"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/k;->e:Landroid/content/Context;

    const v1, 0x7f070160

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 304
    :cond_4
    const-string v0, "-06"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 305
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/k;->e:Landroid/content/Context;

    const v1, 0x7f070149

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 306
    :cond_5
    const-string v0, "-07"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 307
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/k;->e:Landroid/content/Context;

    const v1, 0x7f070148

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 308
    :cond_6
    const-string v0, "-08"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 309
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/k;->e:Landroid/content/Context;

    const v1, 0x7f070050

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :cond_7
    const-string v0, "-09"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 311
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/k;->e:Landroid/content/Context;

    const v1, 0x7f070209

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 312
    :cond_8
    const-string v0, "-10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 313
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/k;->e:Landroid/content/Context;

    const v1, 0x7f070191

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 314
    :cond_9
    const-string v0, "-11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 315
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/k;->e:Landroid/content/Context;

    const v1, 0x7f07018f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 316
    :cond_a
    const-string v0, "-12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 317
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/k;->e:Landroid/content/Context;

    const v1, 0x7f0700a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 319
    :cond_b
    const-string v0, ""

    goto/16 :goto_0
.end method

.method private e(Ljava/lang/String;)D
    .locals 4

    .prologue
    .line 324
    const-wide/16 v0, 0x0

    .line 326
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 327
    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 331
    :goto_0
    return-wide v0

    .line 328
    :catch_0
    move-exception v2

    .line 329
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)D
    .locals 3

    .prologue
    .line 335
    const-wide/16 v0, 0x0

    .line 337
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 341
    :goto_0
    return-wide v0

    .line 338
    :catch_0
    move-exception v2

    .line 339
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 346
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 347
    div-int/lit8 v1, v0, 0x3c

    .line 348
    rem-int/lit8 v2, v0, 0x3c

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v1, v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ge v2, v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    :goto_2
    return-object v0

    .line 350
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 351
    :catch_0
    move-exception v0

    .line 353
    const-string v0, "00\'00\'\'"

    goto :goto_2
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 359
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 360
    div-int/lit8 v1, v0, 0x3c

    .line 361
    rem-int/lit8 v2, v0, 0x3c

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v1, v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ge v2, v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    :goto_2
    return-object v0

    .line 363
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 364
    :catch_0
    move-exception v0

    .line 366
    const-string v0, "00:00"

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yf/smart/weloopx/data/k;->c:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yf/smart/weloopx/data/k;->d:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "userId = ? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const-string v7, "startTime DESC "

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 48
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 49
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    new-instance v3, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;

    invoke-direct {v3}, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;-><init>()V

    .line 51
    const-string v4, "runid"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 52
    const-string v5, "happendate"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 53
    const-string v6, "distance"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 54
    const-string v7, "ps"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 55
    const-string v8, "time"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 56
    const-string v9, "gjflag"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 57
    const-string v10, "url"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 58
    const-string v12, "startTime"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 59
    const-string v13, "endTime"

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 61
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/yf/smart/weloopx/data/k;->e(Ljava/lang/String;)D

    move-result-wide v14

    .line 62
    const-string v6, "%.2f"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v16, v17

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 63
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/yf/smart/weloopx/data/k;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 64
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/yf/smart/weloopx/data/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 66
    iput-object v4, v3, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->runid:Ljava/lang/String;

    .line 67
    iput-object v5, v3, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->happenDate:Ljava/lang/String;

    .line 68
    iput-object v6, v3, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->distance:Ljava/lang/String;

    .line 69
    iput-object v7, v3, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->ps:Ljava/lang/String;

    .line 70
    iput-object v8, v3, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->time:Ljava/lang/String;

    .line 71
    iput-object v9, v3, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->gjflag:Ljava/lang/String;

    .line 72
    iput-object v10, v3, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->url:Ljava/lang/String;

    .line 73
    iput-object v12, v3, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->startTime:Ljava/lang/String;

    .line 74
    iput-object v13, v3, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->endTime:Ljava/lang/String;

    .line 77
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 78
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 85
    :cond_1
    sget-boolean v3, Lcom/yf/smart/weloopx/data/k;->a:Z

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 86
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 88
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 90
    const/4 v3, 0x0

    .line 94
    invoke-virtual/range {p0 .. p1}, Lcom/yf/smart/weloopx/data/k;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 95
    const/4 v2, 0x0

    move v4, v2

    :goto_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_4

    .line 96
    const-wide/16 v8, 0x0

    .line 97
    const/4 v6, 0x1

    .line 98
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 99
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    const/4 v10, 0x0

    move v5, v3

    :goto_2
    if-ge v10, v13, :cond_3

    .line 101
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;

    .line 102
    iget-object v7, v3, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->happenDate:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 103
    iget-object v3, v3, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->distance:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/yf/smart/weloopx/data/k;->f(Ljava/lang/String;)D

    move-result-wide v16

    add-double v8, v8, v16

    .line 104
    if-eqz v6, :cond_6

    .line 105
    const/4 v3, 0x0

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RunningTrainingDBUtil \u6211\u8981\u7684index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    move-wide v6, v8

    move v5, v10

    .line 100
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-wide v8, v6

    move v6, v3

    goto :goto_2

    .line 111
    :cond_3
    const-string v3, "INDEX_POSITION"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v3, "HAPPEN_DATE"

    invoke-virtual {v15, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v3, "SUM_DISTANCE"

    const-string v6, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RunningTrainingDBUtil happenDate = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sumDistance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v5

    goto/16 :goto_1

    .line 119
    :cond_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 120
    const/4 v2, 0x0

    move v3, v2

    :goto_4
    if-ge v3, v4, :cond_5

    .line 121
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 122
    new-instance v5, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;

    invoke-direct {v5}, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;-><init>()V

    .line 123
    const-string v6, "-1"

    iput-object v6, v5, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->url:Ljava/lang/String;

    .line 124
    const-string v6, "HAPPEN_DATE"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/yf/smart/weloopx/data/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->time:Ljava/lang/String;

    .line 125
    const-string v6, "SUM_DISTANCE"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->distance:Ljava/lang/String;

    .line 126
    const-string v6, "INDEX_POSITION"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v11, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 120
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 131
    :cond_5
    return-object v11

    :cond_6
    move v3, v6

    move-wide v6, v8

    goto/16 :goto_3
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;

    .line 264
    iget-object v2, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->userId:Ljava/lang/String;

    .line 265
    iget-object v3, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->runid:Ljava/lang/String;

    .line 266
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 267
    const-string v5, "userId"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v5, "runid"

    iget-object v6, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->runid:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v5, "happendate"

    iget-object v6, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->happenDate:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v5, "distance"

    iget-object v6, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->distance:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v5, "ps"

    iget-object v6, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->ps:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v5, "time"

    iget-object v6, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->time:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v5, "gjflag"

    iget-object v6, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->gjflag:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v5, "url"

    iget-object v6, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->url:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v5, "startTime"

    iget-object v6, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->startTime:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v5, "endTime"

    iget-object v6, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->endTime:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, v0, Lcom/yf/smart/weloopx/data/models/RunInfoDetailsModel;->startTime:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/yf/smart/weloopx/data/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/k;->c:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/yf/smart/weloopx/data/k;->d:Landroid/net/Uri;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/k;->c:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/yf/smart/weloopx/data/k;->d:Landroid/net/Uri;

    const-string v6, "userId = ? AND runid = ? "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v3, v7, v2

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 285
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 243
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/k;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/k;->d:Landroid/net/Uri;

    const-string v3, "userId = ? AND startTime = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v7

    aput-object p2, v4, v6

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 250
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v6

    .line 253
    :goto_0
    return v0

    :cond_0
    move v0, v7

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 211
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 212
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/k;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/k;->d:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "userId = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v7

    const-string v5, "startTime DESC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 219
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    const-string v1, "happendate"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 230
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RunningTrainingDBUtil \u67e5\u8be2\u5230\u7684\u6240\u6709\u65e5\u671f = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 232
    return-object v6
.end method

.method public c(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 288
    iget-object v2, p0, Lcom/yf/smart/weloopx/data/k;->c:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/yf/smart/weloopx/data/k;->d:Landroid/net/Uri;

    const-string v4, "runid = ? "

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RunningTrainingDBUtil \u5220\u9664\u8dd1\u6b65\u4fe1\u606f\u7ed3\u679c = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 290
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
